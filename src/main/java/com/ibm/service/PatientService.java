package com.ibm.service;

import java.util.List;

import com.ibm.model.Patient;

public interface PatientService {
	
	public void addPatient(Patient patient);
	public List<Patient> getAllPatient();
	public Patient getPatient(int id);
	public Patient updatePatient(Patient patient);
	public List<Patient> patientSearch(String searchText);
	public List<Patient> filterPatient(String orderWay);
	public List<Patient> betweenDatesPatient(String startDate, String endDate);
}
