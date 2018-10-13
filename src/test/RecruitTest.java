import com.xiaoy.service.RecruitServ;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by 紫青 on 2018/10/12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class RecruitTest {
    @Autowired
    private RecruitServ recruitServ;

    @Test
    public void testFindAllRecruit(){
        System.out.println(recruitServ.findAllRecruit());
    }
}
