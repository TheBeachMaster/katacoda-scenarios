Let's create a `docker-compose.yml` file : 

`touch docker-compose.yml`{{execute}}  

Inside this file we'll add the following (click on _Copy to Editor_): 

<pre class="file" data-filename="docker-compose.yml" data-target="replace">
version: '3'
services:
  ouroboros:
    container_name: ouroboros
    hostname: ouroboros
    image: pyouroboros/ouroboros
    environment:
      - CLEANUP=true
      - INTERVAL=45
      - LOG_LEVEL=info
      - SELF_UPDATE=true
      - TZ=Africa/Nairobi
    restart: unless-stopped
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
</pre>

## Tips: 
Let's verif that `docker-compose.yml` file. 

`docker-compose config`{{execute}} 

## Details 

In this configuration, we're pulling `Ouroboros` image from the official repo.  `image: pyouroboros/ouroboros`

Next, we configure each update to remove old images `CLEANUP=true`.  

We have configured updates to run after every 45 seconds `INTERVAL=45` 

Timezone is set to `Nairobi`.

The variable `SELF_UPDATE=true` ensures that Ouroboros updates itself as well. 

In the next session we'll try and spin up this image.  

Read On!! :)