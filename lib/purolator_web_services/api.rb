module PurolatorWebServices
  class Api
    include PurolatorWebServices::Definitions

    class ServiceException < RuntimeError
      attr_accessor :details

      def to_s
        [ super, details ].compact * ":\n"
      end
    end

    attr_accessor :environment, :port
    attr_reader :wiredump

    def initialize(environment)
      self.environment = environment
      self.port = ShippingServicesSoap.new(service_url)
      init_service_methods
    end

    def service_url
      environment.to_sym == :production ?
          'https://www.purolatorshipping.com/WebServices/ShippingServices.asmx' :
          'http://support.pclusa.com/Sandbox/WebServices/ShippingServices.asmx'
    end

    def issue_request(service_method_name, *args)
      port.wiredump_dev = StringIO.new(@wiredump = "")
      response = port.send(service_method_name, *args)
      extract_result(service_method_name, response)
    rescue SOAP::FaultError => soap_fault
      err = ServiceException.new(soap_fault.message)
      err.details = soap_fault.faultstring
      err.set_backtrace([ "#{__FILE__}:#{__LINE__ + 1}", *soap_fault.backtrace ])
      raise err
    end

    protected
      RESPONSE_MESSAGE_SEVERITIES = { 0 => "Success", 1 => "Warning", 2 => "Error" }

      def init_service_methods
        port.class::Methods.each do |service_def|
          service_method_name = service_def[1]
          define_singleton_method(service_method_name) do |*args|
            issue_request(service_method_name, *args)
          end
        end
      end

      def extract_result(service_method_name, response)
        result = response.send("#{service_method_name}Result")
        return result if (result.status == 0)

        err = ServiceException.new("Error issuing Purolator request '#{service_method_name}'")
        err.details = result.messages.map do |msg|
          "#{RESPONSE_MESSAGE_SEVERITIES[msg.severity]}(#{msg.number}): #{msg.message}"
        end * "\n"
        raise err
      end
  end
end