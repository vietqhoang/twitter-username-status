require 'httpclient'
require 'json'
require_relative 'email'

class StatusCheck
    def self.username
        url             = 'http://api.httpstatus.io/?url=http://www.twitter.com/viet'
        response        = HTTPClient.get(url)
        json_response   = JSON.parse(response.body)
        status_code     = json_response['result']['status_code'].to_i
        
        status_code == 404 ? :available : :unavailable
    end

    def self.alert
        Email.send if username == :available
    end
end