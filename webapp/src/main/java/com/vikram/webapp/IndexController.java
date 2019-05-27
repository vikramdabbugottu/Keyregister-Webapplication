package com.vikram.webapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vikram.dao.Logindao;
import com.vikram.entity.Loginentity;

@Controller
public class IndexController 

{
	@Autowired
	Logindao logindao;
	
	Loginentity loginet;
	
	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	
	@RequestMapping("/login.htm")
	public String login()
	{
		System.out.println("I am at login");
		return "login.jsp";
	}
	
	@RequestMapping("/checklogin")
	public String collectingloginvalues(@ModelAttribute ("loginet") Loginentity loginet)
	{
		//System.out.println("I am at checkinlogin");
		logindao.checklogin(loginet);
		System.out.println("I am at checkinlogin");
		return "index.jsp";
	}

}
