package com.multi.popcorn;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Component
public class KobisApi {
    String token = "a17e223009d340bb7cc3be1a0c850983";

    @RequestMapping("/kobis")
    @ResponseBody
    public String kobis(){
        return "kobis";
    }

}
