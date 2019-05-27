Rails API with Facebook login and fileupload.

You should create the following file:

config/initializers/koala.rb

Koala.configure do |config|
    # config.access_token = MY_TOKEN
    # config.app_access_token = MY_APP_ACCESS_TOKEN
    config.app_id = "FACEBOOK APP ID THERE"
    config.app_secret = "FACEBOOK APP SECRET THERE"
    # See Koala::Configuration for more options, including details on how to send requests through
    # your own proxy servers.
end

For more info about it check Koala gem website