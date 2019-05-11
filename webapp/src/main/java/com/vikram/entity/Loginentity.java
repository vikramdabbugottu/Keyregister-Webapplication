package com.vikram.entity;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")

public class Loginentity 
{
	private String username;
	private String password;
	
	public Loginentity()
	{
		
	}
	
	public Loginentity(String username, String password) 
	{
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Loginentity [username=" + username + ", password=" + password + "]";
	}
	
	
	
	
}
