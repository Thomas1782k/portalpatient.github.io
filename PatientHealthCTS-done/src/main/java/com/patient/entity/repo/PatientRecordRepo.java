package com.patient.entity.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.patient.entity.PatientRecord;

public interface PatientRecordRepo extends JpaRepository<PatientRecord, Integer>
{

	PatientRecord findByPid(int pid);
		
}
