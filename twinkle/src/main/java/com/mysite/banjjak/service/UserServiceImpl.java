package com.mysite.banjjak.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.banjjak.dao.UserDao;
import com.mysite.banjjak.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public void join(User user) {
		userDao.join(user);
		
	}

	@Override
	public User getUserByUsername(String username) {
		return null;
	}

	
	 @Override 
	 public void updateUserInfo(User userInfo) {
		 userDao.updateUserInfo(userInfo); 
	 }
	 

	@Override
	public boolean login(User userInfo) {
		User user = userDao.userinfo(userInfo.getUserId());
		
		if(user != null && user.getUserId().equals(userInfo.getUserId()) && user.getPassword().equals(userInfo.getPassword()) ) {
			BeanUtils.copyProperties(user, userInfo);
			
			return true;
		}
		
		return false;
	}
	
}
