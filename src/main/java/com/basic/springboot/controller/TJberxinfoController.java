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
public class TJberxinfoController extends BaseController{
    private static final Logger log = LoggerFactory.getLogger(TJberxinfoController.class);

    @RequestMapping(value = "/getAllJbexinfoList",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getAllJbexinfoList(){
        return serviceUtil.MessageService(jbrxinfoDAO.getAllJbexinfo());
    }

    @RequestMapping(value = "/getJbexinfoByUser",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getJbexinfoByUser(TUser user){
        return serviceUtil.MessageService(jbrxinfoDAO.getJbrxinfoByUser(user));
    }

    @RequestMapping(value = "/queryJbexInfoPageByUser",
            produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String queryJbexInfoPageByUser(TUser user, @RequestParam String title, @RequestParam Integer page,
                                            @RequestParam Integer rows){
        System.out.println(user.getUserId());
        System.out.println(title);
        Map pageMap=new HashMap<>();
        pageMap.put("total", jbrxinfoDAO.getCountJbexInfoPageByUser(user,title));
        pageMap.put("rows", jbrxinfoDAO.queryJbexInfoPageByUser(user,title,page,rows));
        return  gson.toJson(pageMap);
    }

    @RequestMapping(value = "/getJbrxinfoByAttentionUser",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getJbrxinfoByAttentionUser(TUser user){
        return serviceUtil.MessageService(jbrxinfoDAO.getJbrxinfoByAttentionUser(user));
    }
}
