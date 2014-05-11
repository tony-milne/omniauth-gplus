# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/gplus/version'

Gem::Specification.new do |s|
  s.name          = 'omniauth-gplus'
  s.version       = OmniAuth::GPlus::VERSION
  s.authors       = %w(Kurtis Rainbolt-Greene Sam Dunne)
  s.email         = %w(me@kurtisrainboltgreene.name sam@sam-dunne.com)
  s.summary       = 'A Google+ OAuth2 solution for Omniauth'
  s.description   = s.summary
  s.homepage      = 'http://samdunne.github.com/omniauth-gplus'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'kramdown'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'rubocop'

  if RUBY_PLATFORM == 'rbx'
    s.add_development_dependency 'racc'
    s.add_development_dependency 'rubinius-coverage', github: 'rubinius/rubinius-coverage'
    s.add_development_dependency 'rubysl'
  end
end
