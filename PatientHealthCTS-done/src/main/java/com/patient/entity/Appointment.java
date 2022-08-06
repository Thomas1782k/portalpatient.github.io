package com.patient.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int appid;
	
	//@OneToMany(mappedBy = "patient")
	private int pid;
	private String pname;
	private LocalDateTime appointmentDate;
	private String symptoms;
	private String doctor;
	
	
	public Appointment() {
		super();
	}

	public Appointment(int pid, String pname, LocalDateTime appointmentDate, String symptoms, String doctor) {
		super();
		
		this.pid=pid;
		this.pname = pname;
		this.appointmentDate = appointmentDate;
		this.symptoms = symptoms;
		this.doctor = doctor;
	}
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public int getAppid() {
		return appid;
	}

	public void setAppid(int appid) {
		this.appid = appid;
	}

	public LocalDateTime getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(LocalDateTime appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public LocalDateTime getDate() {
		return appointmentDate;
	}
	public void setDate(LocalDateTime date) {
		this.appointmentDate = date;
	}
	
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	@Override
	public String toString() {
		return "Appointment [pid=" + appid + ", pname=" + pname + ", date=" + appointmentDate + ",  symptoms="
				+ symptoms + ", doctor=" + doctor + "]";
	}
	

}
