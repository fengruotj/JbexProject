package com.basic.springboot.dao;

import com.basic.springboot.model.TJbrxinfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TJbrxinfoDAO extends BaseHibernateDAOImpl<TJbrxinfo> {
	private static final Logger log = LoggerFactory.getLogger(TJbrxinfoDAO.class);
}
