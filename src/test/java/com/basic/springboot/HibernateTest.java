package com.basic.springboot;
import com.basic.springboot.dao.TUserDAO;
import com.basic.springboot.model.TUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.WebIntegrationTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by dello on 2016/6/6.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebIntegrationTest("server.port:0")
@TransactionConfiguration(defaultRollback=false)
@Transactional(propagation= Propagation.REQUIRED)
public class HibernateTest {

    @Autowired
    private TUserDAO tUserDAO;

    @Test
    public void test(){
        List<TUser> userList=tUserDAO.findList("from TUser");
        for(TUser user: userList){
            System.out.println(user.getUserName());
        }
    }

}
