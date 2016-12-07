package koreatech.cse.controller.rest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by youkang on 2016-12-07.
 */
@Controller
@RequestMapping("/dc")
public class DustController {
    @RequestMapping(value = "/dust", method = RequestMethod.GET)
    public String daumBookRequest(Model model) {
        return "dust";
    }

    @RequestMapping("/dustResult")
    public String getDaumBookWithJustAPIKey(Model model,
                                            @RequestParam(name = "searchWord") String searchWord) {
        model.addAttribute("searchWord", searchWord);
        return "dustResult";
    }
}