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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.tracker.services.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.Random;

@Controller
public class TrackerController {
	@Autowired
	protected IUserServices userServiceObj;

	/*
	 * @Autowired protected IIssueServices issueServiceObj;
	 */

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

	@RequestMapping(value = { "/createuser", "createuser" }, method = RequestMethod.POST)
	public @ResponseBody void createUser(HttpServletRequest req) {
		System.out.println("Here");
		UserModel userModel = new UserModel();
		//Random randomGenerator = new Random();
		
		/*int randomInt = randomGenerator.nextInt(100);
		userModel.setU_id(randomInt);*/
		userModel.setU_name(req.getParameter("username"));
		userModel.setU_password(req.getParameter("password"));
		System.out.println("Uname:" + req.getParameter("username"));
		System.out.println("Password:" + req.getParameter("password"));
		userServiceObj.createUser(userModel);
		
	}
}
