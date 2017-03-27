# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_model/datastore/version'

Gem::Specification.new do |gem|
  gem.name          = 'activemodel-datastore'
  gem.version       = ActiveModel::Datastore::VERSION
  gem.authors       = ['Bryce McLean']
  gem.email         = ['mclean.bryce@gmail.com']

  gem.summary       = 'Cloud Datastore integration with Active Model'
  gem.description   = 'Makes the google-cloud-datastore gem compliant with active_model conventions and compatible with your Rails 5+ applications.'
  gem.homepage      = 'https://github.com/Agrimatics/activemodel-datastore'
  gem.license       = 'MIT'

  gem.required_ruby_version = '>= 2.3.0'

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  # spec.files         = Dir['MIT-LICENSE', 'README.md', 'lib/**/*']

  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'activemodel', '~> 5.0'
  gem.add_runtime_dependency 'activesupport', '~> 5.0'
  gem.add_runtime_dependency 'google-cloud-datastore', '~> 0.24'

  gem.add_development_dependency 'minitest', '~> 5.10'
  gem.add_development_dependency 'rubocop', '<= 0.47.1'
end
