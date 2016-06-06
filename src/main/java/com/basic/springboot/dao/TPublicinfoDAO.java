package com.basic.springboot.dao;

import com.basic.springboot.model.TPublicinfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TPublicinfoDAO extends BaseHibernateDAOImpl<TPublicinfo> {
	private static final Logger log = LoggerFactory.getLogger(TPublicinfoDAO.class);

}
