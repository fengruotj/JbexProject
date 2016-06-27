package com.basic.springboot.controller;

import com.basic.springboot.model.TUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by dello on 2016/6/26.
 */
@Controller
@Transactional(propagation= Propagation.REQUIRED)

@SessionAttributes(value = {"user"},types = {TUser.class})
public class TUserController extends BaseController{
    private static final Logger log = LoggerFactory.getLogger(TUserController.class);

    @RequestMapping(value = "/getAllUserList",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getAllUserList(){
        return serviceUtil.MessageService(userDAO.getAllList());
    }

    @RequestMapping(value = "/loginUser",produces = "application/json")
    @ResponseBody
    public ModelAndView loginUser(@RequestParam(value = "username",defaultValue = "798750509@qq.com") String username,
                            @RequestParam(value = "password",defaultValue = "woainixx1314") String password,
                            HttpSession httpSession){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("user/login");
        if(!username.equals("")&!password.equals("")) {
            TUser user = userDAO.getUserByPassword(username,password);
            if(user!=null) {
                modelAndView.addObject("user", user);
                modelAndView.setViewName("redirect:/send_user_index");
            }
            else {
                modelAndView.addObject("error","用户名或者密码错误");
            }
        }else
            modelAndView.addObject("error","用户名或者密码不能为空");
        return modelAndView;
    }

    @RequestMapping(value = "/registerUser",produces = "application/json")
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
