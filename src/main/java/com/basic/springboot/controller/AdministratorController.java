package com.basic.springboot.controller;

import com.basic.springboot.model.Administrator;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dell-pc on 2016/4/22.
 */

@Controller
@Transactional(propagation= Propagation.REQUIRED)
@RequestMapping("/admin")

@SessionAttributes(value = {"admin"},types = {Administrator.class})
public class AdministratorController extends BaseController{

    /**
     * 后台登录的控制器
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(@RequestParam String username, @RequestParam String password){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("manage/login");
        if(!username.equals("")&!password.equals("")) {
            Administrator admin = administratorDAO.findadminByusernameAndPass(username, password);
            if(admin!=null) {
                modelAndView.addObject("admin", admin);
                modelAndView.setViewName("redirect:/send_manage_aindex");
            }
            else {
                modelAndView.addObject("error","用户名或者密码错误");
            }
        }else
            modelAndView.addObject("error","用户名或者密码不能为空");
        return modelAndView;
    }

}
