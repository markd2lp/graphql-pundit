# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/pundit/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql-pundit'
  spec.version       = GraphQL::Pundit::VERSION
  spec.authors       = ['Tom Gehrke']
  spec.email         = ['phyrog@cognitive-coding.com']

  spec.summary       = 'Pundit authorization support for graphql'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/phyrog/graphql-pundit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'graphql', '~> 1.6.4'
  spec.add_dependency 'pundit', '~> 1.1.0'

  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end