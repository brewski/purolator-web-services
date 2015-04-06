require 'minitest/autorun'
require 'purolator_web_services'
require 'purolator_web_services/soap'

require 'date'
require 'securerandom'

class IntegrationTest < MiniTest::Unit::TestCase
  include PurolatorWebServices::Soap

  def setup
    username, password, client_id = %w(USERNAME PASSWORD CLIENT_ID).map(&ENV.method(:[]))
    unless (username && password && client_id)
      $stderr.puts "missing environment variable USERNAME"  unless (username)
      $stderr.puts "missing environment variable PASSWORD"  unless (password)
      $stderr.puts "missing environment variable CLIENT_ID" unless (client_id)
      exit
    end

    @credentials = CredentialInfo.new(username, password, client_id)
    @api = PurolatorWebServices::Api.new(:test)
  end

  def test_add_order_request
    add_order = AddOrder.new(order_request([ 10.5, 1.0 ]))
    add_order_response = @api.addOrder(add_order)
    assert_equal(0, add_order_response.status)
    assert_equal(2, add_order_response.packages.size)
  ensure
    handle_service_exceptions
  end

  def test_closeout_request
    add_order = AddOrder.new(order_request([ 10.0, 15.0, 12 ]))
    add_order_response = @api.addOrder(add_order)
    assert_equal(0, add_order_response.status)

    closeout = Closeout.new(
      CloseoutRequest.new.tap do |closeout_req|
        closeout_req.credentials = @credentials
        closeout_req.shipDate    = Date.today
        closeout_req.packIDType  = "Pin"
        closeout_req.skidCount   = 1
        closeout_req.packageIDs  = add_order_response.packages.map(&:trackingNumber)
      end
    )
    closeout_response = @api.closeout(closeout)
    assert_equal(0, closeout_response.status)
  ensure
    handle_service_exceptions
  end

  def test_void_request
    add_order_a = AddOrder.new(order_request([ 15, 12, 22, 13 ]))
    add_order_b = AddOrder.new(order_request([ 15, 12 ]))

    assert_equal(0, @api.addOrder(add_order_a).status)
    assert_equal(0, @api.addOrder(add_order_b).status)

    shipment_numbers = [ add_order_a.request.orderNumber, add_order_b.request.orderNumber ]
    void_orders = VoidOrders.new(
      OrderListRequest.new.tap do |order_list|
        order_list.credentials = @credentials
        order_list.orderNumbers = shipment_numbers
      end
    )
    void_orders_response = @api.voidOrders(void_orders)
    assert_equal(0, void_orders_response.status)
  ensure
    handle_service_exceptions
  end

  def test_rate_request
    get_rates = GetRates.new(order_request([ 10.0, 15.0, 12.5 ]))
    get_rates_response = @api.getRates(get_rates)
    assert_equal(0, get_rates_response.status)
  ensure
    handle_service_exceptions
  end

  private
    def handle_service_exceptions
      if ($!.is_a?(PurolatorWebServices::Api::ServiceException))
        flunk("error creating shipment: #{$!.message}")
      end
    end

    def order_request(package_weights)
      from_address = Address.new
      from_address.name       = "Joe Shmoe"
      from_address.add1       = "123 4th St."
      from_address.city       = "San Luis Obispo"
      from_address.stateProv  = "CA"
      from_address.postalCode = "93401"
      from_address.country    = "US"
      from_address.phone      = "(123) 456 789"
      from_address.email      = "joe@shmoe.com"

      to_address = Address.new
      to_address.name       = "Test Customer Name"
      to_address.add1       = "560 Kings Road"
      to_address.city       = "Sydney"
      to_address.stateProv  = "NS"
      to_address.postalCode = "B1S1B8"
      to_address.country    = "CA"

      packages = package_weights.map do |weight|
        RequestPackage.new.tap do |package|
          package.packageID    = SecureRandom.uuid
          package.weightUOM    = "LB"
          package.weight       = weight
          package.dimensionUOM = "IN"
          package.dimL         = nil
          package.dimW         = nil
          package.dimH         = nil
        end
      end

      items = [
        RequestItem.new.tap do |item|
          item.sKU             = "SK401232"
          item.customsDesc     = "Roasted Nuts"
          item.quantity        = 11
          item.totalValue      = "98.99"
          item.currency        = "USD"
          item.countryOfOrigin = "VN"
          item.hSCode          = "2008199020"
          item.nAFTAEligible   = false
          item.fDAFood         = false
          item.textile         = false
        end
      ]

      request = OrderRequestV3.new
      request.credentials     = @credentials
      request.orderNumber     = SecureRandom.uuid
      request.shipDate        = Date.today
      request.shipMethod      = "Ground"
      request.billingOption   = "Prepaid"
      request.labelType       = "ZPL"
      request.shipFromAddress = from_address
      request.shipToAddress   = to_address
      request.declaredValue   = "98.99"
      request.currency        = "USD"
      request.packages        = packages
      request.items           = items

      request
    end
end