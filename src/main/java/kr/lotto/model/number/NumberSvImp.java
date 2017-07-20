package kr.lotto.model.number;

import kr.lotto.model.winNumber.WinNumberData;
import kr.lotto.model.winNumber.WinNumberSv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by LSH on 2017-07-18.
 */
@Service
public class NumberSvImp implements NumberSv {
    @Autowired
    private NumberRepository numberRepository;
    @Autowired
    private WinNumberSv winNumberSv;

    /**
     * 뽑은 목록들을 가져온다
     * @return 6개의 숫자와 보너스 숫자 1개의 리스트
     */
    @Override
    public List<NumberData>getNumbers(){
        return numberRepository.getNumbers();
    }

    @Override
    public List<NumberData>getNumber_times(int times){
        return numberRepository.getNumber_times(times);
    }

    /**
     * 랜덤한 6개의 숫자와 보너스 숫자 1개를 구한다
     */
    @Override
    public void pickNumbers(){
        NumberData numberData=new NumberData();
        int[]num=new int[6];
        Random randomNum=new Random();
        for(int i=0;i<=5;i++){
            num[i]=randomNum.nextInt(61)+1;
            for(int j=0;j<i;j++){
                if(num[i]==num[j] || num[i]==0){
                    i--;
                }
            }
        }
        Arrays.sort(num);

        numberData.setNum1(num[0]);
        numberData.setNum2(num[1]);
        numberData.setNum3(num[2]);
        numberData.setNum4(num[3]);
        numberData.setNum5(num[4]);
        numberData.setNum6(num[5]);
        numberData.setPickDate(new Date());
        numberData.setRank(0);

        int newTimes=getMaxTimes();
        Calendar today=Calendar.getInstance();
        if(today.get(Calendar.DAY_OF_WEEK)==1){
            newTimes++;
        }
        numberData.setTimes(newTimes);


        numberRepository.pickNumbers(numberData);
    }

    public int getMaxTimes(){
        return numberRepository.getMaxTimes();
    }


    /**
     * 회차에 해당하는 번호들을 조회하여 해당 회차 당첨번호와 비교하여
     * 등수를 매긴다
     * @param times 회차
     */
    @Override
    public void setRank(int times){

        WinNumberData winNumberData=winNumberSv.getWinNumber(times);
        int[] winNumber=new int[7];
        winNumber[0]=winNumberData.getNum1();
        winNumber[1]=winNumberData.getNum2();
        winNumber[2]=winNumberData.getNum3();
        winNumber[3]=winNumberData.getNum4();
        winNumber[4]=winNumberData.getNum5();
        winNumber[5]=winNumberData.getNum6();
        winNumber[6]=winNumberData.getBonusNum();

        List<NumberData> numberData=getNumber_times(times);
        System.out.println(numberData);
        NumberSetRankData numberSetRankData=new NumberSetRankData();
        int count=0;
        int bonusCnt=0;
        for(NumberData number : numberData){
            for(int i=0;i<=5;i++){
                if(number.getNum1()==winNumber[i]){
                    count++;
                }
                if(number.getNum2()==winNumber[i]){
                    count++;
                }
                if(number.getNum3()==winNumber[i]){
                    count++;
                }
                if(number.getNum4()==winNumber[i]){
                    count++;
                }
                if(number.getNum5()==winNumber[i]){
                    count++;
                }
                if(number.getNum6()==winNumber[i]){
                    count++;
                }
                if(count==5){
                    if(winNumber[6]==number.getNum1()){
                        bonusCnt++;
                    }
                    if(winNumber[6]==number.getNum2()){
                        bonusCnt++;
                    }
                    if(winNumber[6]==number.getNum3()){
                        bonusCnt++;
                    }
                    if(winNumber[6]==number.getNum4()){
                        bonusCnt++;
                    }
                    if(winNumber[6]==number.getNum5()){
                        bonusCnt++;
                    }
                    if(winNumber[6]==number.getNum6()){
                        bonusCnt++;
                    }
                }


            }
            if(count==6){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(1);
                numberRepository.setRank(numberSetRankData.makeMap());
            }
            if(count==5 && bonusCnt==2){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(2);
                numberRepository.setRank(numberSetRankData.makeMap());
            }
            if(count==5 && bonusCnt!=2){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(3);
                numberRepository.setRank(numberSetRankData.makeMap());
            }
            if(count==4){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(4);
                numberRepository.setRank(numberSetRankData.makeMap());
            }
            if(count==3){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(5);
                numberRepository.setRank(numberSetRankData.makeMap());
            }
            if(count<3){
                numberSetRankData.setNo(number.getNo());
                numberSetRankData.setRank(0);
                numberRepository.setRank(numberSetRankData.makeMap());
                return;
            }

        }


    }
}
