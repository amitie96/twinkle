package com.mysite.banjjak.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysite.banjjak.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;

	@Override
	public void join(User user) {
		sql.insert("user.join", user);
	}
	
	@Override
	public User userinfo(String userId) {
		return sql.selectOne("user.userinfo", userId);
	}

	
	 @Override 
	 public void updateUserInfo(User userInfo) {
		 sql.update("user.updateUserInfo", userInfo);
	 }
	 

}
