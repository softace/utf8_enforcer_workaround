PROJECT_ROOT     = File.expand_path(File.join(File.dirname(__FILE__), '..', '..')).freeze
APP_NAME         = 'testapp'.freeze
BUNDLE_ENV_VARS = %w(RUBYOPT BUNDLE_PATH BUNDLE_BIN_PATH BUNDLE_GEMFILE)
ORIGINAL_BUNDLE_VARS = Hash[ENV.select{ |key,value| BUNDLE_ENV_VARS.include?(key) }]

ENV['RAILS_ENV'] = 'test'

Before do
  ENV['BUNDLE_GEMFILE'] = File.join(Dir.pwd, ENV['BUNDLE_GEMFILE']) unless ENV['BUNDLE_GEMFILE'].start_with?(Dir.pwd)
  @framework_version = nil
end

After do
  ORIGINAL_BUNDLE_VARS.each_pair do |key, value|
    ENV[key] = value
  end
end

When /^I reset Bundler environment variable$/ do
  BUNDLE_ENV_VARS.each do |key|
    ENV[key] = nil
  end
end

module RailsCommandHelpers
  def framework_version?(version_string)
    framework_version =~ /^#{version_string}/
  end

  def framework_version
    @framework_version ||= `rails -v`[/^Rails (.+)$/, 1]
  end

  def new_application_command(name)
    case framework_version
    when /^2/ then "rails #{name}"
    when /^3/ then "rails new #{name} --skip-sprockets --skip-javascript"
    when /^4/ then "rails new #{name} --skip-sprockets --skip-javascript"
    when /^5/ then "rails new #{name} --skip-sprockets --skip-javascript"
    else raise "No support for rails #{framework_version}"
    end
  end

  def generator_command
    case framework_version
    when /^2/ then "script/generate"
    when /^3/ then "script/rails generate"
    when /^4/ then "rails generate"
    when /^5/ then "rails generate"
    else raise "No support for rails #{framework_version}"
    end
  end

  def runner_command
    case framework_version
    when /^2/ then "script/runner"
    when /^3/ then "script/rails runner"
    when /^4/ then "rails runner"
    when /^5/ then "rails runner"
    else raise "No support for rails #{framework_version}"
    end
  end
end

World(RailsCommandHelpers)
