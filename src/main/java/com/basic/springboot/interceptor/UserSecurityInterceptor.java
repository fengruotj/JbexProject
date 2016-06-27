package com.basic.springboot.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yangchujie on 16/1/22.
 */

@Component
public class UserSecurityInterceptor implements HandlerInterceptor {
    private static final Logger log = LoggerFactory.getLogger(UserSecurityInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        log.info("Interceptor Test PreHandle......");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        log.info("Interceptor Test PostHandle......");
        log.info(modelAndView.getViewName());
        if(httpServletRequest.getSession().getAttribute("user")==null){
            log.info("null");
            log.info(modelAndView.getViewName());
            modelAndView.setViewName("user/login");
        }else if(modelAndView.getViewName().equals("user/login")){
                modelAndView.setViewName("redirect:/send_user_index");
            }
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        log.info("Interceptor Test AfterHandle......");
    }
}
