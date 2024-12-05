package com.mysite.banjjak.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysite.banjjak.model.Crochet;
import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;

@Repository
public class CrochetDaoImpl implements CrochetDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Crochet crochet) {
		sql.insert("crochet.add", crochet);

	}
	
	@Override
	public List<Crochet> findAll(Crochet crochet) {
		return sql.selectList("crochet.list", crochet);
	}

	@Override
	public List<Crochet> myCroList(User user, int page) {
		Map<String, Object> param = new HashMap();  //Map으로 받아오는 이유는 : session에 저장된 user정보와 param으로 받아온 page값을 하나로 묶어서 mapper로 던짐.
		param.put("userId", user.getUserId());      //userId get해옴 
		param.put("page", page);
		
		return sql.selectList("crochet.myCroList", param);
	}

	@Override
	public Crochet findById(int croId) {
		return sql.selectOne("crochet.detail", croId);
	}

	@Override
	public void update(Crochet crochet) {
		sql.update("crochet.update", crochet);
		
	}

	@Override
	public void delete(Crochet crochet) {
		sql.delete("crochet.delete", crochet);
	}


}
