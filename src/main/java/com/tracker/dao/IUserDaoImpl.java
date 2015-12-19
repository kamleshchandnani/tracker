package com.tracker.dao;

import com.tracker.models.UserModel;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Query;
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
	
	public Boolean authenticateUser(UserModel userModel){
		SessionFactory sessionfact = SessionFactoryUtil.getSessionFactory();
		Query query=SessionFactoryUtil.session.createQuery("from UserModel um where um.u_name=:u_name and um.u_password=:u_password" );
		query.setString("u_name", userModel.getU_name());
		query.setString("u_password", userModel.getU_password());
		UserModel resModel=(UserModel)query.uniqueResult();
		if(resModel==null){
			sessionfact.close();
			return false;
		}
		else{
			sessionfact.close();
			return true;	
		}
	}
	public Boolean existingUser(UserModel userModel){
		SessionFactory sessionfact = SessionFactoryUtil.getSessionFactory();
		Query query=SessionFactoryUtil.session.createQuery("from UserModel um where um.u_name=:u_name" );
		query.setString("u_name", userModel.getU_name());
		UserModel resModel=(UserModel)query.uniqueResult();
		if(resModel==null){
			sessionfact.close();
			return false;
		}
		else{
			sessionfact.close();
			return true;	
		}
	}
}
