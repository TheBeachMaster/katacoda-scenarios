Now, let's open `ouroboros.env`, remember that Slack token in the format `https://hooks.slack.com/service/<TOKENA>/<TOKENB>/<TOKENC>` ? yeah, that one, add the following line under __line 27__ :

`NOTIFIERS="slack://TOKENA/TOKENB/TOKENC/#CHANNEL` , replace the placeholders `TOKENA,TOKENB,TOKENC,CHANNEL` with their appropriate values.

Unfortunately, I will not be updating `arthurkenotieno/site-counter-app` as regularly, feel free to fork to [the repo](https://github.com/TheBeachMaster/updating-with-ouroboros) like [so](https://github.com/TheBeachMaster/updating-with-ouroboros#updating) to see changes.

However, we can bring down the instances to and bring them back up to simulate the update.

Let do that. 

`docker-compose down`{{execute}} 

Then bring them back up. __Ensure you have updated the `ouroboros.env` file to see the changes.

`docker-compose up -d`{{execute}} 

Head over to  you configured Slack channel to see the update. 

Now everytime any of the images are updated in the Docker registry, Ouroboros will update the runnig instances and send a notification to your Slack channel.
