package sesoc.global.cocktail.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.vo.User;

@Controller
public class MemberController {
	
	@Autowired SqlSession sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

		// 로그인후 화면 이동
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(Locale locale, Model model, User vo, HttpSession httpSession) {
			System.out.println(vo);
			MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
			User login = dao.selectOne(vo);
			if (login != null) {
				if(login.getUserAuth().equalsIgnoreCase("Y")) {
					httpSession.setAttribute("useremail", login.getUserEmail());
					System.out.println("로그인 완료!!");
				}else if(login.getUserAuth().equalsIgnoreCase("N")) {
					System.out.println("이메일 인증 필요함");
					return "user/notAuth";
				}
				
				return "redirect:/";
			} else {
				return "user/loginFail";
			}

		}
		
		// 로그아웃 기능
		@RequestMapping(value = "/logoutMember", method = RequestMethod.GET)
		public String logout(HttpSession httpSession) {
			httpSession.invalidate();

			return "redirect:/";

		}	
}
