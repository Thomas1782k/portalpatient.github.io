package com.patient.entity.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.patient.entity.Doctor;



public interface DoctorRepo extends JpaRepository<Doctor, String>
{
	Doctor findByUserId(String userId);
	Doctor findByDid(int did);
}
