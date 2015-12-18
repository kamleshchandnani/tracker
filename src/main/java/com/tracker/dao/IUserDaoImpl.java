package com.tracker.dao;

import com.tracker.models.UserModel;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.tracker.utils.SessionFactoryUtil;

@Repository
@Transactional
public class IUserDaoImpl implements IUserDao {
	public void createUser(UserModel userModel) {
		@SuppressWarnings("unused")
		SessionFactory sessionfact = SessionFactoryUtil.getSessionFactory();
		Transaction tx = null;
		try {
			tx = SessionFactoryUtil.session.beginTransaction();
			SessionFactoryUtil.session.save(userModel);
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		}
		finally {
			tx.commit();
			SessionFactoryUtil.session.close();
		}

	}
}
