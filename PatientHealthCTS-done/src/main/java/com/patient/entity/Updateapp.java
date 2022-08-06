package com.patient.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Updateapp {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int uid;
	private int pid;
	private String pname;
	private LocalDateTime appointmentDate;
	private String symptoms;
	private String doctor;
	private String prescription;
	
	
	public String getPrescription() {
		return prescription;
	}


	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}


	public Updateapp() {
		super();
	}
	
	
	public Updateapp(int pid, String pname, LocalDateTime appointmentDate, String symptoms, String doctor,String prescription) {
		super();
		
		this.pid=pid;
		this.pname = pname;
		this.appointmentDate = appointmentDate;
		this.symptoms = symptoms;
		this.doctor = doctor;
		this.prescription=prescription;
	}
	
	
	
	public int getUid() {
		return uid;
	}


	public void setUid(int uid) {
		this.uid = uid;
	}


	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public int getAppid() {
		return uid;
	}

	public void setAppid(int appid) {
		this.uid = appid;
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
		return "Update [pid=" + pid + ", pname=" + pname + ", date=" + appointmentDate + ",  symptoms="
				+ symptoms + ", doctor=" + doctor + "]";
	}
	

}
