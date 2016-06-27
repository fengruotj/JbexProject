package com.basic.springboot.dao;

import com.basic.springboot.model.TPublicinfo;
import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TPublicinfoDAO extends BaseHibernateDAOImpl<TPublicinfo> {
	private static final Logger log = LoggerFactory.getLogger(TPublicinfoDAO.class);

	@SuppressWarnings("unchecked")
	public List<TPublicinfo> getAllPublicinfo(){
		return this.findList("from TPublicinfo");
	}

    @SuppressWarnings("unchecked")
    public List<TPublicinfo> getPublicinfoByUser(TUser user){
        return this.findList("from TPublicinfo where TUser =?",user);
    }

    @SuppressWarnings("unchecked")
    public List<TPublicinfo> getPublicinfoByCommunity(){
        return this.findList("from TPublicinfo public where public.TUser.securityControl=?",1);
    }

    @SuppressWarnings("unchecked")
    public List<TPublicinfo> getPublicinfoBySchool(){
        return this.findList("from TPublicinfo public where public.TUser.securityControl=?",2);
    }

    @SuppressWarnings("unchecked")
    public List<TPublicinfo> queryPublicInfoPageByUser(TUser user,String title, int page, int size){
        return getSession().createQuery("FROM TPublicinfo p  WHERE p.title LIKE :title and p.TUser=:user ORDER BY p.id")
                .setString("title","%"+title +"%")
                .setParameter("user",user)
                .setFirstResult((page-1)*size)
                .setMaxResults(size)
                .list();
    }

    public long getCount(TUser user,String title) {
        // TODO 自动生成的方法存根
        return (long) getSession().createQuery("select count(p) FROM TPublicinfo p  WHERE p.title LIKE :title and p.TUser=:user ORDER BY p.id")
                .setString("title","%"+title +"%")
                .setParameter("user",user)
                .uniqueResult();
    }
}
