package com.basic.springboot.dao;

import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TUserDAO extends BaseHibernateDAOImpl<TUser> {
	private static final Logger log = LoggerFactory.getLogger(TUserDAO.class);
}
