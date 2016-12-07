package koreatech.cse.controller.rest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;

/**
 * Created by J.C. Shin on 2016-12-07.
 */

@Controller
@RequestMapping("/cc")
public class CultureController {
    @RequestMapping(value = "/culture", method = RequestMethod.GET)
    public String daumBookRequest(Model model) {
        return "culture";
    }

    @RequestMapping("/cultureResult")
    public String getDaumBookWithJustAPIKey(Model model,
                                            @RequestParam(name = "searchWord") String searchWord) {
        model.addAttribute("searchWord", searchWord);
        return "cultureResult";
    }
}
