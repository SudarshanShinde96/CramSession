package com.cdac.cs.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Users { 
	

	     
	  

		@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int id;
	     
	    @Column(nullable = false, unique = true, length = 45)
	    private String email;
	     
	    @Column(nullable = false, length = 64)
	    private String password;
	    
	    @Column(name = "name", nullable = false, length = 20)
	    private String fullname;
	      
	    
	    @Column(name = "username", nullable = false, length = 20,unique = true)
	    private String username;
	     
	    
		@Column(name = "gender", nullable = false, length = 10)
	    private String gender;
	    
	    @Column(nullable = false,length = 10,unique = true )
		private String phonenumber;
		

		@Column(nullable = false)
		@CreationTimestamp
		private Date join_date;
		
		
		 
		  public String getPhonenumber() {
				return phonenumber;
			}

			public void setPhonenumber(String phonenumber) {
				this.phonenumber = phonenumber;
			}

			public Date getJoin_date() {
				return join_date;
			}

			public void setJoin_date(Date join_date) {
				this.join_date = join_date;
			}

		
	    public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

	

		public String getFullname() {
			return fullname;
		}

		public void setFullname(String fullname) {
			this.fullname = fullname;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}



	     
	    
	}