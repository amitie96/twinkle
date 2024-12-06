package com.mysite.banjjak.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Knitting> myKnitList(User user, int page) {
		Map<String, Object> param = new HashMap();  //Map으로 받아오는 이유는 : session에 저장된 user정보와 param으로 받아온 page값을 하나로 묶어서 mapper로 던짐.
		param.put("userId", user.getUserId());      //userId get해옴 
		param.put("page", page);
		
		return sql.selectList("knitting.myKnitList", param);
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
