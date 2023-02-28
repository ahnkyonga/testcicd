package com.example.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroController {
	@RequestMapping("/intro")
	public String getIntro() {
		return "intro";
	}
	
	@RequestMapping("/vue-router")
	public String getViewRouter() {
		return "vue-router";
	}
		
	@RequestMapping("/vue-http")
	public String getHttpView() {
		return "vue-http";
	}		
	
}
