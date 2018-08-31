package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class HomeController {
	@Autowired SqlSession sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {	
		return "user/login";
	}
	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weather(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "test/NewFile3";
	}
	@RequestMapping(value = "/newC", method = RequestMethod.GET)
	public String newC(Locale locale, Model model) {
	logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "test/home";
	}
	@RequestMapping(value = "/tag", method = RequestMethod.GET)
	public String tag() {
		return "test/tagcheck";
	}
	//로그인 후 첫 화면
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String newCccc(Locale locale, Model model) {
		return "cocktail/index-1";
	}
	@RequestMapping(value = "/newCc", method = RequestMethod.GET)
	public String newCc(Locale locale, Model model) {
		return "cocktail/product";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		return "test/first";
	}
	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2(Locale locale, Model model) {
		return "test/first+limocon";
	}
	@RequestMapping(value = "/auto", method = RequestMethod.GET)
	public String auto() {
		return "test/outoscroll2";
	}
	@RequestMapping(value = "/instaTest", method = RequestMethod.GET)
	public String instaTest(Locale locale, Model model) {
		return "test/instaTest";
	}
	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public String sidebar(Locale locale, Model model) {
		return "test/sidebar";
	}
	@RequestMapping(value = "/photoLibrary", method = RequestMethod.GET)
	public String photoLibrary(Locale locale, Model model) {
		return "cocktail/photoLibrary";
	}
	@RequestMapping(value = "/writeBoard", method = RequestMethod.GET)
	public String writeBoard() {
		return "test/WriteBoard";
	}
	@RequestMapping(value = "/writeBoard", method = RequestMethod.POST)
	public String writeBoard(HttpSession httpSession, UserPhoto vo, MultipartFile fileData,HttpServletRequest servletRequest) {
		System.out.println(vo);
		String originalFileName = fileData.getOriginalFilename();
		UUID uuid = UUID.randomUUID();
		String savedFileName = uuid+"_"+originalFileName;
		String path = servletRequest.getSession().getServletContext().getRealPath("resources"+savedFileName);
		File saveFile = new File(path);
		if(!saveFile.exists()) {
			saveFile.mkdirs();
		}
		try { 
			fileData.transferTo(saveFile);
		} catch (IOException e){
			System.out.println(e.getMessage());
			e.printStackTrace(); 
		}
		String userEmail = (String)httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		vo.setOriginalFileName(originalFileName);
		vo.setSaveFileName(savedFileName);
		System.out.println(vo);
		sqlSession.insert("testMapper.writeBoard",vo);
		return "test/WriteBoard";
	}
	@RequestMapping(value = "/myBoard", method = RequestMethod.GET)
	public String myBoard(HttpSession httpSession, Model model,HttpServletRequest servletRequest) {
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		String userEmail = (String)httpSession.getAttribute("useremail");
		List<UserPhoto> userPhoto = sqlSession.selectList("testMapper.getBoard",userEmail);
		for(UserPhoto photo : userPhoto) {
			System.out.println(photo);
			
		}
		model.addAttribute("userPhoto", userPhoto);
		model.addAttribute("path", "resources/");
		return "test/MyBoard";
	}
	
}
