package com.tracker.dao;

import com.tracker.models.UserModel;

public interface IUserDao {
public void createUser(UserModel userModel);
public Boolean authenticateUser(UserModel userModel);
public Boolean existingUser(UserModel userModel);
}
