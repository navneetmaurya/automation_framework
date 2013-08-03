require 'spec_helper'

describe 'SymbolTable' do
  it 'should create symbol table' do
    CONFIG.profile.should == 'firefox_profile'
    CONFIG.enable_proxy == false
    CONFIG.grid_url == 'http://localhost:4444'
    CONFIG.proxy_based_url == 'my_proxy:8080'
    CONFIG.secure_ssl == false
    CONFIG.untrust_ssl_cert == false
    CONFIG.test_host_name == 'stage'
    CONFIG.machine_name ==   'localhost'
  end
end
