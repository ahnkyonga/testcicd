package com.example.demo.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.SampleChildVo;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api")
@Slf4j
public class DataController {
	 
	
	@GetMapping(path="/data", produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> getHttpDatas() {
		log.debug("asdklajs");
		SampleChildVo.builder().parentField("1").childField("2"); 
		Map<String, String> map = new HashMap<String, String>(); // use new HashMap<String, Object>(); for single result

	    map.put("status", "true");
	    map.put("message", "Data is found");
	    map.put("data", "ahn");

	    return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	@PostMapping(path="/postData", produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> getPostHttpDatas(@RequestBody Map<String, Object> requestMap) {
		Map<String, String> map = new HashMap<String, String>(); // use new HashMap<String, Object>(); for single result

	    map.put("status", "true");
	    map.put("message", "Data is found");
	    map.put("data", "ahn");

	    return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	
}
