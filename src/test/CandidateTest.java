import com.xiaoy.service.CandidateServ;
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
public class CandidateTest {
    @Autowired
    private CandidateServ candidateServ;

    @Test
    public void testFindCandidateByCreaTime(){
        System.out.println(candidateServ.findCandidateByCreaTime(new Date()));
    }
}