# purolator-web-services
## Description
This gem provides an interface to the Purolator SOAP API.

## Setup
### Overview
This gem requires a large number of classes to communicate with Purolator. These classes are defined by the WSDL files for the Purolator web services API. For copyright reasons this gem does not include the files. See Purolator's documentation to download the WSDL file. I recommend putting it under your project's lib/ directory in lib/purolator_web_services/wsdl.



### Creating the class definitions
Once you have the WSDL files, you will need to create the ruby classes used in the SOAP requests. This is a one time process that can be handled by the gem.

#### Rails
This gem includes a generator to create the class definitions and an initializer to load them if you are using it from within a Rails application. Save the Purolator wsdl files to a directory (lib/purolator_web_services/wsdl in this example) and include the gem in your Gemfile:

```ruby
gem 'purolator-web-services', require: 'purolator_web_services'
```

Then run the following generator:

    $ rails g purolator_web_services:definitions
    Added lib/purolator_web_services/definitions
      create  config/initializers/purolator.rb

For more details, run the generator with the --help option:

    $ rails g purolator:generate_definitions --help

#### Manual creation
You can also manually generate the class files. To to this, run the following command:

```ruby
require 'purolator_web_services'
PurolatorWebServices::Definitions.generate_definitions('lib', *Dir.glob('lib/purolator_web_services/wsdl/*.wsdl'))
```

This will create the directory lib/purolator_web_services/definitions/ with the Purolator web services class definitions in it. After you have created the classes, include the following lines in your application to load them:

```ruby
require 'purolator_web_services'
PurolatorWebServices::Definitions.load_definitions('lib')
```

## Examples
### Creating a shipment with multiple packages


```ruby
include PurolatorWebServices::Definitions
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
    package.dimL         = "2.0"
    package.dimW         = "2.0"
    package.dimH         = "2.0"
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
request.orderNumber     = "1234567-2"
request.ref1            = # string
request.ref2            = # string
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
void_request.orderNumbers = [ "1234567-2" ]

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
