# frozen_string_literal: true

require_relative 'lib/omniauth-douyin/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-douyin'
  spec.version       = Omniauth::Douyin::VERSION
  spec.authors       = ['memorycancel']
  spec.email         = ['memorycancel@gmail.com']

  spec.summary       = 'DouYin OAuth2 Strategy for OmniAuth'
  spec.homepage      = 'https://github.com/memorycancel/omniauth-douyin'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/memorycancel/omniauth-douyin'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'omniauth', '>= 1.9', '< 3'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
end
