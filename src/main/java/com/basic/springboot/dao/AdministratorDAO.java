package com.basic.springboot.dao;

import com.basic.springboot.model.Administrator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * A data access object (DAO) providing persistence and search support for
 * Administrator entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.basic.springboot.model.Administrator
 * @author MyEclipse Persistence Tools
 */

@Repository("tAdministratorDAO")
public class AdministratorDAO extends BaseHibernateDAOImpl<Administrator> {
	private static final Logger log = LoggerFactory.getLogger(AdministratorDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";

	public Administrator findadminByusernameAndPass(String username,String passowrd){
		List list=getSession().createQuery("from Administrator ad where ad.username=:name and ad.password=:pass")
				.setString("name",username)
				.setString("pass",passowrd)
				.list();
		if(list.size()==0)
			return null;
		else
		return (Administrator)list.get(0);
	}
}
