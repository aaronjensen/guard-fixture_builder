# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/fixture_builder/version'

Gem::Specification.new do |gem|
  gem.name          = "guard-fixture_builder"
  gem.version       = Guard::FixtureBuilderVersion::VERSION
  gem.authors       = ["Aaron Jensen"]
  gem.email         = ["aaronjensen@gmail.com"]
  gem.description   = %q{Guard for fixture_builder}
  gem.summary       = %q{Watches files and rebuilds your fixtures using fixture_builder}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "fixture_builder", ">=0.3.4"
  gem.add_runtime_dependency "guard", ">=1.2.0"
end
