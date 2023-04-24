package com.example.demo.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class IntroController {
	private static final Logger logger= LoggerFactory.getLogger("IntroController");
	@RequestMapping("/intro")
	public String getIntro() {
		MDC.put("GUID", "7654324678234");
		logger.info("this rabbitmq messagelog");
		System.out.println("intro controller called.");
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
