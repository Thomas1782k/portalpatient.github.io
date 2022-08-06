package com.patient.entity.cont;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.patient.entity.Admin;
import com.patient.entity.Appointment;
import com.patient.entity.Doctor;
import com.patient.entity.Patient;
import com.patient.entity.repo.AdminRepo;
import com.patient.entity.repo.AppointmentRepo;
import com.patient.entity.repo.DoctorRepo;
import com.patient.entity.repo.PatientRecordRepo;
import com.patient.entity.repo.PatientRepo;
import com.patient.entity.repo.UpdateRepo;

@Controller
public class AdminController {
	@Autowired
	public DoctorRepo dr;
	@Autowired
	PatientRepo pr;
	@Autowired
	AdminRepo ar;
	@Autowired
	AppointmentRepo apr;
	@Autowired
	PatientRecordRepo prrepo;
	@Autowired
	UpdateRepo ur;
	
	@RequestMapping("/")
	public String docHome()
	{
		return "index1";
	}
	
	@RequestMapping("/ind")
	public String ind()
	{
		return "ind";
	}
	
	@RequestMapping("/selection")
	public ModelAndView select(@RequestParam("flexRadioDefault")String role, @RequestParam("opt")String opt)
	{
		ModelAndView mv = new ModelAndView();
		switch(role)
		{
		case "docter":
		{
			if(opt.equals("Login"))
			{
				mv.setViewName("dlogin");
			}
			else 
			{
				mv.setViewName("dreg1");
			}
			break;
		}
		case "patient":
		{	
			if(opt.equals("Login"))
			{
				mv.setViewName("patientlogin");
			}
			else
			{
				mv.setViewName("patientreg");
			}
			break;
		}
		
		default:
			mv.setViewName("adminlogin");
			break;
		}
		return mv;	
}
	
	@RequestMapping("/about")
	public ModelAndView about()
	{
		ModelAndView mv=new ModelAndView("about");
		return mv;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact()
	{
		ModelAndView mv=new ModelAndView("contact");
		return mv;
	}
	
	@RequestMapping("/didreg")
	public ModelAndView didreg()
	{
		ModelAndView mv=new ModelAndView("dreg1");
		return mv;
	}
	
	@RequestMapping("/dipreg")
	public ModelAndView dipreg()
	{
		ModelAndView mv=new ModelAndView("patientreg");
		return mv;
	}

	/****************Admin**************/
	
	@RequestMapping("/checka")
	public ModelAndView checka( @RequestParam("userId") String uid,@RequestParam("password") String pass )
	{
		
		try 
		{
			Admin d =ar.findByUserId(uid);
			System.out.println(d.getUserId()+" & "+d.getPassword());
			ModelAndView mv = new ModelAndView();
			if(d.getUserId().equals(uid) && d.getPassword().equals(pass))
			{
				
				
				List<Doctor> doc= dr.findAll();
				List<Patient> pat=pr.findAll();
				
				System.out.println(doc.size());
				
				for(Doctor dl: doc)
				{
					System.out.print(dl.getDid()+" ");
					System.out.println(  dl.getFirstName());
				}
				mv.addObject("doctors", doc);
				mv.addObject("patients", pat);
				mv.setViewName("adminhome");
			}
			else if(d.getUserId().equals(uid) && !(d.getPassword().equals(pass)) )
			{
				mv.addObject("errmsg","Incorrect Password");
				mv.setViewName("adminlogin");
			}
			return mv;
			
		}
		catch(Exception e)
		{
			ModelAndView mv  = new ModelAndView();
			mv.addObject("errmsg","Invalid UserId");
			mv.setViewName("adminlogin");
			System.out.println(e);
			return mv;
		}
	}
	
	@RequestMapping("/admhome")
	public ModelAndView admhome()
	{
		ModelAndView mv=new ModelAndView("adminhome");
		return mv;
	}
	
	
	@RequestMapping("/appo")
	public ModelAndView appo(int pid,String pname, @RequestParam("appointmentDate") String dtime,String symptoms, String doctor  )
	{
		ModelAndView mv=new ModelAndView();        
		
		        String valueFromHtml =dtime;
				String dateTimeString = valueFromHtml.replace("T", " ");

				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
				LocalDateTime appointmentDate = LocalDateTime.parse(dateTimeString, formatter);
				
				//int doc=Integer.parseInt(doctor);
				Appointment ap=apr.findByPid(pid);
				Appointment dcr=apr.findByAppointmentDate(appointmentDate);
				if(!(dcr==null))
				{
				if(!(dcr.getDate().equals(appointmentDate)&&dcr.getDoctor().equals(doctor)))
				{
				if(!(ap==null))
				{
					ap.setAppointmentDate(appointmentDate);
					ap.setSymptoms(symptoms);
					ap.setDoctor(doctor);
					mv.addObject("msg1", "Appointment Fixed");
					apr.save(ap);
					
				}

				else
				{
				Appointment appo=new Appointment(pid,pname,appointmentDate,symptoms,doctor);
				mv.addObject("msg1", "Appointment Fixed");
				apr.save(appo);
				}

				}
				
				else
				{
					mv.addObject("msg", "Change the time/date");
				}
				}
				else 
				{
					if(!(ap==null))
					{
					ap.setAppointmentDate(appointmentDate);
					ap.setSymptoms(symptoms);
					ap.setDoctor(doctor);
					mv.addObject("msg1", "Appointment Fixed");
					apr.save(ap);
					}
					
					else
					{
					Appointment appo=new Appointment(pid,pname,appointmentDate,symptoms,doctor);
					mv.addObject("msg1", "Appointment Fixed");
					apr.save(appo);
					}
					
				}
				
				List<Doctor> doc= dr.findAll();
				List<Patient> pat=pr.findAll();
				Patient pch=pr.findByPid(pid);

		mv.addObject("doctors", doc);
		mv.addObject("patients", pat);		
		mv.setViewName("adminhome");
		return mv;
	}

	
}
