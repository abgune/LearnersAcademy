import org.hibernate.Session;
import org.hibernate.SessionFactory;

import database.HibernateUtil;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session;
		
		SessionFactory factory = HibernateUtil.getSessionFactory();
		session = factory.openSession();
		

	}

}
