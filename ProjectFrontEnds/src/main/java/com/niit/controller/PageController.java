package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


	@Controller

	public class PageController 
	{
		@RequestMapping("/login")
		public String showLoginPage()
		{
			return "Login";
		}
		
		
		
		@RequestMapping("/")
		public String showIndex()
		{
			return "index";
		}
		
		

		@RequestMapping("/aboutus")
		public String showAboutUs()
		{
			return "AboutUs";
		}
		
		@RequestMapping("/contactus")
		public String showContactUs()
		{
			return "ContactUs";
		}
	}

	



