package kr.lotto.server.controller;

import kr.lotto.model.number.NumberData;
import kr.lotto.model.number.NumberSv;
import kr.lotto.model.winNumber.WinNumberData;
import kr.lotto.model.winNumber.WinNumberSv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by LSH on 2017-07-19.
 */
@Controller
@RequestMapping(value = "/number")
public class NumberCt {
    @Autowired
    private NumberSv numberSv;
    @Autowired
    private WinNumberSv winNumberSv;

    @RequestMapping(value = "/pickNumber.do",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView pickNumber(){
        ModelAndView mv=new ModelAndView("/number/pickNumber");
        return mv;
    }

    @RequestMapping(value = "/pickNum.do",method = RequestMethod.GET)
    public String pickNum(){
        numberSv.pickNumbers();
        return "redirect:/number/pickNumber.do";
    }

    @RequestMapping(value="/numberList.do",method = RequestMethod.GET)
        public ModelAndView numberList(){
        ModelAndView mv=new ModelAndView("/number/numberList");

        List<NumberData> numberList=numberSv.getNumbers();
        List<WinNumberData> winNumberList=winNumberSv.getWinNumbers();
        mv.addObject("numberList",numberList);
        mv.addObject("winNumberList",winNumberList);
        return mv;
    }

//    @RequestMapping(value = "/showPickNumber.do",method = RequestMethod.GET)
//        public ModelAndView showPickNumber(){
//            ModelAndView mv=new ModelAndView("/number/showPickNumber");
//
//            List<NumberData> numberList=numberSv.getNumbers();
//
//            mv.addObject("showPickNumber",numberList);
//            return mv;
//    }
}
