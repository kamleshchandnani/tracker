package com.tracker.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.models.IssueModel;
import com.tracker.dao.IIssueDao;;

@Service
public class IIssueServicesImpl implements IIssueServices {
	@Autowired 
	private IIssueDao issueDao;
	public void createIssue(IssueModel issueModel){
		issueDao.createIssue(issueModel);
	}
	public List<IssueModel> getIssues(){
		return issueDao.getIssues();
		
	}

}
