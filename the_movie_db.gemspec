# frozen_string_literal: true

require_relative "lib/the_movie_db/version"

Gem::Specification.new do |spec|
  spec.name = "the_movie_db"
  spec.version = TheMovieDb::VERSION
  spec.authors = ["Enow Mbi"]
  spec.email = ["benowmbi@yahoo.com"]

  spec.summary = "The Movie DB SDK in Ruby"
  spec.description = spec.summary
  spec.homepage = "https://github.com/enowmbi/the_movie_db_ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.10.2"
  spec.add_dependency "faraday_middleware", "~>1.2"
  spec.add_development_dependency "pry"
end
