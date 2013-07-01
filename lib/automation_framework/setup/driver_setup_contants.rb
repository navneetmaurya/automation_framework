require 'symboltable'

config_table = SymbolTable.new
config_table.enable_profile = false
config_table.browser_cap = ENV['BROWSER_CAP'] ? ENV['BROWSER_CAP'] : 'firefox_cap'
config_table.profile = ENV['PROFILE'] ? ENV['PROFILE'] : 'firefox_profile'
config_table.enable_proxy = ENV['ENABLE_PROXY'] ? ENV['ENABLE_PROXY'] : false
config_table.grid_url = ENV['GRID_URL'] ? ENV['GRID_URL'] : 'http://localhost:4444'
config_table.proxy_url = ENV['PROXY_URL'] ? ENV['PROXY_URL'] : 'my_proxy:8080'
config_table.secure_ssl = ENV['SECURE_SSL'] ? ENV['SECURE_SSL'] : false
config_table.untrust_ssl_cert = ENV['UNTRUST_SECURE_SSL'] ? ENV['UNTRUST_SECURE_SSL'] : false
config_table.test_host_name = ENV['TEST_HOST_NAME'] ? ENV['TEST_HOST_NAME'] : 'stage'
config_table.machine_name =   ENV['MACHINE_NAME'] ?   ENV['MACHINE_NAME'] :   'localhost'

CONFIG = config_table