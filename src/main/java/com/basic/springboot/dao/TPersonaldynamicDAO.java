package com.basic.springboot.dao;

import com.basic.springboot.model.TPersonaldynamic;
import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TPersonaldynamicDAO extends BaseHibernateDAOImpl<TPersonaldynamic> {
	private static final Logger log = LoggerFactory.getLogger(TPersonaldynamicDAO.class);

	@SuppressWarnings("unchecked")
	public List<TPersonaldynamic> getAllPersonaldynamic(){
		return this.findList("from TPersonaldynamic");
	}

	@SuppressWarnings("unchecked")
	public List<TPersonaldynamic> getPersonaldynamicByUser(TUser user){
		return this.findList("from TPersonaldynamic where TUser =?",user);
	}
}
