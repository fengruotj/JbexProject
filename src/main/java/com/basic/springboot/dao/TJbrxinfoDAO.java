package com.basic.springboot.dao;

import com.basic.springboot.model.TJbrxinfo;
import com.basic.springboot.model.TUser;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TJbrxinfoDAO extends BaseHibernateDAOImpl<TJbrxinfo> {
	private static final Logger log = LoggerFactory.getLogger(TJbrxinfoDAO.class);

	@SuppressWarnings("unchecked")
	public List<TJbrxinfo> getAllJbexinfo(){
		return this.findList("from TJbrxinfo");
	}

	@SuppressWarnings("unchecked")
	public List<TJbrxinfo> getJbrxinfoByUser(TUser user){
		return this.findList("from TJbrxinfo where TUser =?",user);
	}

	@SuppressWarnings("unchecked")
	public List<TJbrxinfo> queryJbexInfoPageByUser(TUser user, String title, int page, int size){
		return getSession().createQuery("FROM TJbrxinfo p  WHERE p.title LIKE :title and p.TUser=:user ORDER BY p.id")
				.setString("title","%"+title +"%")
				.setParameter("user",user)
				.setFirstResult((page-1)*size)
				.setMaxResults(size)
				.list();
	}

	public long getCountJbexInfoPageByUser(TUser user,String title) {
		// TODO 自动生成的方法存根
		return (long) getSession().createQuery("select count(p) FROM TJbrxinfo p  WHERE p.title LIKE :title and p.TUser=:user ORDER BY p.id")
                .setString("title","%"+title +"%")
                .setParameter("user",user)
                .uniqueResult();
	}

    public List<TJbrxinfo> getJbrxinfoByAttentionUser(TUser user){
        Query query= getSession().createQuery("select(p) FROM TJbrxinfo p,TMyattention a,TUser user" +
                " where a.TUserByUserId=:user and a.TUserByAttentionId=user and p.TUser=user");
        query.setParameter("user",user);
        return query.list();
    };
}
