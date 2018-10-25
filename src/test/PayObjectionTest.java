import com.xiaoy.service.PayObjectionServ;
import com.xiaoy.service.PayServ;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.UnsupportedEncodingException;

/**
 * Created by 紫青 on 2018/10/12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class PayObjectionTest {
    @Autowired
    private PayObjectionServ payObjectionServ;

    @Test
    public void testFindPayObjectionByPayId(){
        System.out.println(payObjectionServ.findPayObjectionByPayId(4));
    }
}
