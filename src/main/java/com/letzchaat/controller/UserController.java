package com.letzchaat.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.letzchaat.model.Forum;
import com.letzchaat.model.UserRegister;
import com.letzchaat.service.BlogService;
import com.letzchaat.service.UserService;

@Controller
public class UserController {
	UserRegister user,ulogin;
	UserService userService;
	BlogService blogService;
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService userService)
	{
		this.userService=userService;
	}
	
	@Autowired(required=true)
	@Qualifier(value="blogService")
	public void setBlogService(BlogService blogService)
	{
		this.blogService=blogService;
	}
	
	/*
	 * signup mapping
	 * */
	@RequestMapping("/signup")
	public String signUp(Model model)
	{
		model.addAttribute("user",new UserRegister());
		return "signUp";
	}
	
	/*register mapping of user*/
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	String signUpPost(@Valid @ModelAttribute("user") UserRegister u,BindingResult result,Model model,HttpServletRequest request)
	{String value1;
		System.out.println("is going to register");
			this.user=u;
			if(result.hasErrors()){
				return "signUp";	
			}
			else{
	        List<UserRegister> userList = userService.getAllUsers();
	        for(UserRegister userL:userList)
	        {
	            if(user.getEmailId().equals(userL.getEmailId())){
	                model.addAttribute("emailMsg", "Email already exists");
	                return "signUp";
	              }
	        }
	        userService.addUser(u);
	        MultipartFile file=u.getImage();
			String filelocation=request.getSession().getServletContext().getRealPath("/resources/images/");
			System.out.println(filelocation);
			String filename=filelocation+"\\"+u.getId()+".jpg";
			System.out.println(filename);			
			try{
				byte b[]=file.getBytes();
				FileOutputStream fos=new FileOutputStream(filename);
				fos.write(b);
				fos.close();
		    	}
			catch(IOException ex){}
			catch(Exception e){}
			value1="user/userHome";
	        System.out.println("register3"+value1);
	        }
		    return "redirect:/"+value1;
	}

	/*login mapping*/
	@RequestMapping(value="/login")
	public ModelAndView loginPage(@RequestParam(value="error", required = false)
	String error,@RequestParam(value="logout", required = false)String logout,Model model) {
		model.addAttribute("ulogin",new UserRegister());
		if(error != null){
			model.addAttribute("error", "Invalid username and password");
			}

			if (logout !=null){
			model.addAttribute("msg", "You have been logged out successfully !!!!");
			}			
			return new ModelAndView("login");
	}

	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String loginPagePost(@Valid @ModelAttribute("ulogin") UserRegister u,BindingResult result,Model model,@RequestParam("id") int id)
	{ System.out.println("is going to login");
		String value=null;
		this.ulogin=u;
		if(result.hasErrors()){
			return "login";	
		}
		else{
			System.out.println("is going to login without error");
        List<UserRegister> userList = userService.getAllUsers();
        for(UserRegister userL:userList)
        {
            if(ulogin.getEmailId().equals(userL.getEmailId()) && ulogin.getPassword().equals(userL.getPassword())){
                 value="user/userHome";
              }
            else
            	
            { System.out.println("not exits");
            	model.addAttribute("userpass","username and password does not exits");
            	value="index";
            }
        }
        return "redirect:/"+value;	
		}
}
	/*profile login*/
	

	@RequestMapping(value="/user/userHome")
	public ModelAndView userHome(Model m,Principal p)
	{	String emailId=p.getName();
		System.out.println("userhome"+emailId);
		int id=userService.getUserId(emailId);
		UserRegister u=userService.getUserById(id);
		u.setId(id);
		m.addAttribute("myname",u.getEmailId());
		return new ModelAndView("userHome", "user",u);
	}
	
	
	
	@RequestMapping(value="/user/profile")
	public ModelAndView profile(Model m,UserRegister u,Principal p)
	{	
		String emailId=p.getName();
		System.out.println("principal "+emailId);
		int id=userService.getUserId(emailId);
		u=userService.getUserById(id);
		u.setId(id);
		
		System.out.println(u.getId());
		m.addAttribute("user",u);
		m.addAttribute("userid",id);
		return new ModelAndView("profile");
	}
	
	/* request mapping of admin page of blog*/
	@RequestMapping("/user/blog")
	public ModelAndView adminBlog(Model model,HttpServletRequest request)
	{	Forum f=new Forum();	
	 	model.addAttribute("listblog", blogService.getAllBlogs());
	 	//System.out.println(new Gson().toJson(forumService.getAllProducts()));
		model.addAttribute("blog",f);
		return new ModelAndView("blog");
	}
	
	@RequestMapping(value="/user/edit/{id}",method=RequestMethod.POST)
	  public String update(@PathVariable("id")int id ,@ModelAttribute("user") UserRegister u)
	  {
		 System.out.println("user id is" +u.getId());
		 userService.updateUser(u);
		  return "redirect:/user/userHome";
	  }
	
	
	
	
	
	
	
	
	
/*	
	@RequestMapping("/forum")
	public ModelAndView home()
	{
		return new ModelAndView("forum");
	}	*/
}
