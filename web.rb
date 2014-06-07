require 'sinatra'
require_relative 'lib/status_check'

get '/' do
    "Username is #{StatusCheck.username}"
end