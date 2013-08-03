require 'spec_helper'

describe AutomationFramework::CreateDriver::LaunchBrowser do
  it "should navigate to define url" do
    launch_browser('/google.co.in')
    driver.current_url.should == "http://www.google.co.in/"
  end
end