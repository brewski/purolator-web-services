require 'xsd/qname'

module PurolatorWebServices; module Soap


# {http://PurolatorServices.com/}OrderRequestV3
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   shipDate - SOAP::SOAPDateTime
#   shipMethod - SOAP::SOAPString
#   specialServices - PurolatorWebServices::Soap::ArrayOfString
#   billingOption - SOAP::SOAPString
#   billingAccount - SOAP::SOAPString
#   labelType - SOAP::SOAPString
#   shipFromAddress - PurolatorWebServices::Soap::Address
#   shipToAddress - PurolatorWebServices::Soap::Address
#   billingAccountAddress - PurolatorWebServices::Soap::Address
#   declaredValue - SOAP::SOAPDecimal
#   currency - SOAP::SOAPString
#   partnerID - SOAP::SOAPString
#   note - SOAP::SOAPString
#   pONumber - SOAP::SOAPString
#   ref1 - SOAP::SOAPString
#   ref2 - SOAP::SOAPString
#   ref3 - SOAP::SOAPString
#   ref4 - SOAP::SOAPString
#   ref5 - SOAP::SOAPString
#   additionalOptions - PurolatorWebServices::Soap::ArrayOfKeyValueStrings
#   packages - PurolatorWebServices::Soap::ArrayOfRequestPackageV3
#   items - PurolatorWebServices::Soap::ArrayOfRequestItemV3
class OrderRequestV3
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :shipDate
  attr_accessor :shipMethod
  attr_accessor :specialServices
  attr_accessor :billingOption
  attr_accessor :billingAccount
  attr_accessor :labelType
  attr_accessor :shipFromAddress
  attr_accessor :shipToAddress
  attr_accessor :billingAccountAddress
  attr_accessor :declaredValue
  attr_accessor :currency
  attr_accessor :partnerID
  attr_accessor :note
  attr_accessor :pONumber
  attr_accessor :ref1
  attr_accessor :ref2
  attr_accessor :ref3
  attr_accessor :ref4
  attr_accessor :ref5
  attr_accessor :additionalOptions
  attr_accessor :packages
  attr_accessor :items

  def initialize(credentials = nil, orderNumber = nil, shipDate = nil, shipMethod = nil, specialServices = nil, billingOption = nil, billingAccount = nil, labelType = nil, shipFromAddress = nil, shipToAddress = nil, billingAccountAddress = nil, declaredValue = nil, currency = nil, partnerID = nil, note = nil, pONumber = nil, ref1 = nil, ref2 = nil, ref3 = nil, ref4 = nil, ref5 = nil, additionalOptions = nil, packages = nil, items = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @shipDate = shipDate
    @shipMethod = shipMethod
    @specialServices = specialServices
    @billingOption = billingOption
    @billingAccount = billingAccount
    @labelType = labelType
    @shipFromAddress = shipFromAddress
    @shipToAddress = shipToAddress
    @billingAccountAddress = billingAccountAddress
    @declaredValue = declaredValue
    @currency = currency
    @partnerID = partnerID
    @note = note
    @pONumber = pONumber
    @ref1 = ref1
    @ref2 = ref2
    @ref3 = ref3
    @ref4 = ref4
    @ref5 = ref5
    @additionalOptions = additionalOptions
    @packages = packages
    @items = items
  end
end

# {http://PurolatorServices.com/}CredentialInfo
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class CredentialInfo
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :clientID

  def initialize(userName = nil, password = nil, clientID = nil)
    @userName = userName
    @password = password
    @clientID = clientID
  end
end

# {http://PurolatorServices.com/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://PurolatorServices.com/}Address
#   name - SOAP::SOAPString
#   company - SOAP::SOAPString
#   add1 - SOAP::SOAPString
#   add2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   stateProv - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   country - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   email - SOAP::SOAPString
class Address
  attr_accessor :name
  attr_accessor :company
  attr_accessor :add1
  attr_accessor :add2
  attr_accessor :city
  attr_accessor :stateProv
  attr_accessor :postalCode
  attr_accessor :country
  attr_accessor :phone
  attr_accessor :email

  def initialize(name = nil, company = nil, add1 = nil, add2 = nil, city = nil, stateProv = nil, postalCode = nil, country = nil, phone = nil, email = nil)
    @name = name
    @company = company
    @add1 = add1
    @add2 = add2
    @city = city
    @stateProv = stateProv
    @postalCode = postalCode
    @country = country
    @phone = phone
    @email = email
  end
end

# {http://PurolatorServices.com/}ArrayOfKeyValueStrings
class ArrayOfKeyValueStrings < ::Array
end

# {http://PurolatorServices.com/}KeyValueStrings
#   key - SOAP::SOAPString
#   value - SOAP::SOAPString
class KeyValueStrings
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {http://PurolatorServices.com/}ArrayOfRequestPackageV3
class ArrayOfRequestPackageV3 < ::Array
end

# {http://PurolatorServices.com/}RequestPackageV3
#   packageNumber - SOAP::SOAPString
#   packageID - SOAP::SOAPString
#   pin - SOAP::SOAPString
#   weightUOM - SOAP::SOAPString
#   weight - SOAP::SOAPDecimal
#   dimensionUOM - SOAP::SOAPString
#   dimL - SOAP::SOAPDecimal
#   dimW - SOAP::SOAPDecimal
#   dimH - SOAP::SOAPDecimal
#   labelPrinted - SOAP::SOAPBoolean
#   specialHandlingType - SOAP::SOAPString
#   additionalOptions - PurolatorWebServices::Soap::ArrayOfKeyValueStrings
class RequestPackageV3
  attr_accessor :packageNumber
  attr_accessor :packageID
  attr_accessor :pin
  attr_accessor :weightUOM
  attr_accessor :weight
  attr_accessor :dimensionUOM
  attr_accessor :dimL
  attr_accessor :dimW
  attr_accessor :dimH
  attr_accessor :labelPrinted
  attr_accessor :specialHandlingType
  attr_accessor :additionalOptions

  def initialize(packageNumber = nil, packageID = nil, pin = nil, weightUOM = nil, weight = nil, dimensionUOM = nil, dimL = nil, dimW = nil, dimH = nil, labelPrinted = nil, specialHandlingType = nil, additionalOptions = nil)
    @packageNumber = packageNumber
    @packageID = packageID
    @pin = pin
    @weightUOM = weightUOM
    @weight = weight
    @dimensionUOM = dimensionUOM
    @dimL = dimL
    @dimW = dimW
    @dimH = dimH
    @labelPrinted = labelPrinted
    @specialHandlingType = specialHandlingType
    @additionalOptions = additionalOptions
  end
end

# {http://PurolatorServices.com/}ArrayOfRequestItemV3
class ArrayOfRequestItemV3 < ::Array
end

# {http://PurolatorServices.com/}RequestItemV3
#   sKU - SOAP::SOAPString
#   customsDesc - SOAP::SOAPString
#   extendedDesc - SOAP::SOAPString
#   quantity - SOAP::SOAPInt
#   totalValue - SOAP::SOAPDecimal
#   currency - SOAP::SOAPString
#   countryOfOrigin - SOAP::SOAPString
#   hSCode - SOAP::SOAPString
#   nAFTAEligible - SOAP::SOAPBoolean
#   fDAFood - SOAP::SOAPBoolean
#   textile - SOAP::SOAPBoolean
#   pSTExempt - SOAP::SOAPBoolean
#   additionalOptions - PurolatorWebServices::Soap::ArrayOfKeyValueStrings
class RequestItemV3
  attr_accessor :sKU
  attr_accessor :customsDesc
  attr_accessor :extendedDesc
  attr_accessor :quantity
  attr_accessor :totalValue
  attr_accessor :currency
  attr_accessor :countryOfOrigin
  attr_accessor :hSCode
  attr_accessor :nAFTAEligible
  attr_accessor :fDAFood
  attr_accessor :textile
  attr_accessor :pSTExempt
  attr_accessor :additionalOptions

  def initialize(sKU = nil, customsDesc = nil, extendedDesc = nil, quantity = nil, totalValue = nil, currency = nil, countryOfOrigin = nil, hSCode = nil, nAFTAEligible = nil, fDAFood = nil, textile = nil, pSTExempt = nil, additionalOptions = nil)
    @sKU = sKU
    @customsDesc = customsDesc
    @extendedDesc = extendedDesc
    @quantity = quantity
    @totalValue = totalValue
    @currency = currency
    @countryOfOrigin = countryOfOrigin
    @hSCode = hSCode
    @nAFTAEligible = nAFTAEligible
    @fDAFood = fDAFood
    @textile = textile
    @pSTExempt = pSTExempt
    @additionalOptions = additionalOptions
  end
end

# {http://PurolatorServices.com/}ResultBase
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
class ResultBase
  attr_accessor :status
  attr_accessor :messages

  def initialize(status = nil, messages = nil)
    @status = status
    @messages = messages
  end
end

# {http://PurolatorServices.com/}OrderResultV3
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   packages - PurolatorWebServices::Soap::ArrayOfResultPackage
#   totalShipping - SOAP::SOAPDecimal
#   rates - PurolatorWebServices::Soap::ArrayOfRateV3
class OrderResultV3 < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :packages
  attr_accessor :totalShipping
  attr_accessor :rates

  def initialize(status = nil, messages = nil, packages = nil, totalShipping = nil, rates = nil)
    @status = status
    @messages = messages
    @packages = packages
    @totalShipping = totalShipping
    @rates = rates
  end
end

# {http://PurolatorServices.com/}OrderResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::OrderRequest
#   packages - PurolatorWebServices::Soap::ArrayOfResultPackage
#   totalShipping - SOAP::SOAPDecimal
#   rates - PurolatorWebServices::Soap::ArrayOfRate
class OrderResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :packages
  attr_accessor :totalShipping
  attr_accessor :rates

  def initialize(status = nil, messages = nil, request = nil, packages = nil, totalShipping = nil, rates = nil)
    @status = status
    @messages = messages
    @request = request
    @packages = packages
    @totalShipping = totalShipping
    @rates = rates
  end
end

# {http://PurolatorServices.com/}LTLOrderResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::OrderRequest
#   packages - PurolatorWebServices::Soap::ArrayOfResultPackage
#   totalShipping - SOAP::SOAPDecimal
#   rates - PurolatorWebServices::Soap::ArrayOfRate
#   proNumber - SOAP::SOAPString
#   pallets - PurolatorWebServices::Soap::ArrayOfLTLPalletResult
class LTLOrderResult < OrderResult
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :packages
  attr_accessor :totalShipping
  attr_accessor :rates
  attr_accessor :proNumber
  attr_accessor :pallets

  def initialize(status = nil, messages = nil, request = nil, packages = nil, totalShipping = nil, rates = nil, proNumber = nil, pallets = nil)
    @status = status
    @messages = messages
    @request = request
    @packages = packages
    @totalShipping = totalShipping
    @rates = rates
    @proNumber = proNumber
    @pallets = pallets
  end
end

# {http://PurolatorServices.com/}UpdateOrderResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::UpdateOrderRequest
class UpdateOrderResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request

  def initialize(status = nil, messages = nil, request = nil)
    @status = status
    @messages = messages
    @request = request
  end
end

# {http://PurolatorServices.com/}AddPackageResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::AddPackageRequest
#   packages - PurolatorWebServices::Soap::ArrayOfResultPackage
#   totalShipping - SOAP::SOAPDecimal
class AddPackageResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :packages
  attr_accessor :totalShipping

  def initialize(status = nil, messages = nil, request = nil, packages = nil, totalShipping = nil)
    @status = status
    @messages = messages
    @request = request
    @packages = packages
    @totalShipping = totalShipping
  end
end

# {http://PurolatorServices.com/}AddItemResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::AddItemRequest
class AddItemResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request

  def initialize(status = nil, messages = nil, request = nil)
    @status = status
    @messages = messages
    @request = request
  end
end

# {http://PurolatorServices.com/}LabelResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::LabelRequest
#   package - PurolatorWebServices::Soap::ResultPackage
class LabelResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :package

  def initialize(status = nil, messages = nil, request = nil, package = nil)
    @status = status
    @messages = messages
    @request = request
    @package = package
  end
end

# {http://PurolatorServices.com/}ZPLInitializationResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::CloseoutRequest
#   zPLCode - SOAP::SOAPString
class ZPLInitializationResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :zPLCode

  def initialize(status = nil, messages = nil, request = nil, zPLCode = nil)
    @status = status
    @messages = messages
    @request = request
    @zPLCode = zPLCode
  end
end

# {http://PurolatorServices.com/}PackageListResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::PackageListRequest
class PackageListResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request

  def initialize(status = nil, messages = nil, request = nil)
    @status = status
    @messages = messages
    @request = request
  end
end

# {http://PurolatorServices.com/}OrderListResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::OrderListRequest
class OrderListResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request

  def initialize(status = nil, messages = nil, request = nil)
    @status = status
    @messages = messages
    @request = request
  end
end

# {http://PurolatorServices.com/}CloseoutResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::CloseoutRequest
#   documents - PurolatorWebServices::Soap::ArrayOfCloseoutDocument
#   packages - PurolatorWebServices::Soap::ArrayOfCloseoutPackage
class CloseoutResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :documents
  attr_accessor :packages

  def initialize(status = nil, messages = nil, request = nil, documents = nil, packages = nil)
    @status = status
    @messages = messages
    @request = request
    @documents = documents
    @packages = packages
  end
end

# {http://PurolatorServices.com/}CloseoutResultLTL
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::CloseoutRequest
#   documents - PurolatorWebServices::Soap::ArrayOfCloseoutDocument
#   packages - PurolatorWebServices::Soap::ArrayOfCloseoutPackage
#   pallets - PurolatorWebServices::Soap::ArrayOfLTLPalletResult
class CloseoutResultLTL < CloseoutResult
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :documents
  attr_accessor :packages
  attr_accessor :pallets

  def initialize(status = nil, messages = nil, request = nil, documents = nil, packages = nil, pallets = nil)
    @status = status
    @messages = messages
    @request = request
    @documents = documents
    @packages = packages
    @pallets = pallets
  end
end

# {http://PurolatorServices.com/}LTLShipmentResult
#   status - SOAP::SOAPInt
#   messages - PurolatorWebServices::Soap::ArrayOfResultMessage
#   request - PurolatorWebServices::Soap::LTLShipmentRequest
#   proNumber - SOAP::SOAPString
#   lTLShipmentNumber - SOAP::SOAPString
class LTLShipmentResult < ResultBase
  attr_accessor :status
  attr_accessor :messages
  attr_accessor :request
  attr_accessor :proNumber
  attr_accessor :lTLShipmentNumber

  def initialize(status = nil, messages = nil, request = nil, proNumber = nil, lTLShipmentNumber = nil)
    @status = status
    @messages = messages
    @request = request
    @proNumber = proNumber
    @lTLShipmentNumber = lTLShipmentNumber
  end
end

# {http://PurolatorServices.com/}ArrayOfResultMessage
class ArrayOfResultMessage < ::Array
end

# {http://PurolatorServices.com/}ResultMessage
#   number - SOAP::SOAPInt
#   severity - SOAP::SOAPInt
#   message - SOAP::SOAPString
class ResultMessage
  attr_accessor :number
  attr_accessor :severity
  attr_accessor :message

  def initialize(number = nil, severity = nil, message = nil)
    @number = number
    @severity = severity
    @message = message
  end
end

# {http://PurolatorServices.com/}ArrayOfResultPackage
class ArrayOfResultPackage < ::Array
end

# {http://PurolatorServices.com/}ResultPackage
#   packageID - SOAP::SOAPString
#   trackingNumber - SOAP::SOAPString
#   shippingCharge - SOAP::SOAPDecimal
#   unicode - SOAP::SOAPString
#   airportCode - SOAP::SOAPString
#   barCode - SOAP::SOAPString
#   zPLCode - SOAP::SOAPString
#   labelImage - SOAP::SOAPString
class ResultPackage
  attr_accessor :packageID
  attr_accessor :trackingNumber
  attr_accessor :shippingCharge
  attr_accessor :unicode
  attr_accessor :airportCode
  attr_accessor :barCode
  attr_accessor :zPLCode
  attr_accessor :labelImage

  def initialize(packageID = nil, trackingNumber = nil, shippingCharge = nil, unicode = nil, airportCode = nil, barCode = nil, zPLCode = nil, labelImage = nil)
    @packageID = packageID
    @trackingNumber = trackingNumber
    @shippingCharge = shippingCharge
    @unicode = unicode
    @airportCode = airportCode
    @barCode = barCode
    @zPLCode = zPLCode
    @labelImage = labelImage
  end
end

# {http://PurolatorServices.com/}ArrayOfRateV3
class ArrayOfRateV3 < ::Array
end

# {http://PurolatorServices.com/}RateV3
#   shipMethod - SOAP::SOAPString
#   estimatedDeliveryDate - SOAP::SOAPDateTime
#   estimatedRate - SOAP::SOAPDecimal
#   isAvailable - SOAP::SOAPBoolean
#   rateDetails - PurolatorWebServices::Soap::ArrayOfKeyValueDecimal
class RateV3
  attr_accessor :shipMethod
  attr_accessor :estimatedDeliveryDate
  attr_accessor :estimatedRate
  attr_accessor :isAvailable
  attr_accessor :rateDetails

  def initialize(shipMethod = nil, estimatedDeliveryDate = nil, estimatedRate = nil, isAvailable = nil, rateDetails = nil)
    @shipMethod = shipMethod
    @estimatedDeliveryDate = estimatedDeliveryDate
    @estimatedRate = estimatedRate
    @isAvailable = isAvailable
    @rateDetails = rateDetails
  end
end

# {http://PurolatorServices.com/}ArrayOfKeyValueDecimal
class ArrayOfKeyValueDecimal < ::Array
end

# {http://PurolatorServices.com/}KeyValueDecimal
#   key - SOAP::SOAPString
#   value - SOAP::SOAPDecimal
class KeyValueDecimal
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {http://PurolatorServices.com/}OrderRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   ref1 - SOAP::SOAPString
#   ref2 - SOAP::SOAPString
#   shipDate - SOAP::SOAPDateTime
#   shipMethod - SOAP::SOAPString
#   specialServices - PurolatorWebServices::Soap::ArrayOfString
#   billingOption - SOAP::SOAPString
#   billingAccount - SOAP::SOAPString
#   labelType - SOAP::SOAPString
#   shipFromAddress - PurolatorWebServices::Soap::Address
#   shipToAddress - PurolatorWebServices::Soap::Address
#   declaredValue - SOAP::SOAPDecimal
#   currency - SOAP::SOAPString
#   packages - PurolatorWebServices::Soap::ArrayOfRequestPackage
#   items - PurolatorWebServices::Soap::ArrayOfRequestItem
class OrderRequest
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :ref1
  attr_accessor :ref2
  attr_accessor :shipDate
  attr_accessor :shipMethod
  attr_accessor :specialServices
  attr_accessor :billingOption
  attr_accessor :billingAccount
  attr_accessor :labelType
  attr_accessor :shipFromAddress
  attr_accessor :shipToAddress
  attr_accessor :declaredValue
  attr_accessor :currency
  attr_accessor :packages
  attr_accessor :items

  def initialize(credentials = nil, orderNumber = nil, ref1 = nil, ref2 = nil, shipDate = nil, shipMethod = nil, specialServices = nil, billingOption = nil, billingAccount = nil, labelType = nil, shipFromAddress = nil, shipToAddress = nil, declaredValue = nil, currency = nil, packages = nil, items = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @ref1 = ref1
    @ref2 = ref2
    @shipDate = shipDate
    @shipMethod = shipMethod
    @specialServices = specialServices
    @billingOption = billingOption
    @billingAccount = billingAccount
    @labelType = labelType
    @shipFromAddress = shipFromAddress
    @shipToAddress = shipToAddress
    @declaredValue = declaredValue
    @currency = currency
    @packages = packages
    @items = items
  end
end

# {http://PurolatorServices.com/}LTLOrderRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   ref1 - SOAP::SOAPString
#   ref2 - SOAP::SOAPString
#   shipDate - SOAP::SOAPDateTime
#   shipMethod - SOAP::SOAPString
#   specialServices - PurolatorWebServices::Soap::ArrayOfString
#   billingOption - SOAP::SOAPString
#   billingAccount - SOAP::SOAPString
#   labelType - SOAP::SOAPString
#   shipFromAddress - PurolatorWebServices::Soap::Address
#   shipToAddress - PurolatorWebServices::Soap::Address
#   declaredValue - SOAP::SOAPDecimal
#   currency - SOAP::SOAPString
#   packages - PurolatorWebServices::Soap::ArrayOfRequestPackage
#   items - PurolatorWebServices::Soap::ArrayOfRequestItem
#   grossWeight - SOAP::SOAPDecimal
#   pallets - PurolatorWebServices::Soap::ArrayOfLTLPalletRequest
class LTLOrderRequest < OrderRequest
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :ref1
  attr_accessor :ref2
  attr_accessor :shipDate
  attr_accessor :shipMethod
  attr_accessor :specialServices
  attr_accessor :billingOption
  attr_accessor :billingAccount
  attr_accessor :labelType
  attr_accessor :shipFromAddress
  attr_accessor :shipToAddress
  attr_accessor :declaredValue
  attr_accessor :currency
  attr_accessor :packages
  attr_accessor :items
  attr_accessor :grossWeight
  attr_accessor :pallets

  def initialize(credentials = nil, orderNumber = nil, ref1 = nil, ref2 = nil, shipDate = nil, shipMethod = nil, specialServices = nil, billingOption = nil, billingAccount = nil, labelType = nil, shipFromAddress = nil, shipToAddress = nil, declaredValue = nil, currency = nil, packages = nil, items = nil, grossWeight = nil, pallets = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @ref1 = ref1
    @ref2 = ref2
    @shipDate = shipDate
    @shipMethod = shipMethod
    @specialServices = specialServices
    @billingOption = billingOption
    @billingAccount = billingAccount
    @labelType = labelType
    @shipFromAddress = shipFromAddress
    @shipToAddress = shipToAddress
    @declaredValue = declaredValue
    @currency = currency
    @packages = packages
    @items = items
    @grossWeight = grossWeight
    @pallets = pallets
  end
end

# {http://PurolatorServices.com/}ArrayOfRequestPackage
class ArrayOfRequestPackage < ::Array
end

# {http://PurolatorServices.com/}RequestPackage
#   packageID - SOAP::SOAPString
#   weightUOM - SOAP::SOAPString
#   weight - SOAP::SOAPDecimal
#   dimensionUOM - SOAP::SOAPString
#   dimL - SOAP::SOAPDecimal
#   dimW - SOAP::SOAPDecimal
#   dimH - SOAP::SOAPDecimal
class RequestPackage
  attr_accessor :packageID
  attr_accessor :weightUOM
  attr_accessor :weight
  attr_accessor :dimensionUOM
  attr_accessor :dimL
  attr_accessor :dimW
  attr_accessor :dimH

  def initialize(packageID = nil, weightUOM = nil, weight = nil, dimensionUOM = nil, dimL = nil, dimW = nil, dimH = nil)
    @packageID = packageID
    @weightUOM = weightUOM
    @weight = weight
    @dimensionUOM = dimensionUOM
    @dimL = dimL
    @dimW = dimW
    @dimH = dimH
  end
end

# {http://PurolatorServices.com/}ArrayOfRequestItem
class ArrayOfRequestItem < ::Array
end

# {http://PurolatorServices.com/}RequestItem
#   sKU - SOAP::SOAPString
#   customsDesc - SOAP::SOAPString
#   extendedDesc - SOAP::SOAPString
#   quantity - SOAP::SOAPInt
#   totalValue - SOAP::SOAPDecimal
#   currency - SOAP::SOAPString
#   countryOfOrigin - SOAP::SOAPString
#   hSCode - SOAP::SOAPString
#   nAFTAEligible - SOAP::SOAPBoolean
#   fDAFood - SOAP::SOAPBoolean
#   textile - SOAP::SOAPBoolean
class RequestItem
  attr_accessor :sKU
  attr_accessor :customsDesc
  attr_accessor :extendedDesc
  attr_accessor :quantity
  attr_accessor :totalValue
  attr_accessor :currency
  attr_accessor :countryOfOrigin
  attr_accessor :hSCode
  attr_accessor :nAFTAEligible
  attr_accessor :fDAFood
  attr_accessor :textile

  def initialize(sKU = nil, customsDesc = nil, extendedDesc = nil, quantity = nil, totalValue = nil, currency = nil, countryOfOrigin = nil, hSCode = nil, nAFTAEligible = nil, fDAFood = nil, textile = nil)
    @sKU = sKU
    @customsDesc = customsDesc
    @extendedDesc = extendedDesc
    @quantity = quantity
    @totalValue = totalValue
    @currency = currency
    @countryOfOrigin = countryOfOrigin
    @hSCode = hSCode
    @nAFTAEligible = nAFTAEligible
    @fDAFood = fDAFood
    @textile = textile
  end
end

# {http://PurolatorServices.com/}ArrayOfLTLPalletRequest
class ArrayOfLTLPalletRequest < ::Array
end

# {http://PurolatorServices.com/}LTLPalletRequest
#   palletNumber - SOAP::SOAPString
class LTLPalletRequest
  attr_accessor :palletNumber

  def initialize(palletNumber = nil)
    @palletNumber = palletNumber
  end
end

# {http://PurolatorServices.com/}ArrayOfRate
class ArrayOfRate < ::Array
end

# {http://PurolatorServices.com/}Rate
#   shipMethod - SOAP::SOAPString
#   estimatedDeliveryDate - SOAP::SOAPDateTime
#   estimatedRate - SOAP::SOAPDecimal
class Rate
  attr_accessor :shipMethod
  attr_accessor :estimatedDeliveryDate
  attr_accessor :estimatedRate

  def initialize(shipMethod = nil, estimatedDeliveryDate = nil, estimatedRate = nil)
    @shipMethod = shipMethod
    @estimatedDeliveryDate = estimatedDeliveryDate
    @estimatedRate = estimatedRate
  end
end

# {http://PurolatorServices.com/}ArrayOfLTLPalletResult
class ArrayOfLTLPalletResult < ::Array
end

# {http://PurolatorServices.com/}LTLPalletResult
#   palletNumber - SOAP::SOAPString
#   trackingNumber - SOAP::SOAPString
#   zPLCode - SOAP::SOAPString
#   labelImage - SOAP::SOAPString
class LTLPalletResult
  attr_accessor :palletNumber
  attr_accessor :trackingNumber
  attr_accessor :zPLCode
  attr_accessor :labelImage

  def initialize(palletNumber = nil, trackingNumber = nil, zPLCode = nil, labelImage = nil)
    @palletNumber = palletNumber
    @trackingNumber = trackingNumber
    @zPLCode = zPLCode
    @labelImage = labelImage
  end
end

# {http://PurolatorServices.com/}UpdateOrderRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   updateOrders - PurolatorWebServices::Soap::ArrayOfUpdateOrderInfo
class UpdateOrderRequest
  attr_accessor :credentials
  attr_accessor :updateOrders

  def initialize(credentials = nil, updateOrders = nil)
    @credentials = credentials
    @updateOrders = updateOrders
  end
end

# {http://PurolatorServices.com/}ArrayOfUpdateOrderInfo
class ArrayOfUpdateOrderInfo < ::Array
end

# {http://PurolatorServices.com/}UpdateOrderInfo
#   orderNumber - SOAP::SOAPString
#   updateType - SOAP::SOAPString
#   updateValue - SOAP::SOAPString
class UpdateOrderInfo
  attr_accessor :orderNumber
  attr_accessor :updateType
  attr_accessor :updateValue

  def initialize(orderNumber = nil, updateType = nil, updateValue = nil)
    @orderNumber = orderNumber
    @updateType = updateType
    @updateValue = updateValue
  end
end

# {http://PurolatorServices.com/}AddPackageRequestV3
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   labelType - SOAP::SOAPString
#   packages - PurolatorWebServices::Soap::ArrayOfRequestPackageV3
class AddPackageRequestV3
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :labelType
  attr_accessor :packages

  def initialize(credentials = nil, orderNumber = nil, labelType = nil, packages = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @labelType = labelType
    @packages = packages
  end
end

# {http://PurolatorServices.com/}AddPackageRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   labelType - SOAP::SOAPString
#   packages - PurolatorWebServices::Soap::ArrayOfRequestPackage
class AddPackageRequest
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :labelType
  attr_accessor :packages

  def initialize(credentials = nil, orderNumber = nil, labelType = nil, packages = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @labelType = labelType
    @packages = packages
  end
end

# {http://PurolatorServices.com/}AddItemRequestV3
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   items - PurolatorWebServices::Soap::ArrayOfRequestItemV3
class AddItemRequestV3
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :items

  def initialize(credentials = nil, orderNumber = nil, items = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @items = items
  end
end

# {http://PurolatorServices.com/}AddItemRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   items - PurolatorWebServices::Soap::ArrayOfRequestItem
class AddItemRequest
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :items

  def initialize(credentials = nil, orderNumber = nil, items = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @items = items
  end
end

# {http://PurolatorServices.com/}LabelRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
#   packageID - SOAP::SOAPString
#   trackingNumber - SOAP::SOAPString
#   labelType - SOAP::SOAPString
class LabelRequest
  attr_accessor :credentials
  attr_accessor :orderNumber
  attr_accessor :packageID
  attr_accessor :trackingNumber
  attr_accessor :labelType

  def initialize(credentials = nil, orderNumber = nil, packageID = nil, trackingNumber = nil, labelType = nil)
    @credentials = credentials
    @orderNumber = orderNumber
    @packageID = packageID
    @trackingNumber = trackingNumber
    @labelType = labelType
  end
end

# {http://PurolatorServices.com/}CloseoutRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   shipDate - SOAP::SOAPDateTime
#   parsNumber - SOAP::SOAPString
#   skidCount - SOAP::SOAPInt
#   packIDType - SOAP::SOAPString
#   packageIDs - PurolatorWebServices::Soap::ArrayOfString
class CloseoutRequest
  attr_accessor :credentials
  attr_accessor :shipDate
  attr_accessor :parsNumber
  attr_accessor :skidCount
  attr_accessor :packIDType
  attr_accessor :packageIDs

  def initialize(credentials = nil, shipDate = nil, parsNumber = nil, skidCount = nil, packIDType = nil, packageIDs = nil)
    @credentials = credentials
    @shipDate = shipDate
    @parsNumber = parsNumber
    @skidCount = skidCount
    @packIDType = packIDType
    @packageIDs = packageIDs
  end
end

# {http://PurolatorServices.com/}CloseoutRequestLTL
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   shipDate - SOAP::SOAPDateTime
#   parsNumber - SOAP::SOAPString
#   skidCount - SOAP::SOAPInt
#   packIDType - SOAP::SOAPString
#   packageIDs - PurolatorWebServices::Soap::ArrayOfString
#   lTLNumberType - SOAP::SOAPString
#   lTLNumbers - PurolatorWebServices::Soap::ArrayOfString
class CloseoutRequestLTL < CloseoutRequest
  attr_accessor :credentials
  attr_accessor :shipDate
  attr_accessor :parsNumber
  attr_accessor :skidCount
  attr_accessor :packIDType
  attr_accessor :packageIDs
  attr_accessor :lTLNumberType
  attr_accessor :lTLNumbers

  def initialize(credentials = nil, shipDate = nil, parsNumber = nil, skidCount = nil, packIDType = nil, packageIDs = nil, lTLNumberType = nil, lTLNumbers = nil)
    @credentials = credentials
    @shipDate = shipDate
    @parsNumber = parsNumber
    @skidCount = skidCount
    @packIDType = packIDType
    @packageIDs = packageIDs
    @lTLNumberType = lTLNumberType
    @lTLNumbers = lTLNumbers
  end
end

# {http://PurolatorServices.com/}PackageListRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   packageTrackingNumbers - PurolatorWebServices::Soap::ArrayOfString
class PackageListRequest
  attr_accessor :credentials
  attr_accessor :packageTrackingNumbers

  def initialize(credentials = nil, packageTrackingNumbers = nil)
    @credentials = credentials
    @packageTrackingNumbers = packageTrackingNumbers
  end
end

# {http://PurolatorServices.com/}OrderListRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumbers - PurolatorWebServices::Soap::ArrayOfString
class OrderListRequest
  attr_accessor :credentials
  attr_accessor :orderNumbers

  def initialize(credentials = nil, orderNumbers = nil)
    @credentials = credentials
    @orderNumbers = orderNumbers
  end
end

# {http://PurolatorServices.com/}ArrayOfCloseoutDocument
class ArrayOfCloseoutDocument < ::Array
end

# {http://PurolatorServices.com/}CloseoutDocument
#   documentType - SOAP::SOAPInt
#   data - SOAP::SOAPString
class CloseoutDocument
  attr_accessor :documentType
  attr_accessor :data

  def initialize(documentType = nil, data = nil)
    @documentType = documentType
    @data = data
  end
end

# {http://PurolatorServices.com/}ArrayOfCloseoutPackage
class ArrayOfCloseoutPackage < ::Array
end

# {http://PurolatorServices.com/}CloseoutPackage
#   trackingNumber - SOAP::SOAPString
#   rate - SOAP::SOAPDecimal
class CloseoutPackage
  attr_accessor :trackingNumber
  attr_accessor :rate

  def initialize(trackingNumber = nil, rate = nil)
    @trackingNumber = trackingNumber
    @rate = rate
  end
end

# {http://PurolatorServices.com/}CloseoutWithWeightRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   shipDate - SOAP::SOAPDateTime
#   parsNumber - SOAP::SOAPString
#   skidCount - SOAP::SOAPInt
#   packIDType - SOAP::SOAPString
#   packageWeights - PurolatorWebServices::Soap::ArrayOfPackageIDWeight
class CloseoutWithWeightRequest
  attr_accessor :credentials
  attr_accessor :shipDate
  attr_accessor :parsNumber
  attr_accessor :skidCount
  attr_accessor :packIDType
  attr_accessor :packageWeights

  def initialize(credentials = nil, shipDate = nil, parsNumber = nil, skidCount = nil, packIDType = nil, packageWeights = nil)
    @credentials = credentials
    @shipDate = shipDate
    @parsNumber = parsNumber
    @skidCount = skidCount
    @packIDType = packIDType
    @packageWeights = packageWeights
  end
end

# {http://PurolatorServices.com/}ArrayOfPackageIDWeight
class ArrayOfPackageIDWeight < ::Array
end

# {http://PurolatorServices.com/}PackageIDWeight
#   packageID - SOAP::SOAPString
#   weightUOM - SOAP::SOAPString
#   weight - SOAP::SOAPDecimal
class PackageIDWeight
  attr_accessor :packageID
  attr_accessor :weightUOM
  attr_accessor :weight

  def initialize(packageID = nil, weightUOM = nil, weight = nil)
    @packageID = packageID
    @weightUOM = weightUOM
    @weight = weight
  end
end

# {http://PurolatorServices.com/}LTLShipmentRequest
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   proNumber - SOAP::SOAPString
#   lTLShipmentNumber - SOAP::SOAPString
#   shipDate - SOAP::SOAPDateTime
#   shipToAddress - PurolatorWebServices::Soap::Address
#   grossWeight - SOAP::SOAPDecimal
#   orderNumbers - PurolatorWebServices::Soap::ArrayOfString
#   pallets - PurolatorWebServices::Soap::ArrayOfLTLPalletRequest
class LTLShipmentRequest
  attr_accessor :credentials
  attr_accessor :proNumber
  attr_accessor :lTLShipmentNumber
  attr_accessor :shipDate
  attr_accessor :shipToAddress
  attr_accessor :grossWeight
  attr_accessor :orderNumbers
  attr_accessor :pallets

  def initialize(credentials = nil, proNumber = nil, lTLShipmentNumber = nil, shipDate = nil, shipToAddress = nil, grossWeight = nil, orderNumbers = nil, pallets = nil)
    @credentials = credentials
    @proNumber = proNumber
    @lTLShipmentNumber = lTLShipmentNumber
    @shipDate = shipDate
    @shipToAddress = shipToAddress
    @grossWeight = grossWeight
    @orderNumbers = orderNumbers
    @pallets = pallets
  end
end

# {http://PurolatorServices.com/}GetRates
#   request - PurolatorWebServices::Soap::OrderRequestV3
class GetRates
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}GetRatesResponse
#   getRatesResult - PurolatorWebServices::Soap::OrderResultV3
class GetRatesResponse
  attr_accessor :getRatesResult

  def initialize(getRatesResult = nil)
    @getRatesResult = getRatesResult
  end
end

# {http://PurolatorServices.com/}AddOrder
#   request - PurolatorWebServices::Soap::OrderRequestV3
class AddOrder
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}AddOrderResponse
#   addOrderResult - PurolatorWebServices::Soap::OrderResultV3
class AddOrderResponse
  attr_accessor :addOrderResult

  def initialize(addOrderResult = nil)
    @addOrderResult = addOrderResult
  end
end

# {http://PurolatorServices.com/}AddLTLOrder
#   request - PurolatorWebServices::Soap::LTLOrderRequest
class AddLTLOrder
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}AddLTLOrderResponse
#   addLTLOrderResult - PurolatorWebServices::Soap::LTLOrderResult
class AddLTLOrderResponse
  attr_accessor :addLTLOrderResult

  def initialize(addLTLOrderResult = nil)
    @addLTLOrderResult = addLTLOrderResult
  end
end

# {http://PurolatorServices.com/}UpdateOrder
#   request - PurolatorWebServices::Soap::UpdateOrderRequest
class UpdateOrder
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}UpdateOrderResponse
#   updateOrderResult - PurolatorWebServices::Soap::UpdateOrderResult
class UpdateOrderResponse
  attr_accessor :updateOrderResult

  def initialize(updateOrderResult = nil)
    @updateOrderResult = updateOrderResult
  end
end

# {http://PurolatorServices.com/}AddPackage
#   request - PurolatorWebServices::Soap::AddPackageRequestV3
class AddPackage
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}AddPackageResponse
#   addPackageResult - PurolatorWebServices::Soap::AddPackageResult
class AddPackageResponse
  attr_accessor :addPackageResult

  def initialize(addPackageResult = nil)
    @addPackageResult = addPackageResult
  end
end

# {http://PurolatorServices.com/}AddItem
#   request - PurolatorWebServices::Soap::AddItemRequestV3
class AddItem
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}AddItemResponse
#   addItemResult - PurolatorWebServices::Soap::AddItemResult
class AddItemResponse
  attr_accessor :addItemResult

  def initialize(addItemResult = nil)
    @addItemResult = addItemResult
  end
end

# {http://PurolatorServices.com/}GetOrderStatus
#   credentials - PurolatorWebServices::Soap::CredentialInfo
#   orderNumber - SOAP::SOAPString
class GetOrderStatus
  attr_accessor :credentials
  attr_accessor :orderNumber

  def initialize(credentials = nil, orderNumber = nil)
    @credentials = credentials
    @orderNumber = orderNumber
  end
end

# {http://PurolatorServices.com/}GetOrderStatusResponse
#   getOrderStatusResult - PurolatorWebServices::Soap::OrderResultV3
class GetOrderStatusResponse
  attr_accessor :getOrderStatusResult

  def initialize(getOrderStatusResult = nil)
    @getOrderStatusResult = getOrderStatusResult
  end
end

# {http://PurolatorServices.com/}GetLabel
#   request - PurolatorWebServices::Soap::LabelRequest
class GetLabel
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}GetLabelResponse
#   getLabelResult - PurolatorWebServices::Soap::LabelResult
class GetLabelResponse
  attr_accessor :getLabelResult

  def initialize(getLabelResult = nil)
    @getLabelResult = getLabelResult
  end
end

# {http://PurolatorServices.com/}GetZPLInitializationImages
#   request - PurolatorWebServices::Soap::CredentialInfo
class GetZPLInitializationImages
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}GetZPLInitializationImagesResponse
#   getZPLInitializationImagesResult - PurolatorWebServices::Soap::ZPLInitializationResult
class GetZPLInitializationImagesResponse
  attr_accessor :getZPLInitializationImagesResult

  def initialize(getZPLInitializationImagesResult = nil)
    @getZPLInitializationImagesResult = getZPLInitializationImagesResult
  end
end

# {http://PurolatorServices.com/}ShipmentVerification
#   request - PurolatorWebServices::Soap::PackageListRequest
class ShipmentVerification
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}ShipmentVerificationResponse
#   shipmentVerificationResult - PurolatorWebServices::Soap::PackageListResult
class ShipmentVerificationResponse
  attr_accessor :shipmentVerificationResult

  def initialize(shipmentVerificationResult = nil)
    @shipmentVerificationResult = shipmentVerificationResult
  end
end

# {http://PurolatorServices.com/}VoidPackages
#   request - PurolatorWebServices::Soap::PackageListRequest
class VoidPackages
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}VoidPackagesResponse
#   voidPackagesResult - PurolatorWebServices::Soap::PackageListResult
class VoidPackagesResponse
  attr_accessor :voidPackagesResult

  def initialize(voidPackagesResult = nil)
    @voidPackagesResult = voidPackagesResult
  end
end

# {http://PurolatorServices.com/}VoidOrders
#   request - PurolatorWebServices::Soap::OrderListRequest
class VoidOrders
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}VoidOrdersResponse
#   voidOrdersResult - PurolatorWebServices::Soap::OrderListResult
class VoidOrdersResponse
  attr_accessor :voidOrdersResult

  def initialize(voidOrdersResult = nil)
    @voidOrdersResult = voidOrdersResult
  end
end

# {http://PurolatorServices.com/}Closeout
#   request - PurolatorWebServices::Soap::CloseoutRequest
class Closeout
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}CloseoutResponse
#   closeoutResult - PurolatorWebServices::Soap::CloseoutResult
class CloseoutResponse
  attr_accessor :closeoutResult

  def initialize(closeoutResult = nil)
    @closeoutResult = closeoutResult
  end
end

# {http://PurolatorServices.com/}CloseoutWithLTL
#   request - PurolatorWebServices::Soap::CloseoutRequestLTL
class CloseoutWithLTL
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}CloseoutWithLTLResponse
#   closeoutWithLTLResult - PurolatorWebServices::Soap::CloseoutResultLTL
class CloseoutWithLTLResponse
  attr_accessor :closeoutWithLTLResult

  def initialize(closeoutWithLTLResult = nil)
    @closeoutWithLTLResult = closeoutWithLTLResult
  end
end

# {http://PurolatorServices.com/}CloseoutUpdateWeight
#   request - PurolatorWebServices::Soap::CloseoutWithWeightRequest
class CloseoutUpdateWeight
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}CloseoutUpdateWeightResponse
#   closeoutUpdateWeightResult - PurolatorWebServices::Soap::CloseoutResult
class CloseoutUpdateWeightResponse
  attr_accessor :closeoutUpdateWeightResult

  def initialize(closeoutUpdateWeightResult = nil)
    @closeoutUpdateWeightResult = closeoutUpdateWeightResult
  end
end

# {http://PurolatorServices.com/}AddConsolidatedLTLShipment
#   request - PurolatorWebServices::Soap::LTLShipmentRequest
class AddConsolidatedLTLShipment
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://PurolatorServices.com/}AddConsolidatedLTLShipmentResponse
#   addConsolidatedLTLShipmentResult - PurolatorWebServices::Soap::LTLShipmentResult
class AddConsolidatedLTLShipmentResponse
  attr_accessor :addConsolidatedLTLShipmentResult

  def initialize(addConsolidatedLTLShipmentResult = nil)
    @addConsolidatedLTLShipmentResult = addConsolidatedLTLShipmentResult
  end
end


end; end
