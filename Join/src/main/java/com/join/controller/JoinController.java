package com.join.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping
@Log4j
public class JoinController {
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		log.info("회원가입");
	}
	
	@RequestMapping(value = "check", method = RequestMethod.GET)
	public void newGET() {
		
		log.info("체크박스");
		
	}
	
}