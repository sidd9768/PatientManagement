package com.ibm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.model.Patient;
import com.ibm.service.PatientService;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService patientService;
	
	@RequestMapping(value = {"/home"})
	public ModelAndView newHome(ModelAndView model) {
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="test")
	public ModelAndView test(ModelAndView model) {
		return new ModelAndView("test");
	}
	
	@RequestMapping(value = "/allPatient")
	public ModelAndView listBlog(ModelAndView model) {
		List<Patient> listPatient = patientService.getAllPatient();
		model.addObject("listPatient", listPatient);
		model.setViewName("patientList");
		return model;
	}
	
	@RequestMapping(value = "/patientSearch")
	public ModelAndView patientSearch(ModelAndView model, @RequestParam("query") String freeText) {
		List<Patient> listPatient = patientService.patientSearch(freeText);
		model.addObject("listPatient", listPatient);
		model.setViewName("patientList");
		return model;
	}
	
	@RequestMapping(value = "/betweenDatesPatient")
	public ModelAndView betweenDatesPatient(ModelAndView model, @RequestParam("start-date") String startDate, @RequestParam("end-date") String endDate) {
		List<Patient> betweenDatesPatients = patientService.betweenDatesPatient(startDate, endDate);
		model.addObject("betweenDatesPatients", betweenDatesPatients);
		model.setViewName("betweenDate");
		return model;
	}
	
	@RequestMapping(value = "/filterPatient")
	public ModelAndView filterPatient(ModelAndView model, @RequestParam("order")String orderWay) {
		System.out.println("\n\n\n\n\n Order value " + orderWay + " \n\n\n\n\n");
		List<Patient> filterPatients = patientService.filterPatient(orderWay);
		model.addObject("filterPatients", filterPatients);
		model.setViewName("filterPatient");
		return model;
	}
	
	@RequestMapping(value = "/newPatient", method = RequestMethod.GET)
	public ModelAndView newPatient(ModelAndView model) {
		Patient patient = new Patient();
		model.addObject("patient", patient);
		model.setViewName("patient_form");
		return model;
	}
	
	@RequestMapping(value = "/savePatient", method = RequestMethod.POST)
	public ModelAndView savePatient(@ModelAttribute Patient patient) {
		if(patient.getPatient_id() == 0) {
			patientService.addPatient(patient);
		}else {
			patientService.updatePatient(patient);
		}
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping(value = "/editPatient", method = RequestMethod.GET)
    public ModelAndView editContact(HttpServletRequest request) {
		
        int patientId = Integer.parseInt(request.getParameter("id"));
        Patient patient = patientService.getPatient(patientId);
        ModelAndView model = new ModelAndView("patient_form");
        model.addObject("patient", patient);
 
        return model;
    }

}
