package com.mycompany.webapp.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/exam02")
public class Exam02Controller {
	private static final Logger logger = LoggerFactory.getLogger(Exam02Controller.class);
	
	
	@GetMapping("/method1form")
	public String method1form(HttpServletRequest request, HttpServletResponse response) {
		logger.info("실행");

		return "exam02/method1form";
	}
	
	@RequestMapping("/method1")
	public String method1(HttpServletRequest request, HttpServletResponse response){
		logger.info("실행");
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		logger.info(name);
		return "exam02/method1";
	}
	
	@RequestMapping("/method2")
	public String method2() {
		logger.info("Redirect to /exam02/method1form");
		return "redirect:/home";
	}
	
	

	
	@RequestMapping(value="/method3" , method = RequestMethod.GET)
	public String method3(Model model) {
		logger.info("실행");
		model.addAttribute("method", "get");
		return "exam02/method";
	}
	
	@PostMapping("/method3")
	public String method4(Model model) {
		logger.info("실행 POST");
		model.addAttribute("method", "post");
		return "exam02/method";
	}
	
	@PutMapping("/method3")
	public String method5(Model model) {
		logger.info("실행 PUT");
		model.addAttribute("method", "put");
		return "exam02/method";
	}
	
	@DeleteMapping("/method3")
	public String method6(Model model) {
		logger.info("실행 DELETE");
		model.addAttribute("method", "delete");
		return "exam02/method";
	}

	
	
	@GetMapping(value = "/ajaxMethod3", produces="appliation/json; charset=UTF-8")
	@ResponseBody
	public String ajaxMethod3(Model model) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("method", "get");
		String json = jsonObject.toString();
		return json;
	}
	
	@PostMapping(value = "/ajaxMethod3", produces="appliation/json; charset=UTF-8")
	@ResponseBody
	public String ajaxMethod4(Model model) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("method", "post");
		String json = jsonObject.toString();
		return json;
	}
	
	@PutMapping(value = "/ajaxMethod3", produces="appliation/json; charset=UTF-8")
	@ResponseBody
	public String ajaxMethod5(Model model) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("method", "PUT");
		String json = jsonObject.toString();
		return json;
	}
	
	@DeleteMapping(value = "/ajaxMethod3", produces="appliation/json; charset=UTF-8")
	@ResponseBody
	public String ajaxMethod6(Model model) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("method", "Delete");
		String json = jsonObject.toString();
		return json;
	}
}
