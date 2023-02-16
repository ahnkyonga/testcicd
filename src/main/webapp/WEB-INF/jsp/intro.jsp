<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>cicd vue sample</title>
    </head>
    <body>
        <div id="app">
            <h3>1.첫번째 인스턴스 push</h3>
            {{ message }}::::<br />
            <div id="innerApp">
                {{ msg }}
            </div>
            <my-component></my-component>
            <my-local-component></my-local-component>
        </div>
        <div id="app2">
            <h3>2.두번째 인스턴스</h3>
            {{ message }}::::<br />
            <div id="innerApp">
                {{ msg }}
            </div>
            <my-component></my-component>
            <my-local-component></my-local-component>
        </div>
        <script src="http://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
        
        <script>
            var cmp = {
                template: "<div>지역 컴포넌트</div>"
            };
            Vue.component("my-component", { template: "<div>전역 컴포넌트</div>" });
            new Vue({
                el: "#app",
                data: { message: "Hello Vue.js!", msg: "Good bye vue" },
                beforeCreate: function () { console.log("beforeCreate"); },
                created: function () { console.log("created"); },
                mounted: function () {
                    console.log("mounted");
                    this.message = "안녕? hello~~";
                },
                updated: function () { console.log("updated"); },
                components: {
                    'my-local-component': cmp
                }
            });
        </script>
    </body>
</html>
