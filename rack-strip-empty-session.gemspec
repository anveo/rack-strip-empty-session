# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack-strip-empty-session/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-strip-empty-session"
  spec.version       = Rack::StripEmptySession::VERSION
  spec.authors       = ["Brian Racer"]
  spec.email         = ["bracer@gmail.com"]
  spec.summary       = %q{Rack middleware which strips the Rails session cookie if no custom data has been added to that session}
  spec.homepage      = "https://github.com/anveo/rack-strip-empty-session"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
