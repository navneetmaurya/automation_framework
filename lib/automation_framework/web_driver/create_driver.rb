module AutomationFramework
  module CreateDriver
    class CreateDriverError < StandardError; end

    def driver
      @driver
    end

    def create_driver
      if profiles
        @driver = Selenium::WebDriver.for(:remote, :url => CONFIG.grid_url, :capabilities => RemoteCapabilities.send(CONFIG.browser_cap),
                                          :profile => profiles)
      else
        @driver = Selenium::WebDriver.for(:remote, :url => CONFIG.grid_url, :capabilities => RemoteCapabilities.send(CONFIG.browser_cap))
      end

      if proxy_enabled? && !profiles
        @driver = Selenium::WebDriver.for(:remote, :url => CONFIG.grid_url, :capabilities => RemoteCapabilities.send(CONFIG.browser_cap),
                                          :profile => profiles, :http_client => proxy_url)

      elsif proxy_enabled? && profiles
        @driver = Selenium::WebDriver.for(:remote, :url => CONFIG.grid_url, :capabilities => RemoteCapabilities.send(CONFIG.browser_cap),
                                          :http_client => proxy_url)
      end
    end

    def profiles
      if CONFIG.enable_profile
        CONFIG.profile
      else
        false
      end
    end

    def default_http
      client = Selenium::WebDriver::Remote::Http::Default.new
      client.timeout=300
      client
    end

    def proxy_url
      client = Selenium::WebDriver::Remote::Http::Default.new
      client.timeout=300
      client.proxy = Selenium::Proxy.new(:http => CONFIG.proxy_url)
    end

    def proxy_enabled?
      CONFIG.enable_proxy
    end
  end #CreateDriver
end #AutomationFramework