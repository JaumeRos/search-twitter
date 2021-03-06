class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def twitter_client
    Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['consumer_key']
    config.consumer_secret = ENV['consumer_secret']
    config.access_token = ENV['access_token']
    config.access_token_secret = ENV['access_secret']
    end
  end
end
