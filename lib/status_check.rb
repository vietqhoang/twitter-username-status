require 'json'
require 'twitter'
require_relative 'email'

class StatusCheck
    def self.username
        begin
            client = Twitter::REST::Client.new do |config|
                config.consumer_key    = ENV['TWITTER_API_KEY']
                config.consumer_secret = ENV['TWITTER_API_SECRET']
            end

            client.user(ENV['TWITTER_USERNAME'])
        rescue Twitter::Error::NotFound
            :unavailable
        else
            :unavailable
        end
    end

    def self.alert
        Email.send if username == :available
    end
end