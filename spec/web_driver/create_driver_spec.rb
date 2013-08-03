require 'spec_helper'

describe AutomationFramework::CreateDriver do
  it 'should return true if profile is disabled' do
    driver = AutomationFramework::CreateDriver.create_driver
    driver.kind_of?(Selenium::WebDriver::Driver).should be_true
  end
end