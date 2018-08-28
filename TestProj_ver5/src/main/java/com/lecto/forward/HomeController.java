package com.lecto.forward;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lecto.forward.service.BoardService;
import com.lecto.forward.service.SignupFormService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Inject
	SignupFormService signupFormService;
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String startPage(Model model) {
		
		try {
			model.addAttribute("boardList", boardService.searchBoardDTO());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/index";
	}
	
	
	
	@RequestMapping(value="/signupform", method=RequestMethod.GET)
	public String sigupFormpageLoad(String idRegEx, String nickRegEx, String pwdRegEx, Model model) {
		model.addAttribute("idRegEx", idRegEx);
		model.addAttribute("nickRegEx", nickRegEx);
		model.addAttribute("pwdRegEx", pwdRegEx);
	
		return "/ad_signupform";
	}
	
	@RequestMapping(value="/signupform", method=RequestMethod.POST)
	public String getSignupFormData(@RequestParam("idCipher") String idCipher, @RequestParam("selectId") String selectId,
			@RequestParam("pwdCipher") String pwdCipher, @RequestParam("selectPwd") String selectPwd,
			@RequestParam("nickCipher") String nickCipher, @RequestParam("selectNick") String selectNick) {
		
		
		String idRegEx = signupFormService.createRegEx(selectId, idCipher);
		String nickRegEx = signupFormService.createRegEx(selectNick, nickCipher);
		String pwdRegEx = signupFormService.createPwdReg(selectPwd, pwdCipher);
		
		
		signupFormService.saveRegExData(idRegEx+"s"+nickRegEx+"s"+pwdRegEx);
		signupFormService.loadRegExData();
		return "/a_main";
	}
	
	@RequestMapping(value = "/a_main", method = RequestMethod.GET)
	public String a_home() {
		return "/a_main";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
}
