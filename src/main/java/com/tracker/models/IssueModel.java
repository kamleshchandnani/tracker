package com.tracker.models;

import javax.persistence.*;

@Entity
@Table(name = "issue_master")
public class IssueModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "serial")
	private int issue_id;

	@Column(nullable = false, length = 30)
	private String issue_title;

	@Column(nullable = false, columnDefinition = "Text")
	private String issue_desc;

	@Column(nullable = false, length = 30)
	private String created_by;

	@Column(nullable = false, length = 12)
	private String issue_status;

	public int getIssue_id() {
		return issue_id;
	}

	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}

	public String getIssue_title() {
		return issue_title;
	}

	public void setIssue_title(String issue_title) {
		this.issue_title = issue_title;
	}

	public String getIssue_desc() {
		return issue_desc;
	}

	public void setIssue_desc(String issue_desc) {
		this.issue_desc = issue_desc;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getIssue_status() {
		return issue_status;
	}

	public void setIssue_status(String issue_status) {
		this.issue_status = issue_status;
	}

}
