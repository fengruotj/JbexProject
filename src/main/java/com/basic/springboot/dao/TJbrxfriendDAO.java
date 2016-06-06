package com.basic.springboot.dao;

import com.basic.springboot.model.TJbrxfriend;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TJbrxfriendDAO extends BaseHibernateDAOImpl<TJbrxfriend> {
	private static final Logger log = LoggerFactory.getLogger(TJbrxfriendDAO.class);
}
