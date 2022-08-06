package com.patient.entity.cont;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.patient.entity.Doctor;
import com.patient.entity.Patient;
import com.patient.entity.PatientRecord;
import com.patient.entity.Updateapp;
import com.patient.entity.repo.AdminRepo;
import com.patient.entity.repo.AppointmentRepo;
import com.patient.entity.repo.DoctorRepo;
import com.patient.entity.repo.PatientRecordRepo;
import com.patient.entity.repo.PatientRepo;
import com.patient.entity.repo.UpdateRepo;

@Controller
public class PatientController {

	@Autowired
    DoctorRepo dr;
	
	@Autowired
	AdminRepo ar;
	
	@Autowired
	PatientRepo pr;
	
	@Autowired
	PatientRecordRepo prrepo;
	
	@Autowired
	AppointmentRepo apr;
	
	@Autowired
	UpdateRepo ur;
	
	@RequestMapping("/preg")
	public ModelAndView preg( Patient pat, String userId)
	{
		ModelAndView mv=new ModelAndView();
		Patient d=pr.findByUserId(userId);
		if(d==null)
		{
			pr.save(pat);
			mv.setViewName("patientlogin");
			mv.addObject("errmsg", "Registered Sucessfuly");
		}
		else if(!(d.getUserId().equals(pat.getUserId())))
				{
		pr.save(pat);
		mv.setViewName("patientlogin");
		mv.addObject("errmsg", "Registered Sucessfuly");
				}
		else
		{
			mv.addObject("errmsg", "User Id already selected");
			mv.setViewName("patientreg");
		}
		
		return mv;
	}
	
	@RequestMapping("/checkp")
	public ModelAndView loginPatient( String userId, String Password)
	{	
		try 
		{
			Patient p = pr.findByUserId(userId);
			System.out.println(p);
			ModelAndView mv = new ModelAndView();
			//List<Doctor> doc=dr.findAll();
			
			if(p.getUserId().equals(userId) && p.getPassword().equals(Password))
			{	
				List<Doctor> doc=dr.findAll();
				mv.addObject("pname",p.getFirstName());
				mv.addObject("pid", p.getPid());
				mv.addObject("doctors", doc);
				mv.setViewName("patienthome");
			}
			else if(p.getUserId().equals(userId) && !(p.getPassword().equals(Password)) )
			{
				mv.addObject("errmsg","Incorrect Password");
				mv.setViewName("patientlogin");
			}
			return mv;
			
		}
		catch(Exception e)
		{
			ModelAndView mv = new ModelAndView();
			mv.addObject("errmsg","Invalid Patient Id");
			mv.setViewName("patientlogin");
			return mv;
		}
	
	}
	
	@RequestMapping("/patienthome")
	public ModelAndView patienthome()
	{
		ModelAndView mv=new ModelAndView("patienthome");
		return mv;
	}
	
	@RequestMapping("/plogin")
	public ModelAndView plogin()
	{
		ModelAndView mv=new ModelAndView("patientlogin");
		return mv;
	}
	
	
	@RequestMapping("/phome")
	public ModelAndView phome(String pid)
	{
		ModelAndView mv=new ModelAndView("patienthome");
		int id=Integer.parseInt(pid);
		Patient p=pr.findByPid(id);
		List<Doctor> doc=dr.findAll();
		mv.addObject("doctors", doc);
		mv.addObject("pname", p.getFirstName());
		mv.addObject("pid", p.getPid());
		return mv;
	}
	@RequestMapping("/seehel")
	public ModelAndView seehel(String pid)
	{
		ModelAndView mv=new ModelAndView();
		int id=Integer.parseInt(pid);
		PatientRecord vh=prrepo.findByPid(id);
		if(!(vh==null))
		{
			mv.addObject("act",vh.getActivity() );
			mv.addObject("blglu",vh.getBloodGlucose() );
			mv.addObject("bmi",vh.getBmi() );
			mv.addObject("cal",vh.getCalories() );
			mv.addObject("chol",vh.getCholesterol() );
			mv.addObject("diet",vh.getDiet() );
			mv.addObject("plc",vh.getPlateletCount() );
			mv.addObject("rbc",vh.getRbcCount() );
			mv.addObject("wbc",vh.getWbcCount() );
			mv.addObject("pre",vh.getPressure() );
			mv.addObject("thy",vh.getThyroid() );
			
			
		}
		else
		{
			mv.addObject("pri", "no record");
			
		}
		
		mv.addObject("pid",id);
		mv.setViewName("hrecord");
		return mv;
	}
	
	@RequestMapping("docup")
	public ModelAndView docup(String pid,String pname,String doctor)
	{
		ModelAndView mv=new ModelAndView();
		int id=Integer.parseInt(pid);
		List<Doctor> doc=dr.findAll();
		Patient p=pr.findByPid(id);
		if(!(p==null))
		{
			p.setDoctor(doctor);
			pr.save(p);
			mv.addObject("pid", id);
			mv.addObject("pname", pname);
			mv.addObject("doctors", doc);
			mv.setViewName("patienthome");
		}
		else
		{
			mv.addObject("pid", id);
			mv.addObject("pname", pname);
			mv.setViewName("patienthome");
		}
		
		return mv;
		
	}
	@RequestMapping("/seepre")
	public ModelAndView seepre(String pid)
	{
		ModelAndView mv=new ModelAndView();
		int id=Integer.parseInt(pid);
		Updateapp pres=ur.findByPid(id);
		
		if(!(pres==null))
		{
			int did=Integer.parseInt(pres.getDoctor());
			Doctor dn=dr.findByDid(did);
			mv.addObject("pid", pres.getPid());
			mv.addObject("pname", pres.getPname());
			mv.addObject("symp", pres.getSymptoms());
			mv.addObject("date", pres.getDate());
			mv.addObject("pres", pres.getPrescription());
			mv.addObject("doc", dn.getFirstName());
			mv.addObject("id", id);
		}
		else
		{
			mv.addObject("msg", "Fix the appointment!");
			mv.addObject("id", id);
		}
		mv.setViewName("prescription");
		return mv;
	}
	
	

	
	@RequestMapping("/bmiCalculate")
	public ModelAndView bmiCalculate( int pid, float height, float weight)
	{
		
		ModelAndView mv = new ModelAndView();
		float BMI =(((weight)/(height*height))*10000);
		String value = String.valueOf(BMI);
		
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		
		prrepo.save(pr);
      if(!(p==null))
		{
			p.setBmi(value);
			prrepo.save(p);
		}
		else
		{
			pr.setPid(pid);
		    pr.setBmi(value);
			prrepo.save(pr);
		}		
        mv.addObject("pid", pid);
		mv.addObject("msg","Data are Added Successfully");
		mv.setViewName("bmi");
		return mv;
		
	}
	
	@RequestMapping("/bmi")
	public ModelAndView bmi(int pid)
	{
		System.out.println(pid);
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("bmi");
		return mv;
	}
	
	
	@RequestMapping("/bgLevel")
	public ModelAndView BloodGlucose(int pid,@RequestParam("timeOfGlucose") String gtime, String bloodGlucose)
	{
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);	 
		ModelAndView mv = new ModelAndView();
		
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		
		if(!(p==null))
		{
			p.setPid(pid);
			p.setBloodGlucose(bloodGlucose);
			p.setTimeOfGlucose(glutime);
			prrepo.save(p);
		}
		else
		{
			pr.setPid(pid);
			pr.setBloodGlucose(bloodGlucose);
			pr.setTimeOfGlucose(glutime);
			prrepo.save(pr);
		}
		mv.addObject("pid", pid);
		mv.addObject("msg","Data are Added Successfully");
		mv.setViewName("glucose");
		return mv;
		
	}
	
	@RequestMapping("/glucose")
	public ModelAndView glucose(int pid)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("glucose");
		return mv;
		
	}
	
	
	
	@RequestMapping("/blood")
	public ModelAndView bloodcount(int pid,@RequestParam("timeOfBlood") String gtime,String rbcCount,String wbcCount,String plateletCount)
	{
		
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);	 
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		
		if(!(p==null))
		{
			p.setTimeOfBlood(glutime);
			p.setRbcCount(rbcCount);
			p.setWbcCount(wbcCount);
			p.setPlateletCount(plateletCount);
			prrepo.save(p);
		}
		else
		{
			pr.setTimeOfBlood(glutime);
			pr.setRbcCount(rbcCount);
			pr.setWbcCount(wbcCount);
			pr.setPlateletCount(plateletCount);	
			prrepo.save(pr);
		}
	
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("bloodcount");
		return mv;
	}
	
	
	@RequestMapping("/bcount")
	public ModelAndView bcount(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("bloodcount");
		mv.addObject("pid", pid);
		return mv;
	}
	
	@RequestMapping("/diabetes")
	public ModelAndView diabetes(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("diabetes");
		
		return mv;
	}
	
	
	@RequestMapping("/active")
	public ModelAndView activityTracker(int pid, @RequestParam("dateOfActivity") String gtime, String activity, @RequestParam("timeOfWorkOut") String workOut)
	{

		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);
		
		String valueFromHtml1 = workOut;
		String dateTimeString1 = valueFromHtml1.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime1 = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime1);
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		
		if(!(p==null))
		{
			p.setDateOfActivity(glutime);
			p.setActivity(activity);
			p.setTimeOfWorkOut(glutime1);
			prrepo.save(p);
		}
		else
		{
			pr.setDateOfActivity(glutime);
			pr.setActivity(activity);
			pr.setTimeOfWorkOut(glutime1);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("activity");
		return mv;
		
	}
	
	@RequestMapping("/activity")
	public ModelAndView activity(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("activity");
		return mv;
	}
	
	
	@RequestMapping("/cholesterolMonitor")
	public ModelAndView cholesterolTracker(int pid, @RequestParam("timeOfCholesterol") String gtime, String cholesterol)
	{
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);	 
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		if(!(p==null))
		{
			p.setTimeOfCholesterol(glutime);
			p.setCholesterol(cholesterol);
			prrepo.save(p);
		}
		else
		{
			pr.setTimeOfCholesterol(glutime);
			pr.setCholesterol(cholesterol);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("cholesterol");
		return mv;
	}
	
	
	@RequestMapping("/fat")
	public ModelAndView fat(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("cholesterol");
		return mv;
	}
	
	
	@RequestMapping("/pressureMonitor")
	public ModelAndView pressureTracker(int pid, @RequestParam("timeOfPressure")String gtime, String pressure)
	{
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);	 
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		if(!(p==null))
		{
			p.setTimeOfPressure(glutime);
			p.setPressure(pressure);
			prrepo.save(p);
		}
		else
		{
			pr.setTimeOfPressure(glutime);
			pr.setPressure(pressure);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("pressure");
		return mv;
	}
	
	
	@RequestMapping("/pressure")
	public ModelAndView pressure(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("pressure");
		return mv;
	}
	
	
	@RequestMapping("/thyroidMonitor")
	public ModelAndView thyroidTracker(int pid, @RequestParam("timeOfThyroid")String gtime, String thyroid)
	{
		
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);	 
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		if(!(p==null))
		{
			p.setTimeOfThyroid(glutime);
			p.setThyroid(thyroid);
			prrepo.save(p);
		}
		else
		{
			pr.setTimeOfThyroid(glutime);
			pr.setThyroid(thyroid);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("thyroid");
		return mv;
	}
	
	
	@RequestMapping("/thyroid")
	public ModelAndView thyroid(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("thyroid");
		return mv;
	}
	
	@RequestMapping("/caloryMonitor")
	public ModelAndView caloriesTracker(int pid, @RequestParam("dateOfCalories") String gtime, String calories, @RequestParam("timeOfCaloriesIntake") String caloryIntake)
	{
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);
		
		String valueFromHtml1 = caloryIntake;
		String dateTimeString1 = valueFromHtml1.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime1 = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime1);
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		if(!(p==null))
		{
			p.setDateOfCalories(glutime);
			p.setCalories(calories);
			p.setTimeOfCaloriesIntake(glutime1);
			prrepo.save(p);
		}
		else
		{
			pr.setDateOfCalories(glutime);
			pr.setCalories(calories);
			pr.setTimeOfCaloriesIntake(glutime1);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("calories");
		return mv;

		
	}
	
	@RequestMapping("/calories")
	public ModelAndView calories(int pid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("calories");
		return mv;
	}
	
	
	@RequestMapping("/dietMonitor")
	public ModelAndView dietTracker(int pid, @RequestParam("dateOfDiet") String gtime, String diet, @RequestParam("timeOfDietIntake") String dietTime)
	{
		String valueFromHtml =gtime;
		String dateTimeString = valueFromHtml.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime);
		
		String valueFromHtml1 = dietTime;
		String dateTimeString1 = valueFromHtml1.replace("T", " ");
		System.out.println();
		DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime glutime1 = LocalDateTime.parse(dateTimeString, formatter);
		System.out.println(glutime1);
		ModelAndView mv = new ModelAndView();
		PatientRecord p = prrepo.findByPid(pid);
		PatientRecord pr=new PatientRecord();
		if(!(p==null))
		{
			p.setDateOfDiet(glutime);
			p.setDiet(diet);
			p.setTimeOfDietIntake(glutime1);
			prrepo.save(p);
		}
		else
		{
			pr.setDateOfDiet(glutime);
			pr.setDiet(diet);
			pr.setTimeOfDietIntake(glutime1);
			prrepo.save(pr);
		}
		mv.addObject("msg","Data are Added Successfully");
		mv.addObject("pid", pid);
		mv.setViewName("diet");
		return mv;
	}
	
	
	@RequestMapping("/diettracker")
	public ModelAndView diettracker(int pid)
	{
		ModelAndView mv=new ModelAndView("");
		mv.addObject("pid", pid);
		mv.setViewName("diet");
		return mv;
	}
	
	
	/**********forgot***********/
	@RequestMapping("/forgetpassword1")
	public ModelAndView forgetPass()
	{
		
		ModelAndView mv=new ModelAndView("forgetpassword");
		return mv;
	}
	
	
	@RequestMapping("/forgotPass")
	public ModelAndView forgotPass(@RequestParam String userId, String ContactNumber, String EmailAddress, HttpSession session, Model model)
	{
		
		try {
			ModelAndView mv=new ModelAndView("revoverpassword");
			Patient patient = pr.findByUserId(userId);
			if(patient.getContactNumber().equals(ContactNumber) && patient.getEmailAddress().equals(EmailAddress)) {
				mv=new ModelAndView("revoverpassword");
				return mv;
			}
			else {
				mv=new ModelAndView("forgetpassword");
				session.setAttribute("errormsg", "Invalid Details!");
			}
			return mv;
		}
		catch(Exception e){
			ModelAndView mv=new ModelAndView("forgetpassword");
			session.setAttribute("errormsg", "Invalid User Id!");
			return mv;
		}
	}
	
	@RequestMapping("/changePass")
	public ModelAndView changePass(@RequestParam String userId, String Password, String newPassword, HttpSession session, Model model)
	{
		try {
			ModelAndView mv=new ModelAndView("patientlogin");
			Patient patient = pr.findByUserId(userId);
			if(Password.equals(newPassword)) {
				patient.setPassword(newPassword);
				pr.save(patient);
				mv=new ModelAndView("patientlogin");
				mv.addObject("errmsg","Password Changed");
				return mv;
			}
			else {
				 mv=new ModelAndView("revoverpassword");
				session.setAttribute("errmsg", "Both password should Same!");
				
			}
			return mv;
		}
		catch(Exception e) {
			
			ModelAndView mv=new ModelAndView("revoverpassword");
			session.setAttribute("errmsg", "Invalid User ID!");
			return mv;
		}
	}

	

	@RequestMapping("/forgotpassword2")
	public ModelAndView changePass( HttpSession session, Model model)
	{
		
		ModelAndView mv=new ModelAndView("dforgotpassword");
		return mv;
	}
	
	
	@RequestMapping("/dforgotPass")
	public ModelAndView forgotPass1(@RequestParam String userId, String ContactNumber, String EmailAddress, HttpSession session, Model model)
	{
		
		try {
			ModelAndView mv=new ModelAndView("drevoverpassword");
			Doctor doctor = dr.findByUserId(userId);
			if(doctor.getContactNumber().equals(ContactNumber) && doctor.getEmailAddress().equals(EmailAddress)) {
				mv=new ModelAndView("drevoverpassword");
				return mv;
			}
			else {
				mv=new ModelAndView("dforgotpassword");
				session.setAttribute("errormsg", "Invalid Details!");
			}
			return mv;
		}
		catch(Exception e){
			ModelAndView mv=new ModelAndView("dforgotpassword");
			session.setAttribute("errormsg", "Invalid User Id!");
			return mv;
		}
	}
	
	@RequestMapping("/dchangePass")
	public ModelAndView dchangePass(@RequestParam String userId, String Password, String newPassword, HttpSession session, Model model)
	{
		try {
			ModelAndView mv=new ModelAndView("dlogin");
			Doctor doctor = dr.findByUserId(userId);
			if(Password.equals(newPassword)) {
				doctor.setPassword(newPassword);
				dr.save(doctor);
				mv=new ModelAndView("dlogin");
				mv.addObject("errmsg","Password Changed");
				return mv;
			}
			else {
				 mv=new ModelAndView("drevoverpassword");
				session.setAttribute("errmsg", "Both password should Same!");
				
			}
			return mv;
		}
		catch(Exception e) {
			
			ModelAndView mv=new ModelAndView("drevoverpassword");
			session.setAttribute("errmsg", "Invalid User ID!");
			return mv;
		}
	}
		
}





