# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deplist/version'

Gem::Specification.new do |spec|
  spec.name          = 'deplist'
  spec.version       = Deplist::VERSION
  spec.authors       = ['adham90']
  spec.email         = ['adham.eldeeb90@gmail.com']

  spec.summary       = 'Gem that install all system dependencies for your rails project.'
  spec.description   = 'Collects the project dependencies and operating system information, sends them to
the web service, and displays the required system libraries to
install all your dependencies.'
  spec.homepage      = 'https://github.com/adham90/deplist'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'httparty', '~> 0.14.0'
  spec.add_dependency 'json'
  spec.add_dependency 'colorize', '~> 0.7.7'
end
