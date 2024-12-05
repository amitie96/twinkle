package com.mysite.banjjak.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;

@Repository
public class KnittingDaoImpl implements KnittingDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(Knitting knitting) {
		sql.insert("knitting.add", knitting);
	}

	@Override
	public List<Knitting> findAll(Knitting knitting) {
		return sql.selectList("knitting.list", knitting);
	}

	@Override
	public Knitting findById(int knitId) {
		return sql.selectOne("knitting.detail", knitId);
	}
	
	@Override
	public List<Knitting> myKnitList(User user) {
		return sql.selectList("knitting.myKnitList", user);
	}

	@Override
	public void update(Knitting knitting) {
		sql.update("knitting.update", knitting);	
		
	}

	@Override
	public void delete(Knitting knitting) {
		sql.delete("knitting.delete", knitting);			
	}

	
}
