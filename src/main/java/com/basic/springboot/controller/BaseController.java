package com.basic.springboot.controller;

import com.basic.springboot.dao.*;
import com.basic.springboot.util.ServiceUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dello on 2016/6/6.
 */

@Controller
@RequestMapping(value = "/",produces = "text/html;charset=UTF-8")
public class BaseController {
    protected Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();

    @Autowired
    protected TUserDAO userDAO;
    @Autowired
    protected TPersonaldynamicDAO personaldynamicDAO;
    @Autowired
    protected TJbrxinfoDAO jbrxinfoDAO;
    @Autowired
    protected TPublicinfoDAO publicinfoDAO;
    @Autowired
    protected ServiceUtil serviceUtil;
    @Autowired
    protected AdministratorDAO administratorDAO;
}
