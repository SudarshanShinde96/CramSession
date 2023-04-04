package com.cdac.cs.services;




import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import com.cdac.cs.model.Users;
import com.cdac.cs.exceptions.ResourceNotFoundException;
import com.cdac.cs.model.Uploads;
import com.cdac.cs.repo.RegistrationRepo;
import com.cdac.cs.repo.UploadsRepo;

import jakarta.servlet.http.HttpSession;


@Service
public class UploadServiceImpl implements UploadService {

    @Autowired
    private UploadsRepo uploadRepository;

    
    @Override
    public Uploads saveFile(MultipartFile file, String desc, Users registration,String pathname,String type) {
        Uploads newUpload = new Uploads();
        newUpload.setFile_name(file.getOriginalFilename());
        newUpload.setFile_description(desc);
       
        newUpload.setUsername(registration.getUsername());
        newUpload.setUpload_on(new Date());
        newUpload.setFile_type(type);
        newUpload.setFile_path(pathname);
        
        return uploadRepository.save(newUpload);
    }


    @Override
    public List<Uploads> getFilesByUsername(String username) {
        List<Uploads> uploads = this.uploadRepository.findAllByUsername(username);
        return uploads;
    }


	@Override
	public void deleteUpload(int file_id) {
		Uploads upload=this.uploadRepository.findById(file_id).get();
		this.uploadRepository.delete(upload);	
	}
	
	
	@Override

    public List<Uploads> getUploadsByFileNameOrFileDescription(String file_name, String file_description) {
        return uploadRepository.findByFileNameOrFileDescription(file_name, file_description);
    }

 
}
