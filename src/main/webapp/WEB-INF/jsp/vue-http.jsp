<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>vue http</title>
    </head>
    <body>
  
        <div id="app">     
           
        </div>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
        
        <script>        	          
            new Vue({
            	el:"#app",
            	methods: {
            		getData: function(){
            			this.$http.get('/data')
            			.then(function(response){
            				console.log(JSON.parse(response.data));
            			});            			
            		}
            	}
            });
            
        </script>
    </body>
</html>
