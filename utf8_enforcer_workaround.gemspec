# -*- ruby -*-
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

  gem.rubyforge_project = "utf8_enforcer_workaround"

  gem.add_dependency('rails', '>= 3.0.0')

  gem.add_development_dependency('appraisal', '~> 0.4')
  gem.add_development_dependency('cucumber', '~> 1.2')
end
