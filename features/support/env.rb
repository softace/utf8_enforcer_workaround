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
