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
		return patientDAO.getAllPatient();
	}

	@Override
	@Transactional
	public Patient getPatient(int id) {
		return patientDAO.getPatient(id);
	}

	@Override
	@Transactional
	public Patient updatePatient(Patient patient) {
		return patientDAO.updatePatient(patient);
	}

	@Override
	@Transactional
	public List<Patient> patientSearch(String searchText) {
		return patientDAO.findPatient(searchText);
	}

	@Override
	@Transactional
	public List<Patient> betweenDatesPatient(String startDate, String endDate) {
		return patientDAO.betweenDatesPatient(startDate, endDate);
	}

	@Override
	@Transactional
	public List<Patient> filterPatient(String orderWay) {
		return patientDAO.filterPatient(orderWay);
	}

	
	
}
