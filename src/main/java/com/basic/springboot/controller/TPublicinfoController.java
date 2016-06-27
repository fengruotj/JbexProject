package com.basic.springboot.controller;

import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by dello on 2016/6/26.
 */
@Controller
@Transactional(propagation= Propagation.REQUIRED)
public class TPublicinfoController extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(TPublicinfoController.class);

    @RequestMapping(value = "/getAllPublicinfoList",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getAllPublicinfoList(){
        return serviceUtil.MessageService(publicinfoDAO.getAllPublicinfo());
    }

    @RequestMapping(value = "/getPublicinfoByUser",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getPublicinfoByUser(TUser user){
        return serviceUtil.MessageService(publicinfoDAO.getPublicinfoByUser(user));
    }

    @RequestMapping(value = "/getPublicinfoByCommunity",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getPublicinfoByCommunity(){
        return serviceUtil.MessageService(publicinfoDAO.getPublicinfoByCommunity());
    }

    @RequestMapping(value = "/getPublicinfoBySchool",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getPublicinfoBySchool(){
        return serviceUtil.MessageService(publicinfoDAO.getPublicinfoBySchool());
    }


    @RequestMapping(value = "/queryPublicInfoPageByUser",
            produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String queryPublicInfoPageByUser(TUser user,@RequestParam String title, @RequestParam Integer page,
                                                     @RequestParam Integer rows){
        System.out.println(user.getUserId());
        System.out.println(title);
        Map pageMap=new HashMap<>();
        pageMap.put("total", publicinfoDAO.getCount(user,title));
        pageMap.put("rows", publicinfoDAO.queryPublicInfoPageByUser(user,title,page,rows));
        return  gson.toJson(pageMap);
    }
}
