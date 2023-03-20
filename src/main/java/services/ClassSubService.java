package services;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import database.HibernateUtil;
import model.ClassesSub;
import model.Subject;

public class ClassSubService {

	private Session session;

	public ClassSubService() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		session = factory.openSession();
	}

	public int storeClasses(ClassesSub classesSub, int id) {
		session.save(classesSub);
	
		Subject subj = (Subject) session.get(Subject.class, id);
		if(subj != null) {
			classesSub.getSubjects().add(subj);

		}
		
		session.beginTransaction();
		session.getTransaction().commit();

		return classesSub.getId();
	}

	public ArrayList<model.ClassesSub> getAllClasses() {
		ArrayList<model.ClassesSub> cls = (ArrayList<model.ClassesSub>) session.createQuery("FROM ClassesSub").list();
		return cls;
	}

}