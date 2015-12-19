package com.tracker.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.engine.transaction.spi.IsolationDelegate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tracker.models.IssueModel;
import com.tracker.models.UserModel;
import com.tracker.utils.SessionFactoryUtil;

@Repository
@Transactional
public class IIssueDaoImpl implements IIssueDao {

	public void createIssue(IssueModel issueModel) {
		@SuppressWarnings("unused")
		SessionFactory sessionfact = SessionFactoryUtil.getSessionFactory();
		Transaction tx = null;
		try {
			tx = SessionFactoryUtil.session.beginTransaction();
			SessionFactoryUtil.session.save(issueModel);
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			tx.commit();
			SessionFactoryUtil.session.close();
		}
	}

	public List<IssueModel> getIssues() {
		List<IssueModel> issue=null;
		try {
			SessionFactory sessionfact = SessionFactoryUtil.getSessionFactory();
			@SuppressWarnings("unchecked")
			List<IssueModel> issueGet = SessionFactoryUtil.session.createQuery(
					"from IssueModel I where I.issue_status='Open'").list();
			sessionfact.close();
			return issueGet;
		} catch (Exception e) {
			System.out.println("Error caught:" + e.getMessage());
		} 
		return issue;
	}

}
