package com.cdac.cs.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ProfilePhoto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int picid;
	
	private String picname;
	
	private String username;

	private String ProfilePicPath;
	
	
	public String getProfilePicPath() {
		return ProfilePicPath;
	}

	public void setProfilePicPath(String profilePicPath) {
		ProfilePicPath = profilePicPath;
	}

	public int getPicid() {
		return picid;
	}

	public void setPicid(int picid) {
		this.picid = picid;
	}

	public String getPicname() {
		return picname;
	}

	public void setPicname(String picname) {
		this.picname = picname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
	

}
