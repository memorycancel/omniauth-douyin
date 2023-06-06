# DouYin OAuth2 Strategy for OmniAuth.

![image](./Logo.png)

Supports OAuth 2.0 server-side flow with Douyin API. 
Read the Douyin docs for more details: 
https://developer.open-douyin.com/docs/resource/zh-CN/dop/develop/sdk/web-app/web/permission/

PS: DouYin access_token valid for 15 days!

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-douyin'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Douyin` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/omniauth/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :douyin, ENV['DOUYIN_CLIENT_ID'], ENV['DOUYIN_CLIENT_SECRET']
end
```

### Custom Callback URL/Path

You can set a custom `callback_url` or `callback_path` option to override the default value.

## Auth Hash

Here's an example Auth Hash available in `request.env['omniauth.auth']`:

```
{
  provider: 'douyin',
  uid: '1234567',
  info: {
    display_name: 'ABCDEF'
  },
  credentials: {
    token: 'ABCDEF...', # OAuth 2.0 access_token, which you may wish to store
    expires_at: 1321747205, # when the access token expires (it always will)
    expires: true, # this will always be true
    refresh_token: 'ABCDEF', # it will be valid for 365 days
    refresh_token_expires_at: 1111111 # timestamp
  }
}
```

## Development

```
gem bump --file=lib/omniauth-douyin/version.rb --push --tag --release --pretend
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OmniAuth::Douyin project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/memorycancel/omniauth-douyin/blob/main/CODE_OF_CONDUCT.md)
