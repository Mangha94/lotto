package kr.lotto.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by LSH on 2017-07-19.
 */
@Controller
public class IndexCt {
    @RequestMapping(value = "/index.do",method = RequestMethod.GET)
    public ModelAndView start(HttpSession session){
        ModelAndView mv=new ModelAndView("index");

        System.out.println (session);

        String userID = (String) session.getAttribute("userID");

        System.out.println ("S : " + userID);

        session.setAttribute("userID", "tester");

        return mv;
    }
}
