# Twitter Username Status

Keeps an eye when a Twitter username is available. When available, sends an email alert. For my personal use.

## Required
* Heroku (Free dyno)
* Mandrill (Free Plan via Heroku Add-ons)
* Heroku Scheduler (Free plan via Heroku Add-ons)

## Installation
1. Clone repo
2. Create Heroku app and associate to repo
3. Add Mandrill free plan add-on
4. Add Heroku Scheduler add-on
5. Add environmental variables to Heroku app
    1. `EMAIL` Your email address that'll receive the alert 
    2. `NAME` The name to be used as email sender's name
    3. `TWITTER_USERNAME` Twitter username to keep watch
6. Push app to Heroku