lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coolview/version"

Gem::Specification.new do |spec|
  spec.name          = "coolview"
  spec.version       = Coolview::VERSION
  spec.authors       = ["elibiz443"]
  spec.email         = ["elibiz443@gmail.com"]

  spec.summary       = %q{Coolview is a front-end template.}
  spec.description   = %q{This is a front-end template for phone and web apps. Creates basic web & admin-panel.}
  spec.homepage      = "https://github.com/elibiz443/coolview"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "RubyGems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elibiz443/coolview"
  spec.metadata["changelog_uri"] = "https://github.com/elibiz443/coolview/changelogs"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  
  spec.add_dependency "minitest", "~> 5.0"
end
