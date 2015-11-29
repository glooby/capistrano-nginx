# Capistrano::nginx

[![Gem Version](https://badge.fury.io/rb/capistrano-php-fpm.svg)](https://badge.fury.io/rb/capistrano-php-fpm)

nginx support for Capistrano 3.x

Makes it possible to reload/restart nginx during deploy

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0.0'
gem 'capistrano-nginx'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-nginx

## Usage

Require in Capfile to use the default task:

```ruby
require 'capistrano/nginx'
```

Configure in deploy.rb to execute one of the tasks:

```ruby
after 'deploy:published', 'nginx:reload'
after 'deploy:published', 'nginx:restart'
```

You can also run it in isolation: `cap production nginx:reload` or `cap production nginx:restart`

Configurable options:

```ruby
set :nginx_reload_roles, :all
set :nginx_reload_command, '/etc/init.d/nginx reload'
set :nginx_restart_roles, :all
set :nginx_restart_command, '/etc/init.d/nginx restart'
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
