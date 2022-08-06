package com.patient.entity.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.patient.entity.Patient;

public interface PatientRepo extends JpaRepository<Patient, Integer> {
	
	Patient findByPid(int pid);
	Patient findByUserId(String userId);
	//Patient findByEmailAddress(String EmailAddress);
}