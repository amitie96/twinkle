package com.mysite.banjjak.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.banjjak.dao.KnittingDao;
import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;

@Service
public class KnittingServiceImpl implements KnittingService {

	@Autowired
	KnittingDao knittingDao;

	@Override
	public void add(Knitting knitting) {
		knittingDao.add(knitting);
		
	}

	@Override
	public List<Knitting> findAll(Knitting knitting) {
		return knittingDao.findAll(knitting);
	}

	@Override
	public Knitting findById(int knitId) {
		return knittingDao.findById(knitId);
	}

	@Override
	public List<Knitting> myKnitList(User user) {
		return knittingDao.myKnitList(user);
	}

	@Override
	public void update(Knitting knitting) {
		knittingDao.update(knitting);
		
	}

	@Override
	public void delete(Knitting knitting) {
		knittingDao.delete(knitting);
		
	}




}
