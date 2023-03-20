package database;


import java.io.File;
import java.io.IOException;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {
	private static final SessionFactory sessionFactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {
		System.out.println("build factory");
    	File fi = new File("hibernate.cfg.xml"); 
    	
    	System.out.println(fi.exists() );
		
		
		try {
			// Create the SessionFactory from hibernate.cfg.xml
			Configuration con = new Configuration();
			con.configure("hibernate.cfg.xml");
			System.out.println("connection on");
			return con.buildSessionFactory();
		} catch (Throwable ex) {
			// Make sure you log the exception, as it might be swallowed
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}