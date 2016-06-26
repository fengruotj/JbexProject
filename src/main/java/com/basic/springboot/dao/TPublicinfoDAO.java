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
}
