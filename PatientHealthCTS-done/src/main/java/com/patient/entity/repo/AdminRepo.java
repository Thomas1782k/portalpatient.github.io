package com.patient.entity.repo;


import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.patient.entity.Admin;

public interface AdminRepo extends JpaRepository<Admin, String> {

	Admin findByUserId(String userId);
	
//	@Query(nativeQuery = true,value="select concat(FirstName,LastName) from doctor where did> id ")
//	List<Doctor> allDoctor(@Param("id") Set<String> names);
	
}
