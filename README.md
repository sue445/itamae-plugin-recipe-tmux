# Itamae::Plugin::Recipe::Tmux

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to install [tmux](https://tmux.github.io/) without any packages

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-tmux.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-tmux)
[![Dependency Status](https://gemnasium.com/sue445/itamae-plugin-recipe-tmux.svg)](https://gemnasium.com/sue445/itamae-plugin-recipe-tmux)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-tmux'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-tmux

## Usage
### Recipe
```ruby
# recipe.rb

# itamae v1.5.2 or later
include_recipe "tmux"

# older
include_recipe "tmux::default"
```

### Node
```yml
# node.yml
tmux:
  # tmux prefix (default: /home/<username>/local)
  prefix: /usr/local

  # install version (default: 2.1)
  version: 2.1

libevent:
  # install version (default: 2.0.22)
  version: 2.0.22
  
ncurses:
  # install version (default: 6.0)
  version: 6.0    
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/itamae-plugin-recipe-tmux.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

