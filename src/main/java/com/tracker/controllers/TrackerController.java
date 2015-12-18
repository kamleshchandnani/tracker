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
import com.tracker.dto.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

	@RequestMapping(value = { "createuser" }, method = RequestMethod.POST,consumes="application/json")
	public @ResponseBody void createUser(@RequestBody NewUserDTO user) {
		System.out.println("Here");
		UserModel userModel = new UserModel();
		userModel.setU_name(user.getUsername());
		userModel.setU_password(user.getPassword());
		System.out.println("Uname:" + user.getUsername());
		System.out.println("Password:" + user.getPassword());
		userServiceObj.createUser(userModel);

	}

	
	@ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = { "createuser1" },method = RequestMethod.POST,consumes = {"application/json;charset=UTF-8"}, produces={"application/json;charset=UTF-8"})
    public @ResponseBody String createUser1(@RequestBody NewUserDTO user) {
        //userService.createUser(user.getUsername(), user.getPassword());
		System.out.println(user.getUsername());
		return user.getUsername();
    }
}
