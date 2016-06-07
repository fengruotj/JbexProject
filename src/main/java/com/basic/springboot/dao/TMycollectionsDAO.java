package com.basic.springboot.dao;

import com.basic.springboot.model.TMycollections;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TMycollectionsDAO extends BaseHibernateDAOImpl<TMycollections> {
	private static final Logger log = LoggerFactory.getLogger(TMycollectionsDAO.class);
}
