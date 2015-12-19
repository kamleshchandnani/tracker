package com.tracker.services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.models.UserModel;
import com.tracker.dao.IUserDao;;

@Service
public class IUserServicesImpl implements IUserServices {
	@Autowired 
	private IUserDao userDao;
	public void createUser(UserModel userModel){
		userDao.createUser(userModel);
	}
	public Boolean authenticateUser(UserModel userModel){
		return userDao.authenticateUser(userModel);
	}
	public Boolean existingUser(UserModel userModel){
		return userDao.existingUser(userModel);
	}
}
