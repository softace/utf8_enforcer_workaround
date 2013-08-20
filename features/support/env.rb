#require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'aruba/cucumber'
require 'capybara/cucumber'

Before do
  @aruba_timeout_seconds = 120
end

#$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
#require 'utf8_enforcer_workaround'

#require 'rspec/expectations'
Capybara.register_driver(:rack_test_compliant) do |app|
  agent_string = 'Firefox'
  Capybara::RackTest::Driver.new(app, headers: {
                                   'User-Agent'      => agent_string, ##Rails 3.x
                                   'HTTP_USER_AGENT' => agent_string  ##Rails 4.x
                                 })
end

Capybara.register_driver(:rack_test_non_compliant) do |app|
  agent_string = 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1)'
  Capybara::RackTest::Driver.new(app, headers: {
                                   'User-Agent'      => agent_string, ##Rails 3.x
                                   'HTTP_USER_AGENT' => agent_string  ##Rails 4.x
                                 })
end
