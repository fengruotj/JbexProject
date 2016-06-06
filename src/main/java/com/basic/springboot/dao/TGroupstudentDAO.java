package com.basic.springboot.dao;

import com.basic.springboot.model.TGroupstudent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TGroupstudentDAO extends BaseHibernateDAOImpl<TGroupstudent> {
	private static final Logger log = LoggerFactory.getLogger(TGroupstudentDAO.class);
}
