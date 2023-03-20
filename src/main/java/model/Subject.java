package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "subjects")
public class Subject {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "name")
	private String name;

	@ManyToMany(mappedBy = "subjects")
	private Set<ClassesSub> classes = new HashSet<>();
	

	@Override
	public String toString() {
		return this.name;
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

	public Set<ClassesSub> getClasses() {
		return classes;
	}

	public void setClasses(Set<ClassesSub> classes) {
		this.classes = classes;
	}
	
	

}