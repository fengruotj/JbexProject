package com.basic.springboot.dao;

import com.basic.springboot.model.TMessagebean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TMessagebeanDAO extends BaseHibernateDAOImpl<TMessagebean> {
	private static final Logger log = LoggerFactory.getLogger(TMessagebeanDAO.class);
}
