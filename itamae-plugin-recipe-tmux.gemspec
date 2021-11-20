# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/tmux/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-tmux"
  spec.version       = Itamae::Plugin::Recipe::Tmux::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]

  spec.summary       = %q{Itamae plugin to install tmux without any packages}
  spec.description   = %q{Itamae plugin to install tmux without any packages}
  spec.homepage      = "https://github.com/sue445/itamae-plugin-recipe-tmux"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "docker-api"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "serverspec"
end
