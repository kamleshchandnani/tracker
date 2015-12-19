package com.tracker.dao;

import java.util.List;

import com.tracker.models.IssueModel;
public interface IIssueDao {
	public void createIssue(IssueModel issueModel);
	public List<IssueModel> getIssues();

}
