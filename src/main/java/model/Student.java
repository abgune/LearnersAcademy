package model;

import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "students")
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "surname")
	private String surname;
	@Column(name = "dob")
	private Date dob;
	@Column(name = "identity_number")
	private String identity;
	@Column(name = "address")
	private String address;
	
	@ManyToOne
    private ClassesSub classesSub;

	public Student() {

	}

	public Student(String name, String surname, Date dob, String identity, String address) {
		this.name = name;
		this.surname = surname;
		this.dob = dob;
		this.identity = identity;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getId() {
		return id;
	}
	
	public int getAge() {

		LocalDate dateOfBirth = LocalDate.ofInstant(dob.toInstant(), ZoneId.systemDefault());
		LocalDate currentDate = LocalDate.now();
		Period period = Period.between(dateOfBirth, currentDate);
		return period.getYears();
	}

	public ClassesSub getClassesSub() {
		return classesSub;
	}

	public void setClassesSub(ClassesSub classesSub) {
		this.classesSub = classesSub;
	}
	
	

}