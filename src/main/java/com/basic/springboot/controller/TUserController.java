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

/**
 * Created by dello on 2016/6/26.
 */
@Controller
@Transactional(propagation= Propagation.REQUIRED)
public class TUserController extends BaseController{
    private static final Logger log = LoggerFactory.getLogger(TUserController.class);

    @RequestMapping(value = "/getAllUserList",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getAllUserList(){
        return serviceUtil.MessageService(userDAO.getAllList());
    }

    @RequestMapping(value = "/loginUser",method = RequestMethod.GET,produces = "application/json")
    @ResponseBody
    public String loginUser(@RequestParam(defaultValue = "798750509@qq.com") String username,
                            @RequestParam(defaultValue = "woainixx1314") String password){
        if(!username.equals("")&!password.equals("")) {
            TUser user = userDAO.getUserByPassword(username, password);
            if (user!=null){
                return serviceUtil.MessageService(user);
            }
            else{
                return serviceUtil.ErrorServiceMessage("用户名或者密码错误");
            }
        }
        else
        return serviceUtil.ErrorServiceMessage("用户名和密码不能为空");
    }

    @RequestMapping(value = "/registerUser",method = RequestMethod.GET,produces = "application/json")
    @ResponseBody
    public String registerUser(@RequestParam String username,
                            @RequestParam String password,@RequestParam String userNickname){
        TUser user=new TUser();
        user.setUserName(username);
        user.setPassword(password);
        user.setUserNickname(userNickname);
        userDAO.getSession().save(user);
        return serviceUtil.MessageService("true");
    }

}
