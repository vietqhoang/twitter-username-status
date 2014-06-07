require 'mandrill'

class Email
    def self.send

        m = Mandrill::API.new
        message = {
            subject:    'Hey Viet! Twitter username "viet" is available now.',
            from_name:  'Your buddy',
            text:       'Get it!',
            to: [
                {
                    email:  'viet@tofugu.com',
                    name:   'Viet Hoang'
                }
            ],
            html: '<strong>Get it!</strong>',
            from_email: 'viet@tofugu.com'
        }

        sending = m.messages.send message
        puts sending

    end
end