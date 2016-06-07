package com.basic.springboot.dao;

import com.basic.springboot.model.TGroupfamily;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TGroupfamilyDAO extends BaseHibernateDAOImpl<TGroupfamily> {
	private static final Logger log = LoggerFactory.getLogger(TGroupfamilyDAO.class);
}
