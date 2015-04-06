require 'soap/mapping'

module PurolatorWebServices; module Soap

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsPurolatorServicesCom = "http://PurolatorServices.com/"

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["billingAccountAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "BillingAccountAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["partnerID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PartnerID")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Note")], [0, 1]],
      ["pONumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PONumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["ref3", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref3")], [0, 1]],
      ["ref4", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref4")], [0, 1]],
      ["ref5", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref5")], [0, 1]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackageV3", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItemV3", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CredentialInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CredentialInfo"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Password")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ClientID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfString,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::Address,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "Address"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Name")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Company")], [0, 1]],
      ["add1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Add1")], [0, 1]],
      ["add2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Add2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "City")], [0, 1]],
      ["stateProv", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "StateProv")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PostalCode")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Country")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Phone")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Email")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfKeyValueStrings,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfKeyValueStrings"),
    :schema_element => [
      ["keyValueStrings", ["PurolatorWebServices::Soap::KeyValueStrings[]", XSD::QName.new(NsPurolatorServicesCom, "KeyValueStrings")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::KeyValueStrings,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "KeyValueStrings"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestPackageV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestPackageV3"),
    :schema_element => [
      ["requestPackageV3", ["PurolatorWebServices::Soap::RequestPackageV3[]", XSD::QName.new(NsPurolatorServicesCom, "RequestPackageV3")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::RequestPackageV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestPackageV3"),
    :schema_element => [
      ["packageNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageNumber")], [0, 1]],
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["pin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Pin")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]],
      ["dimensionUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "DimensionUOM")], [0, 1]],
      ["dimL", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimL")], [0, 1]],
      ["dimW", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimW")], [0, 1]],
      ["dimH", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimH")], [0, 1]],
      ["labelPrinted", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "LabelPrinted")]],
      ["specialHandlingType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SpecialHandlingType")], [0, 1]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestItemV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestItemV3"),
    :schema_element => [
      ["requestItemV3", ["PurolatorWebServices::Soap::RequestItemV3[]", XSD::QName.new(NsPurolatorServicesCom, "RequestItemV3")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::RequestItemV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestItemV3"),
    :schema_element => [
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SKU")], [0, 1]],
      ["customsDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CustomsDesc")], [0, 1]],
      ["extendedDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ExtendedDesc")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Quantity")]],
      ["totalValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["countryOfOrigin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CountryOfOrigin")], [0, 1]],
      ["hSCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "HSCode")], [0, 1]],
      ["nAFTAEligible", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "NAFTAEligible")]],
      ["fDAFood", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "FDAFood")]],
      ["textile", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "Textile")]],
      ["pSTExempt", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "PSTExempt")]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderResultV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderResultV3"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRateV3", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ResultBase,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfResultMessage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfResultMessage"),
    :schema_element => [
      ["responseMessage", ["PurolatorWebServices::Soap::ResultMessage[]", XSD::QName.new(NsPurolatorServicesCom, "ResponseMessage")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ResultMessage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultMessage"),
    :schema_element => [
      ["number", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Number")]],
      ["severity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Severity")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfResultPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfResultPackage"),
    :schema_element => [
      ["responsePackage", ["PurolatorWebServices::Soap::ResultPackage[]", XSD::QName.new(NsPurolatorServicesCom, "ResponsePackage")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ResultPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultPackage"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["shippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "ShippingCharge")]],
      ["unicode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Unicode")], [0, 1]],
      ["airportCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "AirportCode")], [0, 1]],
      ["barCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BarCode")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]],
      ["labelImage", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelImage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRateV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRateV3"),
    :schema_element => [
      ["rateV3", ["PurolatorWebServices::Soap::RateV3[]", XSD::QName.new(NsPurolatorServicesCom, "RateV3")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::RateV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RateV3"),
    :schema_element => [
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["estimatedDeliveryDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "EstimatedDeliveryDate")]],
      ["estimatedRate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "EstimatedRate")]],
      ["isAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "IsAvailable")]],
      ["rateDetails", ["PurolatorWebServices::Soap::ArrayOfKeyValueDecimal", XSD::QName.new(NsPurolatorServicesCom, "RateDetails")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfKeyValueDecimal,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfKeyValueDecimal"),
    :schema_element => [
      ["keyValueDecimal", ["PurolatorWebServices::Soap::KeyValueDecimal[]", XSD::QName.new(NsPurolatorServicesCom, "KeyValueDecimal")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::KeyValueDecimal,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "KeyValueDecimal"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Value")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLOrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLOrderRequest"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "OrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]],
      ["grossWeight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "GrossWeight")]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletRequest", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestPackage"),
    :schema_element => [
      ["requestPackage", ["PurolatorWebServices::Soap::RequestPackage[]", XSD::QName.new(NsPurolatorServicesCom, "RequestPackage")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::RequestPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestPackage"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]],
      ["dimensionUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "DimensionUOM")], [0, 1]],
      ["dimL", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimL")], [0, 1]],
      ["dimW", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimW")], [0, 1]],
      ["dimH", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimH")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestItem,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestItem"),
    :schema_element => [
      ["requestItem", ["PurolatorWebServices::Soap::RequestItem[]", XSD::QName.new(NsPurolatorServicesCom, "RequestItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::RequestItem,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestItem"),
    :schema_element => [
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SKU")], [0, 1]],
      ["customsDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CustomsDesc")], [0, 1]],
      ["extendedDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ExtendedDesc")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Quantity")]],
      ["totalValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["countryOfOrigin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CountryOfOrigin")], [0, 1]],
      ["hSCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "HSCode")], [0, 1]],
      ["nAFTAEligible", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "NAFTAEligible")]],
      ["fDAFood", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "FDAFood")]],
      ["textile", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "Textile")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfLTLPalletRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfLTLPalletRequest"),
    :schema_element => [
      ["lTLPalletRequest", ["PurolatorWebServices::Soap::LTLPalletRequest[]", XSD::QName.new(NsPurolatorServicesCom, "LTLPalletRequest")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLPalletRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLPalletRequest"),
    :schema_element => [
      ["palletNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PalletNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLOrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLOrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "OrderResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRate", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletResult", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRate", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRate,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRate"),
    :schema_element => [
      ["rate", ["PurolatorWebServices::Soap::Rate[]", XSD::QName.new(NsPurolatorServicesCom, "Rate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::Rate,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "Rate"),
    :schema_element => [
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["estimatedDeliveryDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "EstimatedDeliveryDate")]],
      ["estimatedRate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "EstimatedRate")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfLTLPalletResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfLTLPalletResult"),
    :schema_element => [
      ["lTLPalletResponse", ["PurolatorWebServices::Soap::LTLPalletResult[]", XSD::QName.new(NsPurolatorServicesCom, "LTLPalletResponse")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLPalletResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLPalletResult"),
    :schema_element => [
      ["palletNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PalletNumber")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]],
      ["labelImage", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelImage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["updateOrders", ["PurolatorWebServices::Soap::ArrayOfUpdateOrderInfo", XSD::QName.new(NsPurolatorServicesCom, "UpdateOrders")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfUpdateOrderInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfUpdateOrderInfo"),
    :schema_element => [
      ["updateOrderInfo", ["PurolatorWebServices::Soap::UpdateOrderInfo[]", XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderInfo"),
    :schema_element => [
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["updateType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UpdateType")], [0, 1]],
      ["updateValue", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UpdateValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::UpdateOrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackageV3", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::AddPackageRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItemV3", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::AddItemRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LabelRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LabelRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LabelResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LabelResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::LabelRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["package", ["PurolatorWebServices::Soap::ResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Package")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ZPLInitializationResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ZPLInitializationResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageIDs", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageIDs")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::PackageListRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageListRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["packageTrackingNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageTrackingNumbers")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::PackageListResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageListResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::PackageListRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderListRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderListRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumbers")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::OrderListResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderListResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderListRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["documents", ["PurolatorWebServices::Soap::ArrayOfCloseoutDocument", XSD::QName.new(NsPurolatorServicesCom, "Documents")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfCloseoutPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfCloseoutDocument,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfCloseoutDocument"),
    :schema_element => [
      ["closeoutDocument", ["PurolatorWebServices::Soap::CloseoutDocument[]", XSD::QName.new(NsPurolatorServicesCom, "CloseoutDocument")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutDocument,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutDocument"),
    :schema_element => [
      ["documentType", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "DocumentType")]],
      ["data", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Data")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfCloseoutPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfCloseoutPackage"),
    :schema_element => [
      ["closeoutPackage", ["PurolatorWebServices::Soap::CloseoutPackage[]", XSD::QName.new(NsPurolatorServicesCom, "CloseoutPackage")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutPackage"),
    :schema_element => [
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["rate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Rate")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutRequestLTL,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequestLTL"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageIDs", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageIDs")], [0, 1]],
      ["lTLNumberType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLNumberType")], [0, 1]],
      ["lTLNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "LTLNumbers")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutResultLTL,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResultLTL"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["documents", ["PurolatorWebServices::Soap::ArrayOfCloseoutDocument", XSD::QName.new(NsPurolatorServicesCom, "Documents")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfCloseoutPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletResult", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutWithWeightRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutWithWeightRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageWeights", ["PurolatorWebServices::Soap::ArrayOfPackageIDWeight", XSD::QName.new(NsPurolatorServicesCom, "PackageWeights")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfPackageIDWeight,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfPackageIDWeight"),
    :schema_element => [
      ["packageIDWeight", ["PurolatorWebServices::Soap::PackageIDWeight[]", XSD::QName.new(NsPurolatorServicesCom, "PackageIDWeight")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::PackageIDWeight,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageIDWeight"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLShipmentRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["lTLShipmentNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentNumber")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["grossWeight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "GrossWeight")]],
      ["orderNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumbers")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletRequest", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PurolatorWebServices::Soap::LTLShipmentResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::LTLShipmentRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["lTLShipmentNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["billingAccountAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "BillingAccountAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["partnerID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PartnerID")], [0, 1]],
      ["note", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Note")], [0, 1]],
      ["pONumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PONumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["ref3", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref3")], [0, 1]],
      ["ref4", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref4")], [0, 1]],
      ["ref5", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref5")], [0, 1]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackageV3", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItemV3", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CredentialInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CredentialInfo"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Password")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfString,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::Address,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "Address"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Name")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Company")], [0, 1]],
      ["add1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Add1")], [0, 1]],
      ["add2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Add2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "City")], [0, 1]],
      ["stateProv", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "StateProv")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PostalCode")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Country")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Phone")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfKeyValueStrings,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfKeyValueStrings"),
    :schema_element => [
      ["keyValueStrings", ["PurolatorWebServices::Soap::KeyValueStrings[]", XSD::QName.new(NsPurolatorServicesCom, "KeyValueStrings")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::KeyValueStrings,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "KeyValueStrings"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestPackageV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestPackageV3"),
    :schema_element => [
      ["requestPackageV3", ["PurolatorWebServices::Soap::RequestPackageV3[]", XSD::QName.new(NsPurolatorServicesCom, "RequestPackageV3")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::RequestPackageV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestPackageV3"),
    :schema_element => [
      ["packageNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageNumber")], [0, 1]],
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["pin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Pin")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]],
      ["dimensionUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "DimensionUOM")], [0, 1]],
      ["dimL", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimL")], [0, 1]],
      ["dimW", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimW")], [0, 1]],
      ["dimH", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimH")], [0, 1]],
      ["labelPrinted", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "LabelPrinted")]],
      ["specialHandlingType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SpecialHandlingType")], [0, 1]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestItemV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestItemV3"),
    :schema_element => [
      ["requestItemV3", ["PurolatorWebServices::Soap::RequestItemV3[]", XSD::QName.new(NsPurolatorServicesCom, "RequestItemV3")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::RequestItemV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestItemV3"),
    :schema_element => [
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SKU")], [0, 1]],
      ["customsDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CustomsDesc")], [0, 1]],
      ["extendedDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ExtendedDesc")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Quantity")]],
      ["totalValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["countryOfOrigin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CountryOfOrigin")], [0, 1]],
      ["hSCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "HSCode")], [0, 1]],
      ["nAFTAEligible", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "NAFTAEligible")]],
      ["fDAFood", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "FDAFood")]],
      ["textile", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "Textile")]],
      ["pSTExempt", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "PSTExempt")]],
      ["additionalOptions", ["PurolatorWebServices::Soap::ArrayOfKeyValueStrings", XSD::QName.new(NsPurolatorServicesCom, "AdditionalOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderResultV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderResultV3"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRateV3", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ResultBase,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfResultMessage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfResultMessage"),
    :schema_element => [
      ["responseMessage", ["PurolatorWebServices::Soap::ResultMessage[]", XSD::QName.new(NsPurolatorServicesCom, "ResponseMessage")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ResultMessage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultMessage"),
    :schema_element => [
      ["number", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Number")]],
      ["severity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Severity")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfResultPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfResultPackage"),
    :schema_element => [
      ["responsePackage", ["PurolatorWebServices::Soap::ResultPackage[]", XSD::QName.new(NsPurolatorServicesCom, "ResponsePackage")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ResultPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ResultPackage"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["shippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "ShippingCharge")]],
      ["unicode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Unicode")], [0, 1]],
      ["airportCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "AirportCode")], [0, 1]],
      ["barCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BarCode")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]],
      ["labelImage", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelImage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRateV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRateV3"),
    :schema_element => [
      ["rateV3", ["PurolatorWebServices::Soap::RateV3[]", XSD::QName.new(NsPurolatorServicesCom, "RateV3")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::RateV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RateV3"),
    :schema_element => [
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["estimatedDeliveryDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "EstimatedDeliveryDate")]],
      ["estimatedRate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "EstimatedRate")]],
      ["isAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "IsAvailable")]],
      ["rateDetails", ["PurolatorWebServices::Soap::ArrayOfKeyValueDecimal", XSD::QName.new(NsPurolatorServicesCom, "RateDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfKeyValueDecimal,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfKeyValueDecimal"),
    :schema_element => [
      ["keyValueDecimal", ["PurolatorWebServices::Soap::KeyValueDecimal[]", XSD::QName.new(NsPurolatorServicesCom, "KeyValueDecimal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::KeyValueDecimal,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "KeyValueDecimal"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Value")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLOrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLOrderRequest"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "OrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]],
      ["grossWeight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "GrossWeight")]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletRequest", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["ref1", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref1")], [0, 1]],
      ["ref2", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Ref2")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["specialServices", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "SpecialServices")], [0, 1]],
      ["billingOption", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingOption")], [0, 1]],
      ["billingAccount", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "BillingAccount")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["shipFromAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipFromAddress")], [0, 1]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["declaredValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DeclaredValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestPackage"),
    :schema_element => [
      ["requestPackage", ["PurolatorWebServices::Soap::RequestPackage[]", XSD::QName.new(NsPurolatorServicesCom, "RequestPackage")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::RequestPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestPackage"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]],
      ["dimensionUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "DimensionUOM")], [0, 1]],
      ["dimL", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimL")], [0, 1]],
      ["dimW", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimW")], [0, 1]],
      ["dimH", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "DimH")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRequestItem,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRequestItem"),
    :schema_element => [
      ["requestItem", ["PurolatorWebServices::Soap::RequestItem[]", XSD::QName.new(NsPurolatorServicesCom, "RequestItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::RequestItem,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "RequestItem"),
    :schema_element => [
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "SKU")], [0, 1]],
      ["customsDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CustomsDesc")], [0, 1]],
      ["extendedDesc", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ExtendedDesc")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Quantity")]],
      ["totalValue", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalValue")]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Currency")], [0, 1]],
      ["countryOfOrigin", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "CountryOfOrigin")], [0, 1]],
      ["hSCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "HSCode")], [0, 1]],
      ["nAFTAEligible", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "NAFTAEligible")]],
      ["fDAFood", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "FDAFood")]],
      ["textile", ["SOAP::SOAPBoolean", XSD::QName.new(NsPurolatorServicesCom, "Textile")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfLTLPalletRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfLTLPalletRequest"),
    :schema_element => [
      ["lTLPalletRequest", ["PurolatorWebServices::Soap::LTLPalletRequest[]", XSD::QName.new(NsPurolatorServicesCom, "LTLPalletRequest")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLPalletRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLPalletRequest"),
    :schema_element => [
      ["palletNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PalletNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLOrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLOrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "OrderResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRate", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletResult", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]],
      ["rates", ["PurolatorWebServices::Soap::ArrayOfRate", XSD::QName.new(NsPurolatorServicesCom, "Rates")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfRate,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfRate"),
    :schema_element => [
      ["rate", ["PurolatorWebServices::Soap::Rate[]", XSD::QName.new(NsPurolatorServicesCom, "Rate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::Rate,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "Rate"),
    :schema_element => [
      ["shipMethod", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ShipMethod")], [0, 1]],
      ["estimatedDeliveryDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "EstimatedDeliveryDate")]],
      ["estimatedRate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "EstimatedRate")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfLTLPalletResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfLTLPalletResult"),
    :schema_element => [
      ["lTLPalletResponse", ["PurolatorWebServices::Soap::LTLPalletResult[]", XSD::QName.new(NsPurolatorServicesCom, "LTLPalletResponse")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLPalletResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLPalletResult"),
    :schema_element => [
      ["palletNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PalletNumber")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]],
      ["labelImage", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelImage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["updateOrders", ["PurolatorWebServices::Soap::ArrayOfUpdateOrderInfo", XSD::QName.new(NsPurolatorServicesCom, "UpdateOrders")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfUpdateOrderInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfUpdateOrderInfo"),
    :schema_element => [
      ["updateOrderInfo", ["PurolatorWebServices::Soap::UpdateOrderInfo[]", XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderInfo,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderInfo"),
    :schema_element => [
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["updateType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UpdateType")], [0, 1]],
      ["updateValue", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "UpdateValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::UpdateOrderRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackageV3", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::AddPackageRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["totalShipping", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "TotalShipping")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddPackageRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfRequestPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemRequestV3,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemRequestV3"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItemV3", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::AddItemRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "AddItemRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["items", ["PurolatorWebServices::Soap::ArrayOfRequestItem", XSD::QName.new(NsPurolatorServicesCom, "Items")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LabelRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LabelRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumber")], [0, 1]],
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["labelType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LabelType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LabelResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LabelResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::LabelRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["package", ["PurolatorWebServices::Soap::ResultPackage", XSD::QName.new(NsPurolatorServicesCom, "Package")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ZPLInitializationResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ZPLInitializationResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["zPLCode", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ZPLCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageIDs", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageIDs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::PackageListRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageListRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["packageTrackingNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageTrackingNumbers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::PackageListResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageListResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::PackageListRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderListRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderListRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["orderNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumbers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::OrderListResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "OrderListResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::OrderListRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["documents", ["PurolatorWebServices::Soap::ArrayOfCloseoutDocument", XSD::QName.new(NsPurolatorServicesCom, "Documents")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfCloseoutPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfCloseoutDocument,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfCloseoutDocument"),
    :schema_element => [
      ["closeoutDocument", ["PurolatorWebServices::Soap::CloseoutDocument[]", XSD::QName.new(NsPurolatorServicesCom, "CloseoutDocument")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutDocument,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutDocument"),
    :schema_element => [
      ["documentType", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "DocumentType")]],
      ["data", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "Data")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfCloseoutPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfCloseoutPackage"),
    :schema_element => [
      ["closeoutPackage", ["PurolatorWebServices::Soap::CloseoutPackage[]", XSD::QName.new(NsPurolatorServicesCom, "CloseoutPackage")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutPackage,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutPackage"),
    :schema_element => [
      ["trackingNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "TrackingNumber")], [0, 1]],
      ["rate", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Rate")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutRequestLTL,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequestLTL"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "CloseoutRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageIDs", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "PackageIDs")], [0, 1]],
      ["lTLNumberType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLNumberType")], [0, 1]],
      ["lTLNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "LTLNumbers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutResultLTL,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResultLTL"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::CloseoutRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["documents", ["PurolatorWebServices::Soap::ArrayOfCloseoutDocument", XSD::QName.new(NsPurolatorServicesCom, "Documents")], [0, 1]],
      ["packages", ["PurolatorWebServices::Soap::ArrayOfCloseoutPackage", XSD::QName.new(NsPurolatorServicesCom, "Packages")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletResult", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutWithWeightRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "CloseoutWithWeightRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["parsNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ParsNumber")], [0, 1]],
      ["skidCount", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "SkidCount")]],
      ["packIDType", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackIDType")], [0, 1]],
      ["packageWeights", ["PurolatorWebServices::Soap::ArrayOfPackageIDWeight", XSD::QName.new(NsPurolatorServicesCom, "PackageWeights")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ArrayOfPackageIDWeight,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "ArrayOfPackageIDWeight"),
    :schema_element => [
      ["packageIDWeight", ["PurolatorWebServices::Soap::PackageIDWeight[]", XSD::QName.new(NsPurolatorServicesCom, "PackageIDWeight")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::PackageIDWeight,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "PackageIDWeight"),
    :schema_element => [
      ["packageID", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "PackageID")], [0, 1]],
      ["weightUOM", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "WeightUOM")], [0, 1]],
      ["weight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "Weight")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLShipmentRequest,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentRequest"),
    :schema_element => [
      ["credentials", ["PurolatorWebServices::Soap::CredentialInfo", XSD::QName.new(NsPurolatorServicesCom, "Credentials")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["lTLShipmentNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentNumber")], [0, 1]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsPurolatorServicesCom, "ShipDate")]],
      ["shipToAddress", ["PurolatorWebServices::Soap::Address", XSD::QName.new(NsPurolatorServicesCom, "ShipToAddress")], [0, 1]],
      ["grossWeight", ["SOAP::SOAPDecimal", XSD::QName.new(NsPurolatorServicesCom, "GrossWeight")]],
      ["orderNumbers", ["PurolatorWebServices::Soap::ArrayOfString", XSD::QName.new(NsPurolatorServicesCom, "OrderNumbers")], [0, 1]],
      ["pallets", ["PurolatorWebServices::Soap::ArrayOfLTLPalletRequest", XSD::QName.new(NsPurolatorServicesCom, "Pallets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::LTLShipmentResult,
    :schema_type => XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentResult"),
    :schema_basetype => XSD::QName.new(NsPurolatorServicesCom, "ResultBase"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsPurolatorServicesCom, "Status")]],
      ["messages", ["PurolatorWebServices::Soap::ArrayOfResultMessage", XSD::QName.new(NsPurolatorServicesCom, "Messages")], [0, 1]],
      ["request", ["PurolatorWebServices::Soap::LTLShipmentRequest", XSD::QName.new(NsPurolatorServicesCom, "Request")], [0, 1]],
      ["proNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "ProNumber")], [0, 1]],
      ["lTLShipmentNumber", ["SOAP::SOAPString", XSD::QName.new(NsPurolatorServicesCom, "LTLShipmentNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetRates,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetRates"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::OrderRequestV3", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetRatesResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetRatesResponse"),
    :schema_element => [
      ["getRatesResult", ["PurolatorWebServices::Soap::OrderResultV3", XSD::QName.new(NsPurolatorServicesCom, "GetRatesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddOrder,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddOrder"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::OrderRequestV3", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddOrderResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddOrderResponse"),
    :schema_element => [
      ["addOrderResult", ["PurolatorWebServices::Soap::OrderResultV3", XSD::QName.new(NsPurolatorServicesCom, "AddOrderResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddLTLOrder,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddLTLOrder"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::LTLOrderRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddLTLOrderResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddLTLOrderResponse"),
    :schema_element => [
      ["addLTLOrderResult", ["PurolatorWebServices::Soap::LTLOrderResult", XSD::QName.new(NsPurolatorServicesCom, "AddLTLOrderResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrder,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrder"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::UpdateOrderRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::UpdateOrderResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderResponse"),
    :schema_element => [
      ["updateOrderResult", ["PurolatorWebServices::Soap::UpdateOrderResult", XSD::QName.new(NsPurolatorServicesCom, "UpdateOrderResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackage,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddPackage"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::AddPackageRequestV3", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddPackageResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddPackageResponse"),
    :schema_element => [
      ["addPackageResult", ["PurolatorWebServices::Soap::AddPackageResult", XSD::QName.new(NsPurolatorServicesCom, "AddPackageResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddItem,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddItem"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::AddItemRequestV3", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddItemResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddItemResponse"),
    :schema_element => [
      ["addItemResult", ["PurolatorWebServices::Soap::AddItemResult", XSD::QName.new(NsPurolatorServicesCom, "AddItemResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetOrderStatus,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetOrderStatus"),
    :schema_element => [
      ["credentials", "PurolatorWebServices::Soap::CredentialInfo", [0, 1]],
      ["orderNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetOrderStatusResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetOrderStatusResponse"),
    :schema_element => [
      ["getOrderStatusResult", ["PurolatorWebServices::Soap::OrderResultV3", XSD::QName.new(NsPurolatorServicesCom, "GetOrderStatusResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetLabel,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetLabel"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::LabelRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetLabelResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetLabelResponse"),
    :schema_element => [
      ["getLabelResult", ["PurolatorWebServices::Soap::LabelResult", XSD::QName.new(NsPurolatorServicesCom, "GetLabelResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetZPLInitializationImages,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetZPLInitializationImages"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::CredentialInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::GetZPLInitializationImagesResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "GetZPLInitializationImagesResponse"),
    :schema_element => [
      ["getZPLInitializationImagesResult", ["PurolatorWebServices::Soap::ZPLInitializationResult", XSD::QName.new(NsPurolatorServicesCom, "GetZPLInitializationImagesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ShipmentVerification,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "ShipmentVerification"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::PackageListRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::ShipmentVerificationResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "ShipmentVerificationResponse"),
    :schema_element => [
      ["shipmentVerificationResult", ["PurolatorWebServices::Soap::PackageListResult", XSD::QName.new(NsPurolatorServicesCom, "ShipmentVerificationResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::VoidPackages,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "VoidPackages"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::PackageListRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::VoidPackagesResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "VoidPackagesResponse"),
    :schema_element => [
      ["voidPackagesResult", ["PurolatorWebServices::Soap::PackageListResult", XSD::QName.new(NsPurolatorServicesCom, "VoidPackagesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::VoidOrders,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "VoidOrders"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::OrderListRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::VoidOrdersResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "VoidOrdersResponse"),
    :schema_element => [
      ["voidOrdersResult", ["PurolatorWebServices::Soap::OrderListResult", XSD::QName.new(NsPurolatorServicesCom, "VoidOrdersResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::Closeout,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "Closeout"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::CloseoutRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "CloseoutResponse"),
    :schema_element => [
      ["closeoutResult", ["PurolatorWebServices::Soap::CloseoutResult", XSD::QName.new(NsPurolatorServicesCom, "CloseoutResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutWithLTL,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "CloseoutWithLTL"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::CloseoutRequestLTL", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutWithLTLResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "CloseoutWithLTLResponse"),
    :schema_element => [
      ["closeoutWithLTLResult", ["PurolatorWebServices::Soap::CloseoutResultLTL", XSD::QName.new(NsPurolatorServicesCom, "CloseoutWithLTLResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutUpdateWeight,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "CloseoutUpdateWeight"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::CloseoutWithWeightRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::CloseoutUpdateWeightResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "CloseoutUpdateWeightResponse"),
    :schema_element => [
      ["closeoutUpdateWeightResult", ["PurolatorWebServices::Soap::CloseoutResult", XSD::QName.new(NsPurolatorServicesCom, "CloseoutUpdateWeightResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddConsolidatedLTLShipment,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddConsolidatedLTLShipment"),
    :schema_element => [
      ["request", "PurolatorWebServices::Soap::LTLShipmentRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PurolatorWebServices::Soap::AddConsolidatedLTLShipmentResponse,
    :schema_name => XSD::QName.new(NsPurolatorServicesCom, "AddConsolidatedLTLShipmentResponse"),
    :schema_element => [
      ["addConsolidatedLTLShipmentResult", ["PurolatorWebServices::Soap::LTLShipmentResult", XSD::QName.new(NsPurolatorServicesCom, "AddConsolidatedLTLShipmentResult")], [0, 1]]
    ]
  )
end

end; end
