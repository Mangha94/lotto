package kr.lotto.test;

import org.junit.Test;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

/**
 * Created by Lsh on 2017-07-24.
 */
public class MyTest {
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
}
