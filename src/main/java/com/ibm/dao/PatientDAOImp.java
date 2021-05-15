package com.ibm.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibm.model.Patient;


@Repository
public class PatientDAOImp implements PatientDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPatient(Patient patient) {
		sessionFactory.getCurrentSession().saveOrUpdate(patient);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> getAllEmployee() {
		return sessionFactory.getCurrentSession().createQuery("from Patient").list();
	}

	@Override
	public Patient getPatient(int id) {
		Patient patient = (Patient) sessionFactory.getCurrentSession().load(Patient.class, id);
		return patient;
	}

	@Override
	public Patient updatePatient(Patient patient) {
		sessionFactory.getCurrentSession().update(patient);
		return patient;
	}

}
