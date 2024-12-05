package com.mysite.banjjak.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.banjjak.dao.CrochetDao;
import com.mysite.banjjak.model.Crochet;
import com.mysite.banjjak.model.User;

@Service
public class CrochetServiceImpl implements CrochetService {
	
	@Autowired
	CrochetDao crochetDao;

	@Override
	public void add(Crochet crochet) {
		crochetDao.add(crochet);
	}
	
	@Override
	public List<Crochet> findAll(Crochet crochet) {
		return crochetDao.findAll(crochet);
	}

	@Override
	public List<Crochet> myCroList(User user) {
		return crochetDao.myCroList(user);
	}

	@Override
	public Crochet findById(int croId) {
		return crochetDao.findById(croId);
	}

	@Override
	public void update(Crochet crochet) {
		crochetDao.update(crochet);		
	}

	@Override
	public void delete(Crochet crochet) {
		crochetDao.delete(crochet);
	}

}
