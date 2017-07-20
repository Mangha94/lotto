package kr.lotto.server.controller;

import kr.lotto.model.number.NumberSv;
import kr.lotto.model.winNumber.WinNumberData;
import kr.lotto.model.winNumber.WinNumberSv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/winNumber")
public class WinNumberCt {
    @Autowired
    private WinNumberSv winNumberSv;
    @Autowired
    private NumberSv numberSv;

    @RequestMapping(value = "/winNumberList.do",method = RequestMethod.GET)
    public ModelAndView winNumber(){
        ModelAndView mv=new ModelAndView("/winNumber/winNumberList");
        List<WinNumberData>winNumberList=winNumberSv.getWinNumbers();
        mv.addObject("winNumberList",winNumberList);
        return mv;
    }

    @RequestMapping(value = "/setWinNumber",method = RequestMethod.POST)
    public String setWinNumber(
            WinNumberData winNumberData
    ){
        winNumberSv.setWinNumber(winNumberData);
        numberSv.setRank(winNumberData.getTimes());

        return "redirect:/winNumber/winNumberList.do";
    }

    @RequestMapping(value = "reloadWinNumberList",method = RequestMethod.GET)
    public ModelAndView reloadWinNumberList(){
        ModelAndView mv=new ModelAndView("/winNumber/reloadWinNumberList");
        List<WinNumberData>winNumberList=winNumberSv.getWinNumbers();
        mv.addObject("winNumberList",winNumberList);
        return mv;
    }


}
