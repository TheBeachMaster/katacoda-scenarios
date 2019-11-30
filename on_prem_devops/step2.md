Bamboo can be installed on all major platforms including Oracle Solaris.

Bamboo [currently](https://confluence.atlassian.com/bamboo/supported-platforms-289276764.html) requires JAVA/JDK 1.8 with support for major browsers including IE11+.

Bamboo can also be run as a Docker container for easier isolation.

In this session we'll run Bamboo as a Docker container.

To start, we'll bring up Bamboo with the following command

`docker-compose up -d bamboo`{{execute}}

This will bring up Bamboo with the default configurations.

Note that, it is import that the _bamboo-init.properties_ file be changed accordingly based on where the user would like Bamboo to store data.

See _Dockerfile-bamboo_ for details on how this has been done.

Once Bamboo has been spun up, click on the link  https://[[HOST_SUBDOMAIN]]-3080-[[KATACODA_HOST]].environments.katacoda.com or click on the **Bamboo** tab on the terminal window to proceed with configurations.