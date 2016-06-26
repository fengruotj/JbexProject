package com.basic.springboot.controller;

import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dello on 2016/6/26.
 */
@Controller
@Transactional(propagation= Propagation.REQUIRED)
public class TPersonaldynamicController extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(TPersonaldynamicController.class);

    @RequestMapping(value = "/getAllPersonaldynamicList",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getAllPersonaldynamicList(){
        return serviceUtil.MessageService(personaldynamicDAO.getAllPersonaldynamic());
    }

    @RequestMapping(value = "/getPersonalByUser",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getPersonalByUser(TUser user){
        return serviceUtil.MessageService(personaldynamicDAO.getPersonaldynamicByUser(user));
    }
}
