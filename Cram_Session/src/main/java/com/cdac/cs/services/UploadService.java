package com.cdac.cs.services;



import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cdac.cs.model.Users;

import jakarta.servlet.http.HttpSession;

import com.cdac.cs.model.Uploads;




public interface UploadService {
	
	
	  
	 public Uploads saveFile(MultipartFile file, String desc, Users registration, String pathname,String type);

		 //public List<Uploads> listAllUploads(); 
		 
		 public List<Uploads> getFilesByUsername(String username); 
		 
		 void deleteUpload(int file_id);
		 
		  public List<Uploads> getUploadsByFileNameOrFileDescription(String file_name, String file_description);
}
