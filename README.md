# inspiry

Posts one inspirational quote to slack channel every day.

### Setup Instructions:
Only two things to do really,

1. Deploy your app to heroku.
2. Create an incoming webhook with the channel of your choice (ignore the username and icon, we'll take care of it here) and save that token in environment variables as `SLACK_WEBHOOK`

(optional) If you'd like to have a custom image as icon of the message, add it to env var as `IMAGE_URL`. The current default is 

![image](https://libcom.org/files/images/library/fist.jpg)
 
