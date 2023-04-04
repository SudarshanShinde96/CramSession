package com.cdac.cs.services;

import java.util.List;

import com.cdac.cs.model.Users;


public interface Services {
	
	public Users addUser(Users user);
	
	public boolean findByUsername(String username,String password);
	
	
	Users updateUser(Users user,Integer userId);
	
	Users getUserById(Integer userId);
	
	List<Users> getAllUsers();
	
	void deleteUser(Integer userId);
	
	
	 
	 public boolean isUsernameTaken(String username);
	 
	 public boolean isEmailTaken(String email);
	 
	 public boolean isPhoneNumberTaken(String phoneNumber);
}


