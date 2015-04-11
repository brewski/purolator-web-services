# purolator-web-services
## Description
This gem provides an interface to the Purolator SOAP API.

## Setup
#### Rails
Include the gem in your Gemfile:

```ruby
gem 'purolator-web-services', require: 'purolator_web_services'
```
#### Manually

```ruby
require 'purolator_web_services'
```

## Testing
This gem includes a small integration test suite to test several of the API methods in the Purolator sandbox environment. I highly recommend running these tests before integrating the gem with your application.

### Rails Applications

    USERNAME=username PASSWORD=password CLIENT_ID=client_id bundle exec rake purolator_web_services:test

### Non-Rails Applications


```ruby
# test.rb
gem_dir = Gem::Specification.find_by_name('purolator-web-services').gem_dir
test_files = Dir.glob(File.join(gem_dir, 'test', '*_test.rb'))
test_files.each { |file| require file }
```

    USERNAME=username PASSWORD=password CLIENT_ID=client_id bundle exec ruby test.rb

## Examples
### Creating a shipment with multiple packages

```ruby
require 'purolator_web_services'
require 'securerandom'
include PurolatorWebServices::Soap
credentials = CredentialInfo.new("USERNAME", "PASSWORD", "CLIENT_ID")

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

packages = [
  RequestPackage.new.tap do |package|
    package.packageID    = 12345679
    package.weightUOM    = "LB"
    package.weight       = "11.0"
    package.dimensionUOM = "IN"
  end
]

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

request = OrderRequest.new
request.credentials     = credentials
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

api = PurolatorWebServices::Api.new(:test)

begin
  puts "Getting Rates"
  response = api.getRates(GetRates.new(request))
  response.rates.each.with_index do |rate, ndx|
    puts "Package #{ndx}"
    puts "  method: #{rate.shipMethod}"
    puts "  estimated delivery date: #{rate.estimatedDeliveryDate}"
    puts "  estimated rate: #{rate.estimatedRate}"
  end

  puts "Requesting Labels"
  response = api.addOrder(AddOrder.new(request))
  response.packages.each.with_index do |pkg, ndx|
    puts "Package #{ndx}"
    puts "  TrackingNumber: #{pkg.trackingNumber}"
    puts "  Charge: #{pkg.shippingCharge}"
    puts "  ZPL Image:\n#{pkg.zPLCode}\n"
  end

ensure
  if ($!.is_a?(PurolatorWebServices::Api::ServiceException))
    puts api.wiredump
  end
end
```

### Canceling a shipment

```ruby
void_request = OrderListRequest.new
void_request.credentials  = credentials
void_request.orderNumbers = [ request.orderNumber ]

api = PurolatorWebServices::Api.new(:test)

begin
  response = api.voidOrders(VoidOrders.new(void_request))
  puts "Voided Order!"
ensure
  if ($!.is_a?(PurolatorWebServices::Api::ServiceException))
    puts api.wiredump
  end
end
```