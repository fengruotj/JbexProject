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

	@SuppressWarnings("unchecked")
	public List<TUser> queryUserByPage(TUser user, int page, int size){
		return getSession().createQuery("FROM TUser user   WHERE user.userNickname LIKE :name")
				.setString("name","%"+user.getUserNickname() +"%")
				.setFirstResult((page-1)*size)
				.setMaxResults(size)
				.list();
	}

	public long getCountTUserByPage(TUser user) {
		// TODO 自动生成的方法存根
		return (long) getSession().createQuery("select count(user) FROM TUser user   WHERE user.userNickname LIKE :name")
				.setString("name","%"+user.getUserNickname() +"%")
				.uniqueResult();
	}
}
