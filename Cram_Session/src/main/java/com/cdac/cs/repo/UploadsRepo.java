package com.cdac.cs.repo;




import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.cdac.cs.model.Uploads;



public interface UploadsRepo extends CrudRepository<Uploads, Integer> {

	Uploads findByUsername(String username);

	List<Uploads> findAllByUsername(String username);

	@Query("SELECT u FROM Uploads u WHERE u.file_name LIKE %?1% OR u.file_description LIKE %?1%")
	List<Uploads> findByFileNameOrFileDescription(String file_name, String file_description);

}


