package com.basic.springboot.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by dell-pc on 2016/5/15.
 */

/**
 *  封装Rest服务的服务类
 */
@Component
public class ServiceUtil {
    protected static Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
    public static enum Error {
        ErrorCode1,
        ErrorCode2;
        private Error() {
        }
    }

    public String MessageService(Object map){
        Map root=new HashMap();
        root.put("success","true");
        root.put("errorCode","");
        root.put("errorMessage","");
        root.put("result",map);
        return gson.toJson(root);
    }

    public String ErrorServiceException(Exception e){
        Map root=new HashMap();
        root.put("success","false");
        root.put("errorCode","error");
        root.put("errorMessage",e.getMessage());
        return gson.toJson(root);
    }

    public String ErrorServiceMessage(String errormessage){
        Map root=new HashMap();
        root.put("success","false");
        root.put("errorCode","error");
        root.put("errorMessage",errormessage);
        return gson.toJson(root);
    }
}
