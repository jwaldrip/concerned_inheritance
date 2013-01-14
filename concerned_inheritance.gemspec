# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'concerned_inheritance/version'

Gem::Specification.new do |gem|
  gem.name          = "concerned_inheritance"
  gem.version       = ConcernedInheritance::VERSION
  gem.authors       = ["Jason Waldrip"]
  gem.email         = ["jason@waldrip.net"]
  gem.description   = %q{Place inheritance callbacks within your concerns.}
  gem.summary       = %q{ConcernedInheritance, allows you to place inheritance callbacks within your concerns.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activesupport'

  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'rb-fsevent'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'terminal-notifier-guard'

end
