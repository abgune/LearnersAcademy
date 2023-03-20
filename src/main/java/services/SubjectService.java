package services;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import database.HibernateUtil;
import model.Subject;

public class SubjectService {
	private Session session;
	
	public SubjectService() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		session = factory.openSession();
	}
	
	public int storeSubject(Subject subject) {
		session.save(subject);
		session.beginTransaction();
		session.getTransaction().commit();
		return subject.getId();
	}
	
	
	public ArrayList<Subject> getAllSubjects(){
		ArrayList<Subject> subjects = (ArrayList<Subject>) session.createQuery("FROM Subject").list();
		return subjects;
	}

}