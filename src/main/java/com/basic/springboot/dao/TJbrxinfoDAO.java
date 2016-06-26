package com.basic.springboot.dao;

import com.basic.springboot.model.TJbrxinfo;
import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TJbrxinfoDAO extends BaseHibernateDAOImpl<TJbrxinfo> {
	private static final Logger log = LoggerFactory.getLogger(TJbrxinfoDAO.class);

	@SuppressWarnings("unchecked")
	public List<TJbrxinfo> getAllJbexinfo(){
		return this.findList("from TJbrxinfo");
	}

	@SuppressWarnings("unchecked")
	public List<TJbrxinfo> getJbrxinfoByUser(TUser user){
		return this.findList("from TJbrxinfo where TUser =?",user);
	}
}
