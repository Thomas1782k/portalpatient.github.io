package com.patient.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class PatientRecord 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int recordId;
	private int pid;

	private String prescription;
	

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	//BMI Validations
	private String bmi;
	
	//Glucose Monitoring
	private LocalDateTime timeOfGlucose;
	private String bloodGlucose;
	
	
	//Blood Count
	private LocalDateTime timeOfBlood;
	private String rbcCount;
	private String wbcCount;
	private String plateletCount;
	
	
	//Activity Tracker
	private LocalDateTime dateOfActivity;
	private String activity;
	private LocalDateTime timeOfWorkOut;
	
	
	//Cholesterol Monitor
	private LocalDateTime timeOfCholesterol;
	private String cholesterol;
	

	//Pressure Monitor
	//@Temporal(TemporalType.TIME)
	private LocalDateTime timeOfPressure;
	private String pressure;
	
	
	//Thyroid Monitor
	private LocalDateTime timeOfThyroid;
	private String thyroid;
	
	
	//Calories Tracker
	private LocalDateTime dateOfCalories;
	private String calories;
	private LocalDateTime timeOfCaloriesIntake;
	
	
	//Diet Tracker
	private LocalDateTime dateOfDiet;
	private String diet;
	private LocalDateTime timeOfDietIntake;

	
	public PatientRecord() {
		super();
	}

	//Getters & Setter:
	public String getPrescription() {
		return prescription;
	}
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	
	
	public String getBmi() {
		return bmi;
	}

	public void setBmi(String bmi) {
		this.bmi = bmi;
	}

	public int getRecordId() {
		return recordId;
	}
	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}
	
	public LocalDateTime getTimeOfGlucose() {
		return timeOfGlucose;
	}
	public void setTimeOfGlucose(LocalDateTime timeOfGlucose) {
		this.timeOfGlucose = timeOfGlucose;
	}
	public String getBloodGlucose() {
		return bloodGlucose;
	}
	public void setBloodGlucose(String bloodGlucose) {
		this.bloodGlucose = bloodGlucose;
	}
	public LocalDateTime getTimeOfBlood() {
		return timeOfBlood;
	}
	public void setTimeOfBlood(LocalDateTime timeOfBlood) {
		this.timeOfBlood = timeOfBlood;
	}
	public String getRbcCount() {
		return rbcCount;
	}
	public void setRbcCount(String rbcCount) {
		this.rbcCount = rbcCount;
	}
	public String getWbcCount() {
		return wbcCount;
	}
	public void setWbcCount(String wbcCount) {
		this.wbcCount = wbcCount;
	}
	public String getPlateletCount() {
		return plateletCount;
	}
	public void setPlateletCount(String plateletCount) {
		this.plateletCount = plateletCount;
	}
	public LocalDateTime getDateOfActivity() {
		return dateOfActivity;
	}
	public void setDateOfActivity(LocalDateTime dateOfActivity) {
		this.dateOfActivity = dateOfActivity;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public LocalDateTime getTimeOfWorkOut() {
		return timeOfWorkOut;
	}
	public void setTimeOfWorkOut(LocalDateTime timeOfWorkOut) {
		this.timeOfWorkOut = timeOfWorkOut;
	}
	public LocalDateTime getTimeOfCholesterol() {
		return timeOfCholesterol;
	}
	public void setTimeOfCholesterol(LocalDateTime timeOfCholesterol) {
		this.timeOfCholesterol = timeOfCholesterol;
	}
	public String getCholesterol() {
		return cholesterol;
	}
	public void setCholesterol(String cholesterol) {
		this.cholesterol = cholesterol;
	}
	public LocalDateTime getTimeOfPressure() {
		return timeOfPressure;
	}
	public void setTimeOfPressure(LocalDateTime timeOfPressure) {
		this.timeOfPressure = timeOfPressure;
	}
	public String getPressure() {
		return pressure;
	}
	public void setPressure(String pressure) {
		this.pressure = pressure;
	}
	public LocalDateTime getTimeOfThyroid() {
		return timeOfThyroid;
	}
	public void setTimeOfThyroid(LocalDateTime timeOfThyroid) {
		this.timeOfThyroid = timeOfThyroid;
	}
	public String getThyroid() {
		return thyroid;
	}
	public void setThyroid(String thyroid) {
		this.thyroid = thyroid;
	}
	public LocalDateTime getDateOfCalories() {
		return dateOfCalories;
	}
	public void setDateOfCalories(LocalDateTime dateOfCalories) {
		this.dateOfCalories = dateOfCalories;
	}
	public String getCalories() {
		return calories;
	}
	public void setCalories(String calories) {
		this.calories = calories;
	}
	public LocalDateTime getTimeOfCaloriesIntake() {
		return timeOfCaloriesIntake;
	}
	public void setTimeOfCaloriesIntake(LocalDateTime timeOfCaloriesIntake) {
		this.timeOfCaloriesIntake = timeOfCaloriesIntake;
	}
	public LocalDateTime getDateOfDiet() {
		return dateOfDiet;
	}
	public void setDateOfDiet(LocalDateTime dateOfDiet) {
		this.dateOfDiet = dateOfDiet;
	}
	public String getDiet() {
		return diet;
	}
	public void setDiet(String diet) {
		this.diet = diet;
	}
	public LocalDateTime getTimeOfDietIntake() {
		return timeOfDietIntake;
	}
	public void setTimeOfDietIntake(LocalDateTime timeOfDietIntake) {
		this.timeOfDietIntake = timeOfDietIntake;
	}

	

}
