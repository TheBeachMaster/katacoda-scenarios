
To work with [`Ouroboros`](https://github.com/pyouroboros/ouroboros) we need to first configure [Docker](https://www.docker.com/get-started) and [Docker-compose](https://docs.docker.com/compose/) 


However, in this environment we already have Docker and Docker-compose installed.


Now, we need to understand how to setup Ouroboros.  

Let's look at the options: 

- Run via Docker CLI   
 `docker run -d --name ouroboros -v /var/run/docker.sock:/var/run/docker.sock pyouroboros/ouroboros`  
- Install via  Python Pip  
 `pip install ouroboros-cli` 

- Use Docker-compose 

We'll explore the `Docker-compose` option. 


We'll setup a `docker-compose.yml` file that we'll use to start up Ouroboros. 



