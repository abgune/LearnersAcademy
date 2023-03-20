package services;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import database.HibernateUtil;
import model.ClassesSub;
import model.Student;

public class StudentService {
	Session session;
	
	public StudentService() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		session = factory.openSession();
	}
	
	public int storeStudent(Student student, int clId) {
		ClassesSub clsub = session.get(ClassesSub.class, clId);
		student.setClassesSub(clsub);
		session.save(student);
		session.beginTransaction();
		session.getTransaction().commit();
		return student.getId();
	}
	
	public ArrayList<Student> getAllStudents(){
		ArrayList<Student> students = (ArrayList<Student>) session.createQuery("FROM Student").getResultList();
		return students;
	}

}