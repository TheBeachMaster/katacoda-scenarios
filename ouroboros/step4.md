Let's clean-up that file  and start up a project. 

Let's quickly clone a cool application that counts page views.

Let's clean up first `rm -fr *`{{execute}} 

Close all open editors first to see the new changes.

`git clone https://github.com/TheBeachMaster/updating-with-ouroboros.git .`{{execute}} 

Our cool application uses `redis` to store browser user agents and IPs. 

Now let's start our application and view the app. 

`docker-compose up -d`{{execute}}

Click on the `View Page` tab to see our application.  

The application is visible here : 

https://[[HOST_SUBDOMAIN]]-3080-[[KATACODA_HOST]].environments.katacoda.com

Open the app with different browsers and refresh to see the numbers change. 

Now let's proceed and update our `ouroboros.env` to get Slack notifications after every update