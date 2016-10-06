package com.letzchaat.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class ChatController {

	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
    
    
    @RequestMapping(value={"/user/chat"})
    public String openChat(Principal p,Model m)
    {
    	String user=p.getName();
    	m.addAttribute("user",user);
    	return "chat";
    }
   
  

    @RequestMapping(value="/user/application",method=RequestMethod.POST)
    public String chat()
    {
    	return "application";
    	
    }
	
	
	
	
}
