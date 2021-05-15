package com.ibm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.model.Patient;
import com.ibm.service.PatientService;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService patientService;
	
	@RequestMapping(value = "/")
	public ModelAndView homePage(ModelAndView model) {
		return new ModelAndView("home", "message", "This is patient Management");
	}
	
	@RequestMapping(value = "/newPatient", method = RequestMethod.GET)
	public ModelAndView newPatient(ModelAndView model) {
		Patient patient = new Patient();
		model.addObject("patient", patient);
		model.setViewName("patientForm");
		return model;
	}
	
	@RequestMapping(value = "/savePatient", method = RequestMethod.POST)
	public ModelAndView savePatient(@ModelAttribute Patient patient) {
		if(patient.getPatient_id() == 0) {
			patientService.addPatient(patient);
		}else {
			patientService.updatePatient(patient);
		}
		return new ModelAndView("redirect:/");
	}

}
