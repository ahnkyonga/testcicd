<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>vue router</title>
    </head>
    <body>
  
        <div id="app">     
        <p>
        <router-link to="/user">user</router-link>
        <!-- <router-link to="posts">posts</router-link>
        <router-link to="profile">profile</router-link> -->
        </p>
        	<router-view name="header"></router-view>
            <router-view></router-view>
            <router-view name="footer"></router-view>            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
        <script src="https://unpkg.com/vue-router@3.0.1/dist/vue-router.js"></script>
        
        <script>
        	var Body = {template: '<div>This is Body</div>'};
        	var Header = {template: '<div>This is Header</div>'};
        	var Footer = {template: '<div>This is Footer</div>'};
            var User = {
                	template: `
                		<div>
            				User Component
            				<router-view></router-view>
            			</div>
                	`
                };
            var UserProfile = {template: '<p>User Profile Component</p>'};
            var UserPost = {template: '<p>User Post Component</p>'};            
            var routes = [
            	{
	            	path:"/user",
	            	component: User,
	            	children:[
		            	{path:"posts", component: UserPost},
		            	{path:"profile", component: UserProfile}
	            	]
            	},
            	{
            		path:"/", components:{
            			default: Body,
            			header: Header,
            			footer: Footer
            		
            		}
            	}
            	
            ];            
            var router = new VueRouter({routes});            
            new Vue({
            	router
            }).$mount("#app");
            
        </script>
    </body>
</html>
