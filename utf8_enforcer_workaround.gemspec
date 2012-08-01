# -*- ruby -*-
# $LOAD_PATH.push File.expand_path("../lib", __FILE__)
require File.expand_path('../lib/utf8_enforcer_workaround/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jarl Friis"]
  gem.email         = ["jarl@softace.dk"]
  gem.description   = %q{Make utf8_enforcer to be applied only for non-standards-complying browsers.}
  gem.summary       = %q{Make utf8_enforcer to be applied only for non-standards-complying browsers.}
  gem.homepage      = "https://github.com/softace/utf8_enforcer_workaround"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "utf8_enforcer_workaround"
  gem.require_paths = ["lib"]
  gem.version       = Utf8EnforcerWorkaround::VERSION
  gem.platform      = Gem::Platform::RUBY

  gem.rubyforge_project = "utf8_enforcer_workaround"

  gem.add_dependency('rails', '>= 3.0.0')
  gem.add_dependency('browser')

  gem.add_development_dependency('bundler')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('appraisal', '~> 0.4')
  gem.add_development_dependency('cucumber', '~> 1.2')
  gem.add_development_dependency('sqlite3', '~> 1.3')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('capybara')
  gem.add_development_dependency('launchy')
  gem.add_development_dependency('debugger')
end
