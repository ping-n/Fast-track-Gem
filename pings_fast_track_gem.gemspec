require_relative 'lib/pings_fast_track_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "pings_fast_track_gem"
  spec.version       = PingsFastTrackGem::VERSION
  spec.authors       = ["PING NGE"]
  spec.email         = ["ping.nge@hotmail.com"]

  spec.summary       = "FastTrack gem"
  spec.description   = "A rostering app"
  spec.homepage      = "https://github.com/ping-n/Fast-track-Gem.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'colorize', '~> 0.8.1'
  spec.add_dependency 'tty-prompt', '~> 0.21.0'
  spec.add_dependency 'artii', '~> 2.1', '>= 2.1.2'
end