package com.example.demo.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@GetMapping("/data")
	public Map<String, String> getHttpDatas() {
		Map<String, String> map = new HashMap<String, String>(); // use new HashMap<String, Object>(); for single result

	    map.put("status", "true");
	    map.put("message", "Data is found");
	    map.put("data", "ahn");

	    return map;
	}
	
	
}
