module AutomationFramework
  class RemoteCapabilities

    def self.chrome_cap
      caps = Selenium::WebDriver::Remote::Capabilities.chrome
      caps['chromeOptions'] = {
          'profile' => BrowserProfiles.chrome_profile.as_json['zip'],
          'extensions' => BrowserProfiles.chrome_profile.as_json['extensions']
      }

      caps
    end

    def self.chrome_with_ad_block_cap
      caps = Selenium::WebDriver::Remote::Capabilities.chrome
      caps['chromeOptions'] = {
          'profile' => BrowserProfiles.chrome_with_ad_block_profile.as_json['zip'],
          'extensions' => BrowserProfiles.chrome_with_ad_block_profile.as_json['extensions']
      }

      caps
    end

    def self.firefox_cap
      Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_profile => BrowserProfiles.firefox_profile)
    end
  end #RemoteCapabilities
end #AutomtaionFramework