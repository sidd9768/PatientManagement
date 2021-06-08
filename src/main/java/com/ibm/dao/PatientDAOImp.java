package com.ibm.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
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
	public List<Patient> getAllPatient() {
		return sessionFactory.getCurrentSession().createQuery("from Patient").list();
	}

	@Override
	public Patient getPatient(int id) {
		Patient patient = (Patient) sessionFactory.getCurrentSession().get(Patient.class, id);
		return patient;
	}

	@Override
	public Patient updatePatient(Patient patient) {
		sessionFactory.getCurrentSession().update(patient);
		return patient;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> findPatient(String searchText) {

		Query qry = sessionFactory.getCurrentSession().createQuery("from Patient where patient_name LIKE :name")
                .setParameter("name", "%"+searchText+"%");
		List<Patient> foundPatients = qry.list();
		return foundPatients;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> betweenDatesPatient(String startDate, String endDate) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date frmDate;
		Date enDate;
		List<Patient> patients = null;
		try {
			frmDate =format.parse(startDate);
			enDate = format.parse(endDate);
			patients = sessionFactory.getCurrentSession()
			.createQuery("FROM Patient AS c WHERE cast (c.dateofregistration as date) BETWEEN :stDate AND :edDate ")
			.setParameter("stDate", frmDate)
			.setParameter("edDate", enDate)
			.list();
		}catch(Exception e) {
			System.out.println(e);
		}
		System.out.println("\n\n\nHERE IS THE LIST OF PATIENTS\n\n\n\n" + patients);
		return patients;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> filterPatient(String orderWay) {
		if(orderWay.equals("Ascending")) {
			Query qry = sessionFactory.getCurrentSession().createQuery("from Patient order by date_of_registration asc ");
			List<Patient> patients = qry.list();
			return patients;
		}else {
			Query qry = sessionFactory.getCurrentSession().createQuery("from Patient order by date_of_registration desc ");
			List<Patient> patients = qry.list();
			return patients;	
		}
	}

}
