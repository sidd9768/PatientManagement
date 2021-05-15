package com.ibm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibm.dao.PatientDAO;
import com.ibm.model.Patient;

@Service
@Transactional
public class PatientServiceImp implements PatientService {
	
	@Autowired
	private PatientDAO patientDAO;

	@Override
	@Transactional
	public void addPatient(Patient patient) {
		patientDAO.addPatient(patient);
	}

	@Override
	@Transactional
	public List<Patient> getAllPatient() {
		return patientDAO.getAllEmployee();
	}

	@Override
	@Transactional
	public Patient getPatient(int id) {
		return patientDAO.getPatient(id);
	}

	@Override
	public Patient updatePatient(Patient patient) {
		return patientDAO.updatePatient(patient);
	}

	
	
}
