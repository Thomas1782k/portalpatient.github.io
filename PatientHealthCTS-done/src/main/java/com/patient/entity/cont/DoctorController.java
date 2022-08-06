package com.patient.entity.cont;

// old

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.patient.entity.Appointment;
import com.patient.entity.Doctor;
import com.patient.entity.PatientRecord;
import com.patient.entity.Updateapp;
import com.patient.entity.repo.AdminRepo;
import com.patient.entity.repo.AppointmentRepo;
import com.patient.entity.repo.DoctorRepo;
import com.patient.entity.repo.PatientRecordRepo;
import com.patient.entity.repo.PatientRepo;
import com.patient.entity.repo.UpdateRepo;

@Controller
public class DoctorController {

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
	
	/*************Docter************/
	
	
	@RequestMapping("/check")
	public ModelAndView check( @RequestParam("uid") String uid,@RequestParam("pass") String pass ,HttpSession session)
	{
		
		try 
		{
			Doctor d = dr.findByUserId(uid);
			System.out.println(d.getUserId()+" & "+d.getPassword());
			ModelAndView mv = new ModelAndView();
			if(d.getUserId().equals(uid) && d.getPassword().equals(pass))
			{
				int did=d.getDid();
				mv.addObject("did",did);
				session.setAttribute("did", did);
				mv.addObject("dname", d.getFirstName());
				mv.setViewName("dhome1");
			}
			else if(d.getUserId().equals(uid) && !(d.getPassword().equals(pass)) )
			{
				mv.addObject("errmsg","Incorrect Password");
				mv.setViewName("dlogin");
			}
			return mv;
			
		}
		catch(Exception e)
		{
			ModelAndView mv  = new ModelAndView();
			mv.addObject("errmsg","Invalid UserId");
			mv.setViewName("dlogin");
			return mv;
		}
	}
	
	@RequestMapping("/dreg")
	public ModelAndView dreg( Doctor doc, String userId)
	{

		ModelAndView mv=new ModelAndView();
		Doctor d=dr.findByUserId(userId);
		if(d==null)
		{
			dr.save(doc);
			mv.setViewName("dlogin");
			mv.addObject("errormsg", "Registered Sucessfuly");
		}
		else if(!(d.getUserId().equals(doc.getUserId())))
				{
		dr.save(doc);
		mv.setViewName("dlogin");
		mv.addObject("errormsg", "Registered Sucessfuly");
				}
		else
		{
			mv.addObject("errormsg", "User Id already selected");
			mv.setViewName("dreg1");
		}
				
		
		
		return mv;
	}
	

	
	@RequestMapping("/dhome")
	public ModelAndView dhome(String dname)
	{
		ModelAndView mv=new ModelAndView("dhome1");
		
		mv.addObject("dname", dname);
		return mv;
	}
	@RequestMapping("/appointment")
	public ModelAndView appointment(HttpSession ses,String dname)
	{
		
		System.out.println("Hi"+ses.getAttribute("did"));
	    List<Appointment> appo = (List) apr.findByDoctor(ses.getAttribute("did").toString());
		ModelAndView mv=new ModelAndView();
		mv.addObject("dname", dname);
		mv.addObject("docApp", appo);
		mv.setViewName("appointment");
		return mv;
	}
	
	@RequestMapping("/updaterec")
	public ModelAndView updateRecords(HttpSession ses,String dname)
	{
		
		System.out.println("Hi"+ses.getAttribute("did"));
		List<Updateapp> appo = (List) ur.findByDoctor(ses.getAttribute("did").toString());
		ModelAndView mv=new ModelAndView();
		mv.addObject("dname", dname);
		mv.addObject("docApp", appo);
		mv.setViewName("updaterecords");
		return mv;
	}
	
	@RequestMapping("/patient")
	public ModelAndView patient(HttpSession ses , String pid,String pname,String doc,String symp,String date, String dname,String prescription)
	{
		
		ModelAndView mv=new ModelAndView();
		System.out.println("final"+doc);
	
		int id=Integer.parseInt(pid);

		PatientRecord precord=prrepo.findByPid(id);
		PatientRecord pnull=new PatientRecord();
		
		
		if(!(precord==null))
		{
		precord.setPrescription(prescription);
		prrepo.save(precord);
		}
		
		else
		{
			pnull.setPid(id);
			pnull.setPrescription(prescription);
			prrepo.save(pnull);
		}
		
		
		//List<Updateapp> up=(List) ur.findByDoctor(ses.getAttribute("did").toString());
		String dateTimeString = date.replace("T", " ");

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		LocalDateTime appointmentDate = LocalDateTime.parse(dateTimeString, formatter);
		Updateapp upre=ur.findByPid(id);
		
		
		if(!(upre==null))
		{
			upre.setPrescription(prescription);
			upre.setDoctor(doc);
			ur.save(upre);
			System.out.println(upre.getDoctor());
			
		}
		
		else
		{
		Updateapp upp=new Updateapp(id,pname,appointmentDate,symp,doc,prescription);
		ur.save(upp);
		}
		
		Appointment dapp=apr.findByPid(id);
		
		apr.deleteById(dapp.getAppid());
		List<Appointment> appo = (List) apr.findByDoctor(ses.getAttribute("did").toString());
		
		mv.addObject("dname", dname);
		mv.addObject("docApp", appo);
		mv.setViewName("appointment");
		return mv;
	}
	
	
	@RequestMapping("/updatepat")
	public ModelAndView Updatepat(HttpSession ses, String pid,String pname,String prescription,String dname)
	{
		System.out.println("final"+ses.getAttribute("did"));
		
		int id=Integer.parseInt(pid);
		
		PatientRecord pr=prrepo.findByPid(id);
		PatientRecord prn=new PatientRecord();
		Updateapp precord=ur.findByPid(id);
		Updateapp pnull=new Updateapp();
		
		
		if(!(precord==null))
		{
		precord.setPrescription(prescription);
		pr.setPrescription(prescription);
		prrepo.save(pr);
		ur.save(precord);
		}
		else
		{
			pnull.setPid(id);
			pnull.setPrescription(prescription);
			ur.save(pnull);
			prn.setPid(id);
			prn.setPrescription(prescription);
			prrepo.save(prn);
		}

		ModelAndView mv=new ModelAndView();
		
		mv.addObject("msg","report saved.");
		mv.addObject("pname",pname);
		mv.addObject("dname", dname);
		List<Updateapp> ap = (List) ur.findByDoctor(ses.getAttribute("did").toString());
		mv.addObject("docApp", ap);
		mv.setViewName("updaterecords");
		return mv;
	}
	
	@RequestMapping("/pp")
	public ModelAndView pp( String pid, String doc,String date, String symp,String pname,String dname )
	{
		
		
		int id=Integer.parseInt(pid);
				
		ModelAndView mv=new ModelAndView("patientrecord");
		
		PatientRecord pr=prrepo.findByPid(id);
		PatientRecord pr1=new PatientRecord();
		
		if(!(pr==null))	
		{
			
		
		mv.addObject("pid",id );
		mv.addObject("pname",pname );
			
		mv.addObject("dis",symp ); 
			
		mv.addObject("activity",pr.getActivity() ); 
			
		mv.addObject("bloodg",pr.getBloodGlucose() );
			
		mv.addObject("bmi",pr.getBmi() );
			
		mv.addObject("calories", pr.getCalories());
			
		mv.addObject("chol", pr.getCholesterol());
			
		mv.addObject("palcount", pr.getPlateletCount());
		
		mv.addObject("thyroid", pr.getThyroid());
		}
			
		
		else
		{
			mv.addObject("pid",id );
			mv.addObject("pname",pname );
			
			mv.addObject("dis",symp ); 

			mv.addObject("activity","NIL" ); 
			
			mv.addObject("bloodg","NIL" );
			
			mv.addObject("bmi","NIL" );
			
			mv.addObject("calories","NIL");
			
			mv.addObject("chol", "NIL");
			
			mv.addObject("palcount", "NIL");
			
			mv.addObject("thyroid", "NIL");
		}
		
		mv.addObject("dname", dname);
		mv.addObject("date",date );
		mv.addObject("doc",doc );
		
		return mv;
	}
	
	@RequestMapping("/upat")
	public ModelAndView upat(HttpServletRequest req,String dname)
	{
		System.out.println(req.getParameter("pid"));
		
		int pid=Integer.parseInt(req.getParameter("pid"));
		String pname=req.getParameter("pname");
		String dis=req.getParameter("symp");
				
		ModelAndView mv=new ModelAndView();
		
		PatientRecord pr=prrepo.findByPid(pid);
		PatientRecord pr1=new PatientRecord();
		
		Updateapp up=ur.findByPid(pid);
		
		if(!(pr==null))
		{
			mv.addObject("pid",pid );
			mv.addObject("pname",pname );
			
			mv.addObject("dis",dis ); 
			
			mv.addObject("activity",pr.getActivity() ); 
			
			mv.addObject("bloodg",pr.getBloodGlucose() );
			
			mv.addObject("bmi",pr.getBmi() );
			
			mv.addObject("calories", pr.getCalories());
			
			mv.addObject("chol", pr.getCholesterol());
			
			mv.addObject("palcount", pr.getPlateletCount());
			
			mv.addObject("thyroid", pr.getThyroid());
			
			mv.addObject("pres", up.getPrescription());
		}
	
		else
		{
			mv.addObject("pid",pid );
			mv.addObject("pname",pname );
			
			mv.addObject("dis",dis ); 

			mv.addObject("activity","NIL" ); 
			
			mv.addObject("bloodg","NIL" );
			
			mv.addObject("bmi","NIL" );
			
			mv.addObject("calories","NIL");
			
			mv.addObject("chol", "NIL");
			
			mv.addObject("palcount", "NIL");
			
			mv.addObject("thyroid", "NIL");
		}

		mv.addObject("dname", dname);
		mv.setViewName("updatepatientrecord");
		return mv;
	}

	

	/****************Patient**************/

	
/****************Admin**************/
	
	
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
