package com.mysite.banjjak.dao;

import java.util.List;

import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;

public interface KnittingDao {

	void add(Knitting knitting);

	List<Knitting> findAll(Knitting knitting);

	Knitting findById(int knitId);

	List<Knitting> myKnitList(User user);

	void update(Knitting knitting);

	void delete(Knitting knitting);
	
}
