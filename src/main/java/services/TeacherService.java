package services;

import java.util.ArrayList;
import javax.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import database.HibernateUtil;
import model.ClassesSub;
import model.Subject;
import model.Teacher;

public class TeacherService {
	private Session session = null;

	public TeacherService() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		this.session = sessionFactory.openSession();

	}

	public ArrayList<Teacher> getAllTeachers() {
		TypedQuery<Teacher> teachers = session.createQuery("from Teacher");
		return (ArrayList<Teacher>) teachers.getResultList();
	}

	public int storeTeacher(Teacher teacher) {
		session.save(teacher);
		session.beginTransaction();
		session.getTransaction().commit();
		return teacher.getId();
	}
	
	public int assign(int teacherId, int subjectId, int classId) {
	    Transaction transaction = session.beginTransaction();

		Teacher teacher = session.get(Teacher.class, teacherId);
		Subject subject = session.get(Subject.class, subjectId);

		ClassesSub classToUpdate = session.get(ClassesSub.class, classId);

		// Assign the Teacher and Subject objects to the Class object
		classToUpdate.setTeacher(teacher);
		classToUpdate.setSubject(subject);

		// Update the Class object
		 session.update(classToUpdate);
		    transaction.commit();

		 return 1;
		
	}

}