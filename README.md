# Twitter Username Status

Keeps an eye when a Twitter username is available. When available, sends an email alert. For my personal use.

## Required
* Heroku (Free dyno)
* Mandrill (Free Plan via Heroku Add-ons)
* Heroku Scheduler (Free plan via Heroku Add-ons)
* Twitter API keys (https://dev.twitter.com/)

## Installation
1. Clone repo
2. Create Heroku app and associate to repo
3. Add Mandrill free plan add-on
4. Add Heroku Scheduler add-on
5. Add environmental variables to Heroku app
    1. `EMAIL` Your email address that'll receive the alert 
    2. `TWITTER_USERNAME` Twitter username to keep watch
    3. `TWITTER_API_KEY` Your Twitter application API key
    4. `TWITTER_API_SECRET` Your Twitter application API secret key

6. Push app to Heroku
7. Add `rake check_username_status` to Heroku Scheduler. Choose whatever frequency you want.
8. Scale web dyno to 0 in to order avoid charges for using the one-off dyno from Heroku Scheduler.