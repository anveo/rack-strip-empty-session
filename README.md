# Rack::StripEmptySession

Rack middleware which causes Rails to not send a session cookie if no
custom data has been added to the session.

Useful when putting your app behind a Varnish cache.

## Usage

```ruby
gem 'rack-strip-empty-session'
```

#### Rails

```ruby
module MyApp
  class Application < Rails::Application
    # ...
    config.middleware.insert_before "ActionDispatch::Cookies", "Rack::StripEmptySessions", :key => "your_secret_key", :path => "/", :httponly => true
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
