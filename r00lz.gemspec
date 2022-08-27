# frozen_string_literal: true

require_relative 'lib/r00lz/version'

Gem::Specification.new do |spec|
  spec.name = 'r00lz'
  spec.version = R00lz::VERSION
  spec.authors = ['Henry Nawrocki']
  spec.email = ['hdev@sztanski.com']

  spec.summary = 'This is a GEM That emulates a part of the Rails Framework.'
  spec.description = 'This is a GEM That emulates a part of the Rails Framework.'
  spec.homepage = 'https://github.com/hsztan/r00lz'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://example.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hsztan/r00lz'
  spec.metadata['changelog_uri'] = 'https://github.com/hsztan/r00lz/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rack', '~> 2.2'
  spec.add_runtime_dependency 'rackup', '~> 0.1'
end
