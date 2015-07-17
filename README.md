[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## inspiry

Posts one inspirational quote to slack channel every day.

### Setup Instructions:
Only three things to do really,

1. Deploy your app to heroku.
2. Create an incoming webhook with the channel of your choice (ignore the username and icon, we'll take care of it here) and save that token in environment variables as `SLACK_WEBHOOK`
3. In the Heroku's [scheduler addon](https://scheduler.heroku.com/dashboard), add a job with command line 
 ```ruby bin/inspiry.rb```
   and schedule it Daily. I'm saying dailly because it uses the quote of the day and it doesn't make sense to post the same message every hour.

Sample message,

![example_img](http://i.imgur.com/W86pj52.png)


(optional) If you'd like to have a custom image as icon of the message, add it to env var as `IMAGE_URL`. The current default is 

![image](https://libcom.org/files/images/library/fist.jpg)


 
