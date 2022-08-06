package com.patient.entity.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.patient.entity.Updateapp;

public interface UpdateRepo extends JpaRepository<Updateapp, Integer> {

	List<Updateapp> findByDoctor(String did);
	
	Updateapp findByPid(int pid);
}
