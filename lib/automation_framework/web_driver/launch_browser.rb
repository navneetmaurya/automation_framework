module AutomationFramework
  module CreateDriver
    module LaunchBrowser
      class LaunchBrowserError < StandardError; end

      def launch_browser(*args)
        url = create_uri(*args)
        validated_url = validate_and_return_url(url)
        driver.navigate.to(validated_url)
      end

      def create_uri(path=nil, query=nil, use_https=false)
        test_host_name = CONFIG.test_host_name

        uri_host = test_host_name == CONFIG.machine_name
        uri = URI('')
        uri.scheme = use_https ? 'https' : 'http'
        uri.host = uri_host
        uri.port = 8080 if test_host_name == 'development'

        uri.path = path if path
        uri.query = query if query

        uri.to_s
      end

      def validate_and_return_url(url)
        if check_url?(url) && check_response?(url) && check_service?(url)
          url
        else
          raise(LaunchBrowserError, 'Unable to create url from the provided information')
        end
      end
    end
  end
end