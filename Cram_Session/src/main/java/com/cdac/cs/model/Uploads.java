package com.cdac.cs.model;

import java.util.Date;
import java.util.Optional;
import java.util.Set;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

@Entity
public class Uploads {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int file_id;
	
	@Column(nullable = false)
	private String file_name;
	
	@Column(nullable = true)
	private String file_description;

	private String file_path;
	
	@CreationTimestamp
	private Date upload_on;
	
	private  String File_type;

	public String getFile_type() {
		return File_type;
	}


	public void setFile_type(String file_type) {
		File_type = file_type;
	}


	public String getFile_path() {
		return file_path;
	}


	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}


	@Column(nullable = false)
	private String username;

	

	public int getFile_id() {
		return file_id;
	}


	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}


	public String getFile_name() {
		return file_name;
	}


	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}


	public String getFile_description() {
		return file_description;
	}


	public void setFile_description(String file_description) {
		this.file_description = file_description;
	}


	public Date getUpload_on() {
		return upload_on;
	}


	public void setUpload_on(Date upload_on) {
		this.upload_on = upload_on;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	
	
	
	

}
