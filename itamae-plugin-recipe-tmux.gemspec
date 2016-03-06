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

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  # NOTE: for vagrant dependency
  #   https://github.com/mitchellh/vagrant/blob/v1.8.1/vagrant.gemspec#L18
  spec.add_development_dependency "bundler", ">= 1.5.2", "<= 1.10.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "serverspec"
end
