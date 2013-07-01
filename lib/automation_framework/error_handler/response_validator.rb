module AutomationFramework
  class ResponseValidator
    class ResponseValidatorError < StandardError; end

    def check_url?(args)
      url=''
      url=nil if (args.length==0)
      url=args[0] if (args.length==1)

      if url.nil?
        raise(ResponseValidatorError, 'Please provide url, url is nil at this point')
      else
        true
      end
    end

    def check_response?(url)

    end

    def check_service?(url)

    end
  end
end