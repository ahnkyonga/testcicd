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
            <h1>뷰 라우터 예제</h1>
            <p>
            	<router-link to="/main">메인 컴포넌트로 이동</router-link>
            	<router-link to="/login">로그인 컴포넌트로 이동</router-link>            	
            </p>
            <router-view></router-view>            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
        <script src="https://unpkg.com/vue-router@3.0.1/dist/vue-router.js"></script>
        
        <script>
        	var Main = {template:"<div>Main</div>"};
        	var Login = {template:"<div>Login</div>"};
        	
        	var routes = [
        		{path:"/main", component: Main},
        		{path:"/login", component: Login}
        	];
        	
        	var router = new VueRouter({routes});
            new Vue({
            	router
            }).mount("#app");
            
        </script>
    </body>
</html>