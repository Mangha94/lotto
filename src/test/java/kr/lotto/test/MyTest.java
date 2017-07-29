package kr.lotto.test;

import kr.lotto.model.member.MemberData;
import kr.lotto.model.member.MemberSv;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Optional;

/**
 * Created by Lsh on 2017-07-24.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
        locations = {
                "classpath:common.xml",
                "classpath:db.xml"
        }
)
public class MyTest {
    @Autowired
    MemberSv memberSv;

    @Test
    public void myTest ()
    {
        int times=763;
        LocalDateTime firstTime=LocalDateTime.of(2017,7,8,20,00);
        // LocalDateTime pickTime=LocalDateTime.now();
        LocalDateTime pickTime=LocalDateTime.of(2017,7,22,23,00);
        long weekDf= ChronoUnit.WEEKS.between(firstTime,pickTime);

        System.out.println (weekDf);

        times += weekDf;


        System.out.println ("times : " + times);
    }
    @Test
    public void test(){
        int num=memberSv.getCount();

        System.out.println(num);


    }
}
