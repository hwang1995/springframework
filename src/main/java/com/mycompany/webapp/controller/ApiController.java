package com.mycompany.webapp.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {
	
	private static final String template = "Hello, %s";
	private final AtomicLong counter = new AtomicLong();
	
	@GetMapping("/api/greeting")
	public String greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return counter.incrementAndGet() + String.format(template, name);
	}

}
