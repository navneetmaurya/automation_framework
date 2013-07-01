module AutomationFramework
  class BrowserProfiles

    def self.firefox_profile(uses_native_events=false)
      profile = Selenium::WebDriver::Firefox::Profile.new
      profile.secure_ssl=CONFIG.secure_ssl
      profile.assume_untrusted_certificate_issuer=CONFIG.untrust_ssl_cert
      profile.add_extension(File.dirname(__FILE__) + '/extensions/firebug-1.10.2.xpi')
      profile['extensions.firebug.currentVersion'] = '1.10.2' #Load without start page
      profile.native_events = uses_native_events
      profile
    end

    def self.firefox_with_proxy_profile(uses_native_events=false)
      profile = Selenium::WebDriver::Firefox::Profile.new
      profile.secure_ssl=CONFIG.secure_ssl
      profile.assume_untrusted_certificate_issuer=CONFIG.untrust_ssl_cert
      profile.add_extension(File.dirname(__FILE__) + '/extensions/firebug-1.10.2.xpi')
      profile['extensions.firebug.currentVersion'] = '1.10.2' #Load without start page
      profile.native_events = uses_native_events

    end

    def self.chrome_profile
      profile = Selenium::WebDriver::Chrome::Profile.new
      profile['download.prompt_for_download'] = false
      profile['download.default_directory'] = File.join("#{ENV['DOWNLOADS_DIR']}" || "#{REPO_ROOT}", 'tmp_downloads')
      profile
    end

    def self.chrome_with_ad_block_profile
      profile = Selenium::WebDriver::Chrome::Profile.new
      profile['download.prompt_for_download'] = false
      profile['download.default_directory'] = File.join("#{ENV["DOWNLOADS_DIR"]}" || "#{REPO_ROOT}", 'tmp_downloads')
      profile.add_extension(File.dirname(__FILE__) + '/extensions/AdBlock_v2.5.61.crx')
      profile
    end
  end
end