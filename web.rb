require 'sinatra'
require_relative 'lib/status_check'

get '/' do
    "Username \"#{ENV['TWITTER_USERNAME']}\" is #{StatusCheck.username}"
end