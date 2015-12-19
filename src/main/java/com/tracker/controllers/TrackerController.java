package com.tracker.controllers;

import java.io.Console;
import java.util.List;
import com.tracker.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tracker.services.*;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Controller
public class TrackerController {
	@Autowired
	protected IUserServices userServiceObj;

	@Autowired
	protected IIssueServices issueServiceObj;

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

	@RequestMapping(value = { "loginuser" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String authenticate(@RequestBody UserModel user) {
		Boolean authenticated = false;
		authenticated = userServiceObj.authenticateUser(user);
		if (authenticated) {
			System.out.println("Success login!!");
			return "success";
		} else {
			System.out.println("Error!!");
			return "error";
		}
	}
	
	@RequestMapping(value = { "checkuser" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String checkUser(@RequestBody UserModel user) {
		Boolean existing = false;
		existing = userServiceObj.existingUser(user);
		if (existing) {
			return "userexists";
		} else {
			return "usernotexists";
		}
	}

	@RequestMapping(value = { "createuser" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String createUser(@RequestBody UserModel user) {
		userServiceObj.createUser(user);
		return "OK";
	}

	@RequestMapping(value = { "createnewissue" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String createUser(@RequestBody IssueModel issue) {
		issueServiceObj.createIssue(issue);
		return "OK";
	}

	@RequestMapping(value = { "getissues" }, method = RequestMethod.GET, produces = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody List<IssueModel> getIssues() {
		List<IssueModel> issues = issueServiceObj.getIssues();
		System.out.println("Success!!");
		return issues;
	}

}
