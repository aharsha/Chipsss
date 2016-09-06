package com.cheapchips.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	LoginController()
	{
		System.out.println("at Controllerrrrrrrrrrrrrrrrrrr");
	}
	@RequestMapping("/AboutUs")
	public String showAboutUs() 
	{
		System.out.println("at Method AboutUSSSSSSSSSSSSSSSSSS");
	return "AboutUs";
	}
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
	return "ContactUs";
	}
}
