import com.xiaoy.service.ClockingInServ;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 紫青 on 2018/10/12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class ClockingInTest {
    @Autowired
    private ClockingInServ clockingInServ;

    @Test
    public void testFindDepartmentId() throws ParseException {
        Date date=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.format(date);
        Date date1=new SimpleDateFormat("yyyy-MM-dd").parse("2018-10-19");
        System.out.println(dateFormat.format(date));
        System.out.println(clockingInServ.findClockingInByDate("2018-10"));
    }
}
