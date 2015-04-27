require 'purolator_web_services/soap/default'
require 'purolator_web_services/soap/defaultMappingRegistry'
require 'soap/rpc/driver'

module PurolatorWebServices
module Soap

class ShippingServicesV3Soap < ::SOAP::RPC::Driver
  TestEndpointUrl = "http://sandbox.purolatorshipping.com/WebServices/ShippingServicesV3.asmx"
  ProductionEndpointUrl = "https://www3.purolatorshipping.com/WebServices/ShippingServicesV3.asmx"

  Methods = [
    [ "http://PurolatorServices.com/GetRates",
      "getRates",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetRates"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetRatesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/AddOrder",
      "addOrder",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddOrder"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddOrderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/AddLTLOrder",
      "addLTLOrder",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddLTLOrder"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddLTLOrderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/UpdateOrder",
      "updateOrder",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "UpdateOrder"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "UpdateOrderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/AddPackage",
      "addPackage",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddPackage"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddPackageResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/AddItem",
      "addItem",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddItem"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/GetOrderStatus",
      "getOrderStatus",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetOrderStatus"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetOrderStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/GetLabel",
      "getLabel",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetLabel"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetLabelResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/GetZPLInitializationImages",
      "getZPLInitializationImages",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetZPLInitializationImages"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "GetZPLInitializationImagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/ShipmentVerification",
      "shipmentVerification",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "ShipmentVerification"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "ShipmentVerificationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/VoidPackages",
      "voidPackages",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "VoidPackages"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "VoidPackagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/VoidOrders",
      "voidOrders",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "VoidOrders"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "VoidOrdersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/Closeout",
      "closeout",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "Closeout"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "CloseoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/CloseoutWithLTL",
      "closeoutWithLTL",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "CloseoutWithLTL"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "CloseoutWithLTLResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/CloseoutUpdateWeight",
      "closeoutUpdateWeight",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "CloseoutUpdateWeight"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "CloseoutUpdateWeightResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://PurolatorServices.com/AddConsolidatedLTLShipment",
      "addConsolidatedLTLShipment",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddConsolidatedLTLShipment"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://PurolatorServices.com/", "AddConsolidatedLTLShipmentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(api_url)
    super(api_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
end
