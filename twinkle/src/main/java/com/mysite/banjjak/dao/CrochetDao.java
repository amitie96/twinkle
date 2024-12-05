package com.mysite.banjjak.dao;

import java.util.List;
import com.mysite.banjjak.model.Crochet;
import com.mysite.banjjak.model.User;

public interface CrochetDao {

	void add(Crochet crochet);

	List<Crochet> findAll(Crochet crochet);

	List<Crochet> myCroList(User user);

	Crochet findById(int croId);

	void update(Crochet crochet);

	void delete(Crochet crochet);

}
