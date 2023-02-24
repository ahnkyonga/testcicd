<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>cicd vue sample 123</title>
    </head>
    <body>
        <div id="app">
            <h3>1.첫번째 인스턴스 push last</h3>
            {{ message }}::::<br />
            <div id="innerApp">
                {{ msg }}
            </div>
            <my-component></my-component>
            <my-component1></my-component1>
            <my-component2></my-component2>
            <child-component v-bind:propsdata="message"></child-component>
            <child-component1 v-on:show-log="printText"></child-component1>
            <child-component2></child-component2>
            <my-local-component></my-local-component>
        </div>
        <hr/>
        <div id="app2">
            <h3>2.두번째 인스턴스 local change</h3>
            {{ message }}::::<br />
            <div id="innerApp">
                {{ msg }}
            </div>
            <my-component></my-component>
            <my-local-component></my-local-component>
        </div>
        <script src="http://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
        
        <script>
        	var eventBus = new Vue();
        	Vue.component('child-component2', {
        		template: "<div>하위컴포넌트 영역입니다.<button v-on:click='showLog2'>show2</button></div>",
        		methods: {
        			showLog2:function(){
        				eventBus.$emit("triggerBus", 100);
        			}
        		}
        	});
            var cmp = {
                template: "<div>지역 컴포넌트</div>"
            };
            
            var cmp1 = {
                	template: '<div>첫번째 지역 컴포넌트{{cmp1Data}}</div>',
                	data : function(){
                		return{
                			cmp1Data : 100
                		}
                	}
             };
             
             var cmp2 = {
              	template: '<div>두번째 지역 컴포넌트{{cmp2Data}}</div>',
              	data : function(){
              		return{
              			cmp2Data : cmp1.data.cmp1Data
              		}
              	}
              }
             
            Vue.component("my-component", { template: "<div>전역 컴포넌트</div>" });
            Vue.component("child-component", {
            	props: ['propsdata'],
            	template: '<p>{{propsdata}}</p>'            	
            });
            Vue.component("child-component1", {            	
            	template: '<button v-on:click="showLog">show</button>',
            	methods:{
            		showLog: function(){
            			this.$emit('show-log');
            		}
            	}
            });
            new Vue({
                el: "#app",
                data: { message: "Hello Vue.js! passed from parent component", msg: "Good bye vue" },
                //data: { message: "Hello Vue.js! passed from parent component"},
                beforeCreate: function () { console.log("beforeCreate"); },
                created: function () { 
                	console.log("created");
                	eventBus.$on("triggerBus", function(value){
                		console.log("이벤트를 전달받음 값=", value);
                	})
                },
                methods: {
                	printText: function(){
                    	console.log("recieved an event");
                    }
                },
                mounted: function () {
                    console.log("mounted");
                   // this.message = "안녕? hello~~";
                },
                updated: function () { console.log("updated"); },
                components: {
                    'my-local-component': cmp,
                    'my-component1': cmp1,
                    'my-component2': cmp2
                }
            });
            
            
            
            new Vue({
            	el: "#app2"
            });
            
            
        </script>
    </body>
</html>
