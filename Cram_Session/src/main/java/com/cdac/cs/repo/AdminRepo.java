package com.cdac.cs.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cdac.cs.model.Admin;

public interface AdminRepo extends JpaRepository<Admin,Integer>{
	@Query("select i from Admin i where i.email=?1")
	public Admin findByEmail(@Param("email") String email);

}
