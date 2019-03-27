package com.leedarson;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;

@RestController
public class HelloController {

	private static final String template = "Hello_leedarson, %s!";
	private final AtomicLong counter = new AtomicLong();

	@RequestMapping("/hello")
	public JSONObject greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		JSONObject jo = new JSONObject();
		jo.put(String.valueOf(counter.incrementAndGet()), String.format(template, name));
		return jo;
	}
}
