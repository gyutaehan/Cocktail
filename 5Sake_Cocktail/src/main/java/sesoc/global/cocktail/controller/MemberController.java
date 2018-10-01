package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserFollow;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class MemberController {
	
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

		/**
		 * 로그인후 화면 이동
		 * 현재는 사용하지 않음
		 * @param vo[ userEmail, userPwd ] 들어가있음
		 * @return 화면이동
		 * @author hangyutae
		 */
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(Locale locale, Model model, User vo, HttpSession httpSession) {
			System.out.println(vo);
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
		/**
		 * 로그인 기능
		 * @param vo [ userEmail, userPwd ]
		 * @param httpSession
		 * @return 1 : 로그인 성공, 2 : 이메일 인증 실패, 3: 로그인 실패
		 * @author hangyutae
		 */
		@RequestMapping(value = "/loginAjax", method = RequestMethod.POST)
		public @ResponseBody String loginAjax(Locale locale, Model model, User vo, HttpSession httpSession) {
			System.out.println(vo);
			User login = dao.selectOne(vo);
			if (login != null) {
				if(login.getUserAuth().equalsIgnoreCase("Y")) {
					httpSession.setAttribute("useremail", login.getUserEmail());
					return "1";
				}else {
					System.out.println("이메일 인증 필요함");
					return "2";
				}
				
			} else {
				return "3";
			}

		}
		
		/**
		 * 로그인 리다이렉트
		 * @return login화면
		 * @author hangyutae
		 */
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login() {
			return "user/login";

		}	
		
		
		/**
		 * 로그아웃 기능
		 * @return 홈화면
		 * @author hangyutae
		 */
		@RequestMapping(value = "/logoutMember", method = RequestMethod.GET)
		public String logout(HttpSession httpSession) {
			httpSession.invalidate();

			return "redirect:/";

		}	
		
		/**
		 * 개인 사진 라이브러리
		 * 화면 안씀
		 * @param vo [ userEmail ]
		 * @return 라이브러리 화면 이동 
		 * @author hangyutae
		 */
		@RequestMapping(value = "/photoLibrary", method = RequestMethod.GET)
		public String photoLibrary(Locale locale,HttpSession httpSession, Model model, User vo,HttpServletRequest servletRequest) {
			String userEmail = (String) httpSession.getAttribute("useremail");
			vo.setUserEmail(userEmail);
			String path = servletRequest.getSession().getServletContext().getRealPath("resources");
			List<UserPhoto> userPhotos = dao.selectUserPhoto(vo);
			model.addAttribute("userPhotos", userPhotos);
			model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
			
			
			return "imsi/photoLibrary";
		}
		
		/**
		 * 갤러리 화면
		 * 화면 안씀
		 * @return 갤러리 화면 이동
		 * @author hangyutae
		 */
		@RequestMapping(value = "/gallery", method = RequestMethod.GET)
		public String main(Locale locale, Model model,HttpServletRequest servletRequest) {
			List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
			String path = servletRequest.getSession().getServletContext().getRealPath("resources");
			System.out.println(path);
			model.addAttribute("userPhotos", userPhotos);
			model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
			return "test/grid";
		}
		
		/**
		 * 프로필 사진 업데이트 기능
		 * @param file
		 * @param vo []
		 * @return redirect:updateProfilePicture
		 * @author hangyutae
		 */
		@RequestMapping(value = "/updateProfilePicture", method = RequestMethod.POST)
		public String updateProfilePicture(Locale locale,MultipartFile file, Model model,HttpSession httpSession,User vo,HttpServletRequest servletRequest) {
			System.out.println(file);
			String userEmail = (String)httpSession.getAttribute("useremail");
			vo.setUserEmail(userEmail);
			String originalFilename = file.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			String savedFilename = uuid+"_"+originalFilename;
			vo.setOriginalFilename(originalFilename);
			vo.setSavedFilename(savedFilename);
			String jsonPath = servletRequest.getSession().getServletContext().getRealPath("/resources/"+savedFilename);
			File saveFile = new File(jsonPath);
			if(!saveFile.exists()) {
				saveFile.mkdirs();
			}
			try { 
				dao.updateProfilePicture(vo);
				file.transferTo(saveFile);
			} catch (IOException e){
				System.out.println(e.getMessage());
				e.printStackTrace(); 
			}
			return "redirect:updateProfilePicture";
		}
		
		/**
		 * 프로필 사진 업로드 화면으로 이동
		 * @param vo
		 * @return 프로필사진 화면 이동
		 * @author hangyutae
		 */
		@RequestMapping(value = "/updateProfilePicture", method = RequestMethod.GET)
		public String updateProfilePicture(Model model, HttpSession httpSession, User vo) {
			String userEmail = (String) httpSession.getAttribute("useremail");
			vo.setUserEmail(userEmail);
			String path = "http://localhost:8888/cocktail/resources/";
			User user = dao.selectOne(vo);
			System.out.println(user);
			model.addAttribute("user", user);
			model.addAttribute("path", path);
			return "imsi/updateUserPicture";
		}
		/**
		 * 유저 팔로우 기능
		 * @param httpSession
		 * @param vo [ followUser ]
		 * @return 1 : 성공, 2: 이미 팔로우 한 사람인 경우, 3 : 본인 일 경우 
		 */
		@RequestMapping(value = "/userFollow", method = RequestMethod.GET)
		public @ResponseBody String userFollow(HttpSession httpSession, UserFollow vo) {
			String userEmail = (String) httpSession.getAttribute("useremail");
			if(vo.getFollowUser().equals(userEmail)) {
				return "3"; //본인 자신 경우
			}
			vo.setUserEmail(userEmail);
			UserFollow uf = dao.getUserFollow(vo);
			
			if(uf != null) {
				return "2"; //이미 팔로우 한 사람인 경우
			}else {
				dao.insertUserFollow(vo);
				return "1"; //성공
			}

		}
		@RequestMapping(value = "/selectUserPhoto", method = RequestMethod.POST)
		public @ResponseBody List<UserPhoto> selectUserPhoto(User vo) {
			List<UserPhoto> photoList = dao.selectUserPhoto(vo);
			return photoList;
		}
		@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
		public String updateUser(User vo, HttpSession httpSession) {
			String userEmail = (String) httpSession.getAttribute("useremail");
			vo.setUserEmail(userEmail);
			int result = dao.updateUser(vo);
			return "redirect:/";
		}
		
}
