package sesoc.global.cocktail.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sesoc.global.cocktail.dao.EmailDAO;
import sesoc.global.cocktail.email.MailHandler;
import sesoc.global.cocktail.email.TempKey;
import sesoc.global.cocktail.vo.User;

@Controller
public class EmailController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private JavaMailSender mailSender;
	
	@Autowired EmailDAO dao;


	@Transactional
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegisterPost(User user, Model model, RedirectAttributes rttr, HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("회원가입...");
		logger.info(user.toString());
		System.out.println(user);
		dao.insertUser(user); // 회원가입 DAO

		String key = new TempKey().getKey(50, false); // 인증키 생성

		dao.createAuthKey(user.getUserEmail(), key); // 인증키 DB저장

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[ALMOM 서비스 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://10.10.15.227:8888/cocktail/emailConfirm?user_email=").append(user.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("trapkka997@gmail.com", "알몸개발자");
		sendMail.setTo(user.getUserEmail());
		sendMail.send();
		rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주 3");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, String key, Model model) throws Exception { // 이메일인증
		System.out.println(user_email);
		User user = new User();
		user.setUserEmail(user_email);
		user.setUserAuthCode(key);
		dao.userAuth(user);
		model.addAttribute("user_email", user_email);

		return "emailConfirm";
	}


}
