package com.basic.springboot.dao;

import com.basic.springboot.model.TFriendrequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TFriendrequestDAO extends BaseHibernateDAOImpl<TFriendrequest> {
	private static final Logger log = LoggerFactory.getLogger(TFriendrequestDAO.class);
}
