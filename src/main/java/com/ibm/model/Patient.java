package com.ibm.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="Patient_Registration")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int patient_id;

	@Column
	private String  patient_name;

	@Column
	private String phonenumber;

	@Column
	private String alternate_phonenumber;

	@Column
	private String emai_id;

	@Column
	private String address;

	@Column
	private Date dateofbirth;

	@Column
	private Integer age;

	@Column
	private String gender;

	@Column
	private String emergency_contact;
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date_of_registration")
	private Date dateofregistration ;

	public int getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}

	public String getPatient_name() {
		return patient_name;
	}

	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getAlternate_phonenumber() {
		return alternate_phonenumber;
	}

	public void setAlternate_phonenumber(String alternate_phonenumber) {
		this.alternate_phonenumber = alternate_phonenumber;
	}

	public String getEmai_id() {
		return emai_id;
	}

	public void setEmai_id(String emai_id) {
		this.emai_id = emai_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmergency_contact() {
		return emergency_contact;
	}

	public void setEmergency_contact(String emergency_contact) {
		this.emergency_contact = emergency_contact;
	}

	public Date getDateofregistration() {
		return dateofregistration;
	}

	public void setDateofregistration(Date dateofregistration) {
		this.dateofregistration = dateofregistration;
	}
}