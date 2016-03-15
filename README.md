# WebPush

A library for Ruby for sending push notifications to browsers. Currently supports Firefox 44+ and Chrome 42+. Sending notifications with a data payload is only currently supported by Firefox (see [this bug for the status in Chromium](https://code.google.com/p/chromium/issues/detail?id=486040)).

This version of WebPush is based on the [Node.js Web Push library](https://github.com/marco-c/web-push).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'web_push'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install web_push
```

## Usage

### GCM API Key

If you want to use this library with Chrome, you will need a [Google Cloud Messaging](https://developers.google.com/cloud-messaging/) API Key. You can get this from the [Google Developer Console](https://developers.google.com/cloud-messaging/).

Set the GCM API Key like this:

```ruby
WebPush.configure do |config|
  config.gcm_api_key = YOUR_GCM_API_KEY
end
```

### Send Notification

To send a simple notification you only need an endpoint from a Service Worker pushManager subscription. Then you can call:

```ruby
WebPush.send_notification(endpoint)
```

#### TTL

You can set a TTL to describe how long a push message will be retained by the push service. The TTL is 4 weeks by default.

```ruby
WebPush.send_notification(endpoint, ttl: 3600)
```

#### Sending data

To send data with a push message you need to encrypt the data. To do so you will need a key from the Service Worker pushManager subscription and some data in JSON format.

```ruby
WebPush.send_notification(endpoint, key: KEY, data: DATA)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/philnash/web_push_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

