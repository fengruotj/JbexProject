package com.basic.springboot.dao;

import com.basic.springboot.model.TMessageflag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TMessageflagDAO extends BaseHibernateDAOImpl<TMessageflag> {
	private static final Logger log = LoggerFactory.getLogger(TMessageflagDAO.class);

}
