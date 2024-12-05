package com.mysite.banjjak.dao;

import com.mysite.banjjak.model.User;

public interface UserDao {

	void join(User user);

	User userinfo(String userId);

	void updateUserInfo(User userInfo);
}
