package com.vikram.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vikram.entity.Loginentity;

@Component
public class Logindao 
{
	//System.out.println("The login details");
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void checklogin(Loginentity le)
	{
		System.out.println("The login details" + le );
	Session session = sessionFactory.getCurrentSession();
	session.save(le);
		//return "index.jsp";
	}

}
