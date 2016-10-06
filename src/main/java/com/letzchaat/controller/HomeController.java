package com.letzchaat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.letzchaat.model.UserRegister;

@Controller
public class HomeController {

	@RequestMapping("/index")
	public ModelAndView home()
	{
		return new ModelAndView("index");
		}
	
	@RequestMapping("/")
	ModelAndView home1()
	{
		return new ModelAndView("index");
	}	
}
