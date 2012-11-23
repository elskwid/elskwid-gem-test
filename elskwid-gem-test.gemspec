# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elskwid-gem-test/version'

Gem::Specification.new do |gem|
  gem.name          = "elskwid-gem-test"
  gem.version       = Elskwid::Gem::Test::VERSION
  gem.authors       = ["Don Morrison"]
  gem.email         = ["elskwid@gmail.com"]
  gem.description   = %q{Gem to see if I can cut gems with dependencies}
  gem.summary       = %q{Gem to see if I can cut gems with dependencies}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "postmark", "~> 0.9.15"
end
