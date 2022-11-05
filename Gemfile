source 'https://rubygems.org'

# Specify your gem's dependencies in itamae-plugin-recipe-tmux.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.6.0")
  # net-ssh v7.0.0+ requires Ruby 2.6.0+
  gem "net-ssh", "< 7.0.0"
end
