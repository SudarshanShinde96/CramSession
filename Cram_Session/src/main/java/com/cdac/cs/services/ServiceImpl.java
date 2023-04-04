package com.cdac.cs.services;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.cs.exceptions.ResourceNotFoundException;
import com.cdac.cs.exceptions.UserAlreadyExistsException;
import com.cdac.cs.model.Users;
import com.cdac.cs.repo.RegistrationRepo;

@Service
public class ServiceImpl implements Services {
	
	@Autowired
	private RegistrationRepo registrationRepo;
	
	@Override
	public Users addUser(Users registration) {
		return registrationRepo.save(registration);
	}

	@Override
	public boolean findByUsername(String username, String password) {
		Users user= registrationRepo.findByUsername(username);
		
		if(user!=null && user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}	


	@Override
	public Users updateUser(Users user, Integer userId) {
		Users usr=this.registrationRepo.findById(userId).orElseThrow(()->new ResourceNotFoundException("User"," Id",userId));
		

		usr.setFullname(user.getFullname());
		usr.setEmail(user.getEmail());
		usr.setPassword(user.getPassword());
		usr.setGender(user.getGender());
		
		Users updatedUser=this.registrationRepo.save(user);
		
		return updatedUser;
	}

	@Override
	public Users getUserById(Integer userId) {
		Users usr=this.registrationRepo.findById(userId).orElseThrow(()->new ResourceNotFoundException("User"," Id",userId));
		
		return usr;
	}

	@Override
	public List<Users> getAllUsers() {
		List<Users>users=(List<Users>) this.registrationRepo.findAll();
		return users;
	}

	@Override
	public void deleteUser(Integer userId) {
		Users user=this.registrationRepo.findById(userId).orElseThrow(()->new ResourceNotFoundException("User"," Id",userId));
		this.registrationRepo.delete(user);	
	}	
	
	

	
	@Override
	  public boolean isUsernameTaken(String username) {
		    Users existingUser = registrationRepo.findByUsername(username);
		    return existingUser != null;
		}
	
	  public boolean isEmailTaken(String email) {
		    Users existingUser = registrationRepo.findByEmail(email);
		    return existingUser != null;
		}
	  
	  public boolean isPhoneNumberTaken(String phoneNumber) {
		    Users existingUser = registrationRepo.findByPhonenumber(phoneNumber);
		    return existingUser != null;
		}
	  
	  
	  
	  
	  
	
}
