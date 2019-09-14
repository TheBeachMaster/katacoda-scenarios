By editing the `addon.js` you can add new capabilities. 

Example  

```js 
AP.require('request', function(request) {
    request({
        url: '/2.0/repositories',
        success: function(data) {
            console.log(data);
            $('#repos')
                .text(data.values[0])
                .next('.loading').hide();
        }
    });
}); 
``` 


Then update the plugin by adding the following inside `connect-example.hbs` 

```hbs 
   <tr>
      <td>Add-on user (retrieved via server-to-server REST):</td>
      <td>{{repos}}</td>
  </tr> 
``` 

You can read more about the APIs [here](https://developer.atlassian.com/bitbucket/api/2/reference/resource/) 