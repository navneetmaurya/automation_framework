require '../spec_helper'

describe RemoteCapabilities do
  context 'has Selenium::WebDriver::Remote::Capabilities' do
    specify 'for chrome' do
      chrome=RemoteCapabilities.chrome_cap
      chrome.should be_a(Selenium::WebDriver::Remote::Capabilities)
      chrome['chromeOptions']['profile'].should_not be_nil
      chrome['chromeOptions']['extensions'].should == []
    end
    specify 'for ad_block chrome' do
      chrome=RemoteCapabilities.chrome_with_ad_block_cap
      chrome.should be_a(Selenium::WebDriver::Remote::Capabilities)
      chrome['chromeOptions']['profile'].should_not be_nil
      chrome['chromeOptions']['extensions'].should_not == []
    end
    specify 'for firefox' do
      #stub_const('RUBY_PLATFORM','mswin')
      firefox=RemoteCapabilities.firefox_cap
      firefox.should be_a(Selenium::WebDriver::Remote::Capabilities)
      firefox.native_events.should be_false
      firefox.firefox_profile.native_events?.should be_false
    end
  end
end