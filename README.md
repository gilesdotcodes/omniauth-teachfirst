# Omniauth::Teachfirst

Teach First OAuth2 Strategy.

You will need to contact Teach First to obtain the appropriate API key and secret.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-teachfirst'
```

Then execute:

    $ bundle install


Or install it yourself as:

    $ gem install omniauth-teachfirst

## Usage

With Devise, add the following to your devise config:

    config.omniauth :teachfirst, ENV['TEACHFIRST_CLIENT_ID'], ENV['TEACHFIRST_CLIENT_SECRET']


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
