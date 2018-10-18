import com.xiaoy.entity.Position;
import com.xiaoy.service.PositionServ;
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
public class PositionTest {
    @Autowired
    private PositionServ positionServ;

    @Test
    public void testFindAllPosition(){
        System.out.println(positionServ.findAllPosition());
    }

    @Test
    public void testSavePosition(){
        System.out.println(positionServ.savePosition(new Position("行政",new Date(),2)));
    }
}
