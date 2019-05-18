Let's clean-up that file  and start up a project. 

Let's quickly clone a cool application that counts page views 

`git clone https://github.com/TheBeachMaster/updating-with-ouroboros.git .`{{execute}} 

Our cool application uses `redis` to store browser user agents and IPs. 

Now let's start our application and view the app. 

`docker-compose up -d`

<pre>https://[[HOST_SUBDOMAIN]]-3080-[[KATACODA_HOST]].environments.katacoda.com</pre>