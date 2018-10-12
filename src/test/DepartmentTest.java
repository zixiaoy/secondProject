import com.xiaoy.service.DepartmentServ;
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
public class DepartmentTest {
    @Autowired
    private DepartmentServ departmentServ;

    @Test
    public void testFindAllDepartment(){
        System.out.println(departmentServ.findAllDepartment());
    }
}
