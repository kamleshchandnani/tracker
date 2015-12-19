package com.tracker.services;

import com.tracker.models.UserModel;

public interface IUserServices {
public void createUser(UserModel userModel);
public Boolean authenticateUser(UserModel userModel);
public Boolean existingUser(UserModel userModel);
}
