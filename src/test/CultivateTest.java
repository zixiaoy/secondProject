import com.xiaoy.service.CultivateServ;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;


/**
 * Created by 紫青 on 2018/10/12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class CultivateTest {
    @Autowired
    private CultivateServ cultivateServ;

    @Test
    public void testFindCultivateByDepartmentId(){
        System.out.println(cultivateServ.findCultivateByCultivateTime(new Date()));
    }
}
