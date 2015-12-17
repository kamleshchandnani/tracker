package com.tracker.controllers;

import java.util.List;


import com.tracker.models.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tracker.services.*;

@Controller
public class TrackerController {
	/*@Autowired
	protected IUserServices userServiceObj;
	@Autowired
	protected IIssueServices issueServiceObj;*/

	// initial page load
	@RequestMapping(value = { "/*" }, method = RequestMethod.GET)
	public String loadIndex() {
		return "index";
	}
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String loadHome() {
		return "home";
	}
	
	@RequestMapping(value = { "/viewissues" }, method = RequestMethod.GET)
	public String viewIssues() {
		return "viewissues";
	}
	
	@RequestMapping(value = { "/createissue" })
	public String createIssue() {
		return "createissue";
	}
}
