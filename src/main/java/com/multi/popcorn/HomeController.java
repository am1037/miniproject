package com.multi.popcorn;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	ReviewDAO dao;
	@Autowired
	MovieDAO mdao;
	@Autowired
	CrawlingCGV cgv;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		//model.addAttribute("serverTime", formattedDate );
		//System.out.println(mdao.selectFromTo(1, 5));
		//model.addAttribute("reviewList", dao.selectFromTo(2, 5));
		//cgv.crawling("20230504");
		return "test";
	}

	@RequestMapping(value = "/cgv", method = RequestMethod.GET)
	public String cgv(String date, Model model) {
		System.out.println("cgv called : "+date);
		List<MovieScreen> list = cgv.crawling(date);
		model.addAttribute("screenList", list);
		return "cgv";
	}
	
}
