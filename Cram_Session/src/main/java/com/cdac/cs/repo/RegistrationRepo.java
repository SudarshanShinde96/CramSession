package com.cdac.cs.repo;

import org.springframework.data.repository.CrudRepository;

import com.cdac.cs.model.Users;

public interface RegistrationRepo extends CrudRepository<Users, Integer> {

	

	Users findByUsername(String username);
	Users findByEmail(String email);
	Users findByPhonenumber(String phonenumber);
	
}
