require 'spec_helper'

describe BrowserProfiles do
  it "has a ad block BrowserProfiles::Chrome" do
    chrome=BrowserProfiles.chrome_with_ad_block_profile
    chrome.should be_a(Selenium::WebDriver::Chrome::Profile)
    chrome.instance_variable_get(:@extensions)[0].should include("AdBlock_v2.5.61.crx")
    chrome.instance_variable_get(:@prefs)['download'].should be_a(Hash)
    chrome.instance_variable_get(:@prefs)['download']['prompt_for_download'].should be_false
    chrome.instance_variable_get(:@prefs)['download']['default_directory'].should == "/tmp_downloads"
  end

  it "has a BrowserProfiles::Chrome" do
    chrome=BrowserProfiles.chrome_profile
    chrome.should be_a(Selenium::WebDriver::Chrome::Profile)
    chrome.instance_variable_get(:@prefs)['download'].should be_a(Hash)
    chrome.instance_variable_get(:@prefs)['download']['prompt_for_download'].should be_false
    chrome.instance_variable_get(:@prefs)['download']['default_directory'].should == "/tmp_downloads"
  end

  it "has a BrowserProfiles::Firefox" do
    firefox=BrowserProfiles.firefox_profile(false)
    firefox.should be_a(Selenium::WebDriver::Firefox::Profile)
    firefox.native_events?.should be_false
    firefox.instance_variable_get(:@extensions).has_key?('firebug-1.10.2')
    firefox.instance_variable_get(:@additional_prefs)['extensions.firebug.currentVersion'].should == '1.10.2'
  end
end