package com.patient.entity.repo;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.patient.entity.Appointment;

public interface AppointmentRepo extends JpaRepository<Appointment, Integer> {

//	@Modifying
//	@Query(nativeQuery = true,value = "delete from appointment a where a.pid=:pid")
//	Collection<>
	
	List<Appointment> findByDoctor(String did);
	Appointment findByAppointmentDate(LocalDateTime date);
	Appointment findByPid(int pid);
	
//	@Modifying
//	@Query(nativeQuery = true,value = "delete from appointment a where a.pid=:pid")
	int deleteByPid(@Param("pid") int pid);
}
