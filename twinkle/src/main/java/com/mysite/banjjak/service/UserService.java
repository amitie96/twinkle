package com.mysite.banjjak.service;


import com.mysite.banjjak.model.User;

public interface UserService {

	void join(User user);

	User getUserByUsername(String username);

	void updateUserInfo(User userInfo);

	boolean login(User userInfo);

}
