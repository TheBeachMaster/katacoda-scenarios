To get started with [Atlassian Connect Express and Atlassian Connect CLI](https://bitbucket.org/atlassian/atlassian-connect-express/src/master/), you need to have a proper [NodeJS Environment](https://nodejs.org/en/download/package-manager/).  

Next you need to install the CLI that allows you to scaffold ACE applications: 

`npm i -g atlas-connect`{{execute}}  
  

Next, we need to create new ACE application 

Let's name our project *bitbucketapp* (very creative). To create the app, we execute the following command:

`atlas-connect new bitbucketapp`{{execute}}

Select *bitbucket* as the product you're targetting 

Press enter and give it a couple of minutes to scaffold the app.

Enter into the created directory  
`cd bitbucketapp`{{execute}}

> Important : For this demo we'll extra stuff namely `sqlite` adapter and `nodemon`.  We'll use SQLite to persist data and Nodemon to keep our application running after every update 

Install them as follows: 

`npm install --save sqlite`{{execute}} 

`npm install -D nodemon`{{execute}}

Next add the following line at the start of the `scripts` section of  `package.json` file 

`"dev": "nodemon -r esm app.js",` 

Finally run  

`npm install`{{execute}}