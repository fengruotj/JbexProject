package com.basic.springboot.dao;

import com.basic.springboot.model.TGroupfriends;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TGroupfriendsDAO extends BaseHibernateDAOImpl<TGroupfriends> {
	private static final Logger log = LoggerFactory.getLogger(TGroupfriendsDAO.class);
}
