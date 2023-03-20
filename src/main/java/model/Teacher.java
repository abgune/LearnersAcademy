package model;

import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "teachers")
public class Teacher {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "surname")
	private String surname;
	@Column(name = "dob")
	private Date dob;
	@Column(name = "training_area")
	private String trainingArea;

	@OneToMany(mappedBy = "teacher")
	private Set<ClassesSub> classes = new HashSet<>();

	public Teacher() {

	}

	public Teacher(String name, String surname, Date dob, String trainingArea) {
		super();
		this.name = name;
		this.surname = surname;
		this.dob = dob;
		this.trainingArea = trainingArea;
	}

	public int getId() {
		return id;
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

	public int getAge() {

		LocalDate dateOfBirth = LocalDate.ofInstant(dob.toInstant(), ZoneId.systemDefault());
		LocalDate currentDate = LocalDate.now();
		Period period = Period.between(dateOfBirth, currentDate);
		return period.getYears();
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getTrainingArea() {
		return trainingArea;
	}

	public void setTrainingArea(String trainingArea) {
		this.trainingArea = trainingArea;
	}

}