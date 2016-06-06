package com.basic.springboot.dao;

import com.basic.springboot.model.TMyattention;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


@Repository
public class TMyattentionDAO extends BaseHibernateDAOImpl<TMyattention> {
	private static final Logger log = LoggerFactory.getLogger(TMyattentionDAO.class);

}
