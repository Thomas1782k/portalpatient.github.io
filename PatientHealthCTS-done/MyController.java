package com.training.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	@RequestMapping("/phome")
	public String phome()
	{
		return "patienthome.jsp";
	}
	@RequestMapping("about")
	public String aboutus()
	{
		return "about.jsp";
	}
	@RequestMapping("/dhome")
	public String dhome()
	{
		return "dhome1.jsp";
	}
	@RequestMapping("/c")
	public String contact()
	{
		return "contact.jsp";
	}
	@RequestMapping("/selection")
	public ModelAndView select(@RequestParam("role")String role, @RequestParam("opt")String opt)
	{
		ModelAndView mv = new ModelAndView();
		switch(role)
		{
		case "Doctor":
		{
			if(opt.equals("Login"))
			{
				mv.setViewName("doctorLogin.jsp");
			}
			else if(opt.equals("Registration")) 
			{
				mv.setViewName("doctorRegistration.jsp");
			}
			break;
		}
		case "Patient":
		{	
			if(opt.equals("Login"))
			{
				mv.setViewName("patientLogin.jsp");
			}
			else if(opt.equals("Registration"))
			{
				mv.setViewName("patientRegistration.jsp");
			}
			break;
		}
		
		default:
			mv.setViewName("adminLogin.jsp");
			break;
		}
		return mv;
	
}

}