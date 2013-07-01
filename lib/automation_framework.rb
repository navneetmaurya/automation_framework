require 'selenium-webdriver'
require 'yaml'
require 'automation_framework/version'
require 'automation_framework/setup/contants'


include AutomationFramework

require 'automation_framework/browser_config/browser_selector'
require 'automation_framework/setup/driver_setup_contants'

require 'automation_framework/browser_config/browser_profiles'
require 'automation_framework/browser_config/remote_capabilities'

require 'automation_framework/error_handler/response_validator'

require 'automation_framework/grid_config/grid_settings'

require 'automation_framework/rake/rspec'
require 'automation_framework/rake/cucumber'

require 'automation_framework/rspec_config/rspec_config'
require 'automation_framework/rspec_config/cucumber_config'

require 'automation_framework/web_driver/create_driver'

include AutomationFramework::CreateDriver
