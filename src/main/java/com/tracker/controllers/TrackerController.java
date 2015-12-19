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

import com.tracker.dto.*;

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

	@RequestMapping(value = { "createuser" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String createUser(@RequestBody UserModel user) {
		String username = user.getU_name();
		String password = user.getU_password();
		System.out.println("Uname:" + username);
		System.out.println("Password:" + password);
		userServiceObj.createUser(user);
		System.out.println("Success!!");
		return "OK";

	}

	@RequestMapping(value = { "creatissue" }, method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String createUser(@RequestBody IssueModel issue) {
		String title = issue.getIssue_title();
		String desc = issue.getIssue_desc();
		String createdby = issue.getCreated_by();
		String status = issue.getIssue_status();
		System.out.println("Title:" + title);
		System.out.println("Desc:" + desc);
		System.out.println("createdby:" + createdby);
		System.out.println("Status:" + status);
		//issueServiceObj.createUser(user);
		System.out.println("Success!!");
		return "OK";

	}

}
