package kr.lotto.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by LSH on 2017-07-19.
 */
@Controller
public class IndexCt {
    @RequestMapping(value = "/index.do",method = RequestMethod.GET)
    public ModelAndView start(){
        ModelAndView mv=new ModelAndView("index");

        return mv;
    }
}
