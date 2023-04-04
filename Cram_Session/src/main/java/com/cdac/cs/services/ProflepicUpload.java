package com.cdac.cs.services;

import org.springframework.web.multipart.MultipartFile;

import com.cdac.cs.model.ProfilePhoto;
import com.cdac.cs.model.Users;

public interface ProflepicUpload {
	
	public ProfilePhoto  ProfileUpload(MultipartFile file, Users registration, String pathname);

}
