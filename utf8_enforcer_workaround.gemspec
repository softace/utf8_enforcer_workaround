# -*- encoding: utf-8 -*-
require File.expand_path('../lib/utf8_enforcer_workaround/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jarl Friis"]
  gem.email         = ["jarl@softace.dk"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "utf8_enforcer_workaround"
  gem.require_paths = ["lib"]
  gem.version       = Utf8EnforcerWorkaround::VERSION
end
