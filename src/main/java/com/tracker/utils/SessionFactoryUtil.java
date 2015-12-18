package com.tracker.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class SessionFactoryUtil {
	public static Session session = null;

	public static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration().configure();

		ServiceRegistryBuilder builder = new ServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		SessionFactory sessionfactory = configuration
				.buildSessionFactory(builder.buildServiceRegistry());
		session = sessionfactory.openSession();

		return configuration
				.buildSessionFactory(builder.buildServiceRegistry());
	}

}
