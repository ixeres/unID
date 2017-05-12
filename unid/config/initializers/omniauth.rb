Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :tumblr, ENV['TUMBLR_KEY'], ENV['TUMBLR_SECRET']
  provider :twitter, ENV["twitter_consumer_key"], ENV["twitter_consumer_secret"]
  {
    :authorize_params => {
      :force_login => 'true',
      :use_authorize => 'true'
    }
  }
end


# https://www.googleapis.com/youtube/v3/channels?part=id&mine=true
