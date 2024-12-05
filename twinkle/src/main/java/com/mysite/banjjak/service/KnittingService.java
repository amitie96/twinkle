package com.mysite.banjjak.service;

import java.util.List;

import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;

public interface KnittingService {

	void add(Knitting knitting);

	List<Knitting> findAll(Knitting knitting);

	Knitting findById(int knitId);
	
	List<Knitting> myKnitList(User user);

	void update(Knitting knitting);

	void delete(Knitting knitting);

}
