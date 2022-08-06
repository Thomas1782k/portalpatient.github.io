package com.patient.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Doctor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int did;
	private String FirstName;
	private String LastName;
	private String Age;
	private String Gender;
	private String ContactNumber;
	private String Qualification;
	private String Speciality;
	private String address;
	private String city;
	private String state;
	private String EmailAddress;
	private String userId;
	private String Password;
	
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getContactNumber() {
		return ContactNumber;
	}
	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		this.Qualification = qualification;
	}
	public String getSpeciality() {
		return Speciality;
	}
	public void setSpeciality(String speciality) {
		this.Speciality = speciality;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmailAddress() {
		return EmailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		EmailAddress = emailAddress;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Doctor [did=" + did + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Age=" + Age
				+ ", Gender=" + Gender + ", ContactNumber=" + ContactNumber + ", qualification=" + Qualification
				+ ", speciality=" + Speciality + ", address=" + address + ", city=" + city + ", state=" + state
				+ ", EmailAddress=" + EmailAddress + ", userId=" + userId + ", Password=" + Password + "]";
	}
	
	
//	@RequestMapping("/getstudents")
//	public ModelAndView getStudentView()
//	{
//		ModelAndView mv = new ModelAndView();
//		List<Student> students = repo.findAll();
//		mv.setViewName("studentdetails.jsp");
//		mv.addObject("students", students);
//		
//		return mv;
//	}
//<table>
//<thead>
//<th>sid</th> <th>Sname</th> <th>DOB</th>
//</thead>
//<tbody>
// <c:forEach items="${students}" var="student">
// <tr>
// <td>${student.sid }</td>
// <td>${student.sname }</td>
// <td>${student.dob }</td>
//</tr>
// </c:forEach>
//
//</tbody>
//</table>
	
	

}
