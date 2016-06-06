package com.basic.springboot.dao;

import com.basic.springboot.model.TPersonaldynamic;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TPersonaldynamicDAO extends BaseHibernateDAOImpl<TPersonaldynamic> {
	private static final Logger log = LoggerFactory.getLogger(TPersonaldynamicDAO.class);

}
