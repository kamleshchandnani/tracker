package com.tracker.services;

import java.util.List;

import com.tracker.models.IssueModel;

public interface IIssueServices {
	public void createIssue(IssueModel issueModel);
	public List<IssueModel> getIssues();
}
