package com.basic.springboot.dao;

import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TUserDAO extends BaseHibernateDAOImpl<TUser> {
	private static final Logger log = LoggerFactory.getLogger(TUserDAO.class);

	public List<TUser> getAllList(){
		return this.findList("from TUser");
	}

    public TUser getUserByPassword(String username,String password){
       return (TUser) this.get("from TUser where userName=? and password=?",username,password);
    }
}
