require '../spec_helper'

describe AutomationFramework::CreateDriver do
  it 'should return true if profile is disabled' do
    driver = AutomationFramework::CreateDriver.create_driver
    pp driver
  end
end