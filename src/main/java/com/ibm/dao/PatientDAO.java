package com.ibm.dao;

import java.util.List;

import com.ibm.model.Patient;

public interface PatientDAO {
	
	public void addPatient(Patient patient);
	public List<Patient> getAllPatient();
	public Patient getPatient(int id);
	public Patient updatePatient(Patient patient);
	public List<Patient> findPatient(String searchText);
	public List<Patient> filterPatient(String orderWay);
	public List<Patient> betweenDatesPatient(String startDate, String endDate);
}
