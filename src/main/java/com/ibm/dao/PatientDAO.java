package com.ibm.dao;

import java.util.List;

import com.ibm.model.Patient;

public interface PatientDAO {
	
	public void addPatient(Patient patient);
	public List<Patient> getAllEmployee();
	public Patient getPatient(int id);
	public Patient updatePatient(Patient patient);

}
