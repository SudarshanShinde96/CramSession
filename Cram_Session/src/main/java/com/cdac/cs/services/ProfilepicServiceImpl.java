package com.cdac.cs.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.cs.model.ProfilePhoto;
import com.cdac.cs.model.Users;
import com.cdac.cs.repo.ProfilepicRepo;

@Service
public class ProfilepicServiceImpl implements ProflepicUpload {

	@Autowired
	private ProfilepicRepo profilepicRepo;
	
	
	@Override
	public ProfilePhoto ProfileUpload(MultipartFile file, Users registration,String pathname) {
		// TODO Auto-generated method stub
		ProfilePhoto photo=new ProfilePhoto();
		photo.setPicname(file.getOriginalFilename());
		photo.setUsername(registration.getUsername());
		photo.setProfilePicPath(pathname);
		return profilepicRepo.save(photo);
	}

}
