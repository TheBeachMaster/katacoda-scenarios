# Building your Serverless application

We'll build a simple application that fetches weather data.

Start by creating an `app.js` file.

`touch app.js`{{execute}}

Then, paste the following content into the file.

<pre class="file" data-filename="app.js" data-target="replace"> 
var request = require('request');

function main(params) {
    var location = params.location || 'Kisumu';
    var url = 'https://query.yahooapis.com/v1/public/yql?q=select item.condition from weather.forecast where woeid in (select woeid from geo.places(1) where text="' + location + '")&format=json';

    return new Promise(function(resolve, reject) {
        request.get(url, function(error, response, body) {
            if (error) {
                reject(error);
            }
            else {
                var condition = JSON.parse(body).query.results.channel.item.condition;
                var text = condition.text;
                var temperature = condition.temp;
                var output = 'It is ' + temperature + ' degrees in ' + location + ' and ' + text;
                resolve({msg: output});
            }
        });
    });
}
</pre> 

Next, create the action
`./wsk/wsk action create weather app.js`{{execute}}

Then let's invoke the action.
`./wsk/wsk action invoke --result --param location "Nairobi,KE"`{{execute}}

We can also deploy the app by doing the following: 

Create an app manifest :
`touch manifest.yaml`{{execute}} 

And paste the following into the manifest file.
<pre class="file" data-filename="manifest.yaml" data-target="replace">
packages:
    default:
        actions:
            weather:
                function: app.js
</pre>

Then deploy 
`./wskdeploy/wskdeploy -m manifest.yaml`{{execute}}