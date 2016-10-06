package com.letzchaat.controller;

import java.security.Principal;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.letzchaat.model.Blog;
import com.letzchaat.model.Forum;
import com.letzchaat.model.UserRegister;
import com.letzchaat.service.BlogService;
import com.letzchaat.service.ForumService;
import com.letzchaat.service.UserService;

@Controller
public class AdminController {
	UserService userService;
	BlogService blogService;
	ForumService forumService;

	/**
	 * @param userService the userService to set
	 */
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService userService)
	{
		this.userService=userService;
	}
	
	/**
	 * @param forumService the forumService to set
	 */

	@Autowired(required=true)
	@Qualifier(value="forumService")
	public void setForumService(ForumService forumService) {
		this.forumService = forumService;
	}

	/**
	 * @param blogService the blogService to set
	 */
	@Autowired(required=true)
	@Qualifier(value="blogService")
	public void setUserService(BlogService blogService)
	{
		this.blogService=blogService;
	}
	
	/* request mapping of admin page*/

	@RequestMapping("/admin/adminPage")
	public ModelAndView home(Model model)
	{   
		int users=0,blog=0,message=0;
		List<UserRegister> l=userService.getAllUsers();
	//	List<Contact>c=userService.getAllCustomer();
		List<Blog>b=blogService.getAllBlogs();
		for(Object o:l)
		{
			users++;
		}
		for(Object o1:b)
		{
			blog++;
		}
		model.addAttribute("users",users);
		model.addAttribute("blog",blog);
		return new ModelAndView("admin");
	}
	
	
	/*@RequestMapping("/admin/forum")
	public ModelAndView adminForum(Model model,@RequestParam(name="loginid")String nm )
	{
		model.addAttribute("forum",new Forum());
		System.out.println(nm);
		int id=userService.getUserId(nm);
		System.out.println(id);
		model.addAttribute("userid",id);
		return new ModelAndView("forum");
	}*/
	
	/* request mapping of admin page of forum*/
	@RequestMapping("/admin/forum")
	public ModelAndView adminForum(Model model,HttpServletRequest request)
	{	Forum f=new Forum();	
	 	model.addAttribute("listForum", forumService.getAllForums());
	 	//System.out.println(new Gson().toJson(forumService.getAllProducts()));
		model.addAttribute("forum",f);
		return new ModelAndView("forum");
		
	}
			
	/* request mapping of admin page of Add forum*/
	@RequestMapping(value="/admin/forum/add",method=RequestMethod.POST)
	public String adminForumAdd(@Valid @ModelAttribute("forum") Forum f,BindingResult result, Model model,HttpServletRequest request)
	{   System.out.println("forum add");
		Principal principal = request.getUserPrincipal();
		int id=userService.getUserId(principal.getName());
		UserRegister u=userService.getUserById(id);
    
	 
		String s=null;
		if(result.hasErrors())
		{  System.out.println("error");
		model.addAttribute("listForum", forumService.getAllForums());
			s="/admin/forum";	
		}		
		else
		{ if(f.getForumid()==0){
			System.out.println("success forum add");
			System.out.println(u.getId());
			f.setUserid(u.getId());
		    forumService.addForum(f);
			}		
		    else
		    {	f.setUserid(u.getId());
			    this.forumService.updateForum(f);		
		    }
			s="/admin/forum";
		}
		return "redirect:"+s;
	}
	
	/* request mapping of admin page of delete forum*/
	@RequestMapping("/admin/delete/{id}")
	String deleteProduct(@PathVariable("id") int id, @ModelAttribute("forum") Forum f)
	{	this.forumService.removeForum(id);
		return "redirect:/admin/forum";
	}
	
	/* request mapping of admin page of edit forum*/
	@RequestMapping("/admin/edit/{id}")
    public String updateForum(@PathVariable("id") int id, Model model){
        model.addAttribute("forum", this.forumService.getForumById(id));
        model.addAttribute("listForum",this.forumService.getAllForums());
        return "forum";
    }    
	
	/* request mapping of admin page of blog*/
	
	@RequestMapping("/admin/blog")
	public ModelAndView adminBlog(Model model,HttpServletRequest request)
	{	Blog b=new Blog();	
	 	model.addAttribute("listBlog", blogService.getAllBlogs());
	 	//System.out.println(new Gson().toJson(forumService.getAllProducts()));
		model.addAttribute("blog",b);
		return new ModelAndView("blog");
		
	}
			
	/* request mapping of admin page of Add blog*/
	@RequestMapping(value="/admin/blog/add",method=RequestMethod.POST)
	public String adminForumAdd(@Valid @ModelAttribute("blog") Blog b,BindingResult result, Model model,HttpServletRequest request)
	{ System.out.println("blog add");
	
	 
		String s=null;
		if(result.hasErrors())
		{  System.out.println("error");
		model.addAttribute("listBlog", blogService.getAllBlogs());
			s="/admin/blog";	
		}		
		else
		{ if(b.getBlogid()==0){
			System.out.println("success blog add");
			Principal principal = request.getUserPrincipal();
			int id=userService.getUserId(principal.getName());
		    UserRegister u=userService.getUserById(id);
		    System.out.println(u.getId());
			b.setUserid(u.getId());
	        Date d=new Date();
			b.setDate(d);
			blogService.addBlog(b);
			}		
		    else
		    {	
			    this.blogService.updateBlog(b);		
		    }
			s="/admin/blog";
		}
		return "redirect:"+s;
	}
	
	/* request mapping of admin page of delete blog*/
	@RequestMapping("/admin/deleteb/{id}")
	String deleteBlog(@PathVariable("id") int id, @ModelAttribute("forum") Forum f)
	{	this.blogService.removeBlog(id);
		return "redirect:/admin/blog";
	}
	
	/* request mapping of admin page of edit blog*/
	@RequestMapping("/admin/editb/{id}")
    public String updateBlog(@PathVariable("id") int id, Model model){
        model.addAttribute("blog", this.blogService.getBlogById(id));
        model.addAttribute("listBlog",this.blogService.getAllBlogs());
        return "blog";
    }    

	/*request mapping to view all blog*/
	@RequestMapping("/admin/viewblog")
	  public ModelAndView viewBlog(Model m)
	  {
		/*List<Blog>l= blogservice.getAllBlog();
		
		 m.addAttribute("blog",l);
		  return "ViewBlog";*/
		 Gson gson=new Gson();
		 List<Blog>l= blogService.getAllBlogs();
		 String json=gson.toJson(l);
		 ModelAndView model=new ModelAndView("viewBlog");
		 model.addObject("blogs",json);
		  return model;
	  }
	 
	
	
	
	
	
	
	
	

	
	
}
