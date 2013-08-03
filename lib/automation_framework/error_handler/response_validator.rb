module AutomationFramework
  class ResponseValidator
    class ResponseValidatorError < StandardError; end

    def self.check_url?(args)
      url=''
      url=nil if (args.length==0)
      url=args[0] if (args.length==1)

      if url.nil?
        raise(ResponseValidatorError, 'Please provide url, url is nil at this point')
      else
        true
      end
    end

    def self.check_response?(url)
      true
    end

    def self.check_service?(url)
      true
    end
  end #ResponseValidator
end #AutomationFramework