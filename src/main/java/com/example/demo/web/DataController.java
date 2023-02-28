package com.example.demo.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DataController {
	
	
	@GetMapping(path="/data")
	public ResponseEntity<Object> getHttpDatas() {
		Map<String, String> map = new HashMap<String, String>(); // use new HashMap<String, Object>(); for single result

	    map.put("status", "true");
	    map.put("message", "Data is found");
	    map.put("data", "ahn");

	    return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	
}
