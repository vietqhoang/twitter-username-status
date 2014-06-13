require 'mandrill'

class Email
    def self.send

        m = Mandrill::API.new
        message = {
            subject:    "Twitter username \"#{ENV['TWITTER_USERNAME']}\" is available now.",
            from_name:  'Your buddy',
            text:       'Get it!',
            to: [
                {
                    email:  ENV['EMAIL'],
                    name:   'Twitter Username Available'
                }
            ],
            html:       '<strong>Get it!</strong>',
            from_email: ENV['EMAIL']
        }

        sending = m.messages.send message
        puts sending

    end
end