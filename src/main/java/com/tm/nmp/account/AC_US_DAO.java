package com.tm.nmp.account;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class AC_US_DAO {

	@Autowired
	private SqlSession ss;

	@Autowired
	private JavaMailSender mailSender;

	public boolean loginCheck(HttpServletRequest req) {
		AC_US_TITLE a = (AC_US_TITLE) req.getSession().getAttribute("loginAccount");
		if (a != null) {
			req.setAttribute("loginPage", "account/loginSuccess.jsp");
			System.out.println("로그인 성공");
			return true;
		}
		req.setAttribute("loginPage", "account/login.jsp");
		System.out.println("로그인 실패");
		return false;
	}

	public static String getClientIp(HttpServletRequest req) {

		String[] header_IPs = { "HTTP_CLIENT_IP", "HTTP_X_FORWARDED_FOR", "HTTP_X_FORWARDED",
				"HTTP_X_CLUSTER_CLIENT_IP", "HTTP_FORWARDED_FOR", "HTTP_FORWARDED", "X-Forwarded-For",
				"Proxy-Client-IP", "WL-Proxy-Client-IP" };

		for (String header : header_IPs) {
			String ip = req.getHeader(header);

			if (ip != null && !"unknown".equalsIgnoreCase(ip) && ip.length() != 0) {

				return ip;
			}
		}

		return req.getRemoteAddr();
	}

	public void accountRegDo(HttpServletRequest req, AC_US_TITLE ac) {
		if (ss.getMapper(AccountMapper.class).regAccount(ac) == 1) {
			System.out.println("가입 성공");
		} else {
			System.out.println("가입 실패");
		}
	}

	public void accountLoginDo(HttpServletRequest req, AC_US_TITLE ac) {
		 AC_US_TITLE dbAccount = ss.getMapper(AccountMapper.class).accountLogin(ac);
		//AC_US_TITLE dbAccount = new AC_US_TITLE();
		if (dbAccount != null) {
			if (ac.getUser_pwd().equals(dbAccount.getUser_pwd())) {
				req.getSession().setAttribute("loginAccount", dbAccount);
				req.getSession().setMaxInactiveInterval(60 * 60);
			}
		}
	}

	public void accountLogoutDo(HttpServletRequest req, AccountDTO ac) {
		req.getSession().setAttribute("loginAccount", null);
	}

	public void searchIdDo(HttpServletRequest req, AccountDTO ac) {
		ac.setAc_name(ac.getAc_name());
		ac.setAc_email(ac.getAc_email());
		AccountDTO idSearch = ss.getMapper(AccountMapper.class).searchId(ac);

		String getId = idSearch.getAc_id();
		String result = getId;

		int length = result.length();

		String maskedId = "";

		for (int i = 0; i < length; i++) {
			maskedId = i < length / 2 ? maskedId + result.charAt(i) : maskedId + "*";
		}
		req.setAttribute("result", maskedId);
	}

	public String userEmailCheckDo(String user_email) {
		Random random = new Random();
		int checknum = random.nextInt(888888) + 111111;

		// 이메일 보낼 양식
		String setFrom = "frvlv@naver.com";
		String toMail = user_email;
		String title = "비밀번호 인증 이메일 입니다.";
		String content = "인증번호는 " + checknum + " 입니다.";
		try {
			// 내용들을 담기
			MimeMessage mes = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mes, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content);
			mailSender.send(mes);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return Integer.toString(checknum);
	}

	public String emailCheckDo(String ac_email) {
		Random random = new Random();
		int checknum = random.nextInt(888888) + 111111;

		// 이메일 보낼 양식
		String setFrom = "frvlv@naver.com";
		String toMail = ac_email;
		String title = "비밀번호 인증 이메일 입니다.";
		String content = "인증번호는 " + checknum + " 입니다.";
		try {
			// 내용들을 담기
			MimeMessage mes = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mes, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content);
			mailSender.send(mes);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return Integer.toString(checknum);
	}

	public void changePwDo(HttpServletRequest req, AccountDTO ac) {
		if (ss.getMapper(AccountMapper.class).changePwDo(ac) == 1) {
			System.out.println("변경 완료");
			req.getSession().setAttribute("loginAccount", ss.getMapper(AccountMapper.class).accountLogin(ac));
		}
	}

	public void accountUpdate(HttpServletRequest req, AccountDTO ac) {
		if (ss.getMapper(AccountMapper.class).accountUpdate(ac) == 1) {
			System.out.println("수정 완료");
			req.getSession().setAttribute("loginAccount", ac);
		} else {
			System.out.println("수정 실패");
		}
	}

	public void accountDelete(HttpServletRequest req, AccountDTO ac) {
		if (ss.getMapper(AccountMapper.class).accountDelete(ac) == 1) {
			req.setAttribute("result", "탈퇴 성공");
		} else {
			req.setAttribute("result", "탈퇴실패");
		}
	}

	public int socialIdCheck(AC_US_TITLE ac) {
		System.out.println(ac.getUser_id_name());
		System.out.println(ac.getUser_auth_type());
		return ss.getMapper(AccountMapper.class).socialIdCheck(ac);
	}

	public void socialLogin(HttpServletRequest req, AC_US_TITLE ac) {
		AC_US_TITLE dbMember = ss.getMapper(AccountMapper.class).accountLogin(ac);
		if (dbMember != null) {
			System.out.println("로그인 성공");
			req.getSession().setAttribute("loginAccount", dbMember);
			req.getSession().setMaxInactiveInterval(60 * 60);
		} else {
			System.out.println("로그인 실패");
		}
	}

	public void socialReg(HttpServletRequest req, AccountDTO ac) {
		try {

			req.setCharacterEncoding("utf-8");

			String ac_id = req.getParameter("ac_id");
			System.out.println(ac_id);
			String ac_pw = " ";
			String ac_nick = " ";
			String ac_name = req.getParameter("ac_name");
			System.out.println(ac_name);
			String ac_addr = " ";
			String ac_email = req.getParameter("ac_email");
			System.out.println(ac_email);
			String ac_linkWhere = req.getParameter("ac_linkWhere");
			System.out.println(ac_linkWhere);

			ac.setAc_id(ac_id); // 네카구
			ac.setAc_pw(ac_pw);
			ac.setAc_nick(ac_nick);
			ac.setAc_name(ac_name); // 네카구
			ac.setAc_addr(ac_addr);
			ac.setAc_email(ac_email); // 네
			ac.setAc_linkWhere(ac_linkWhere);// 네카구

			if (ss.getMapper(AccountMapper.class).regAccount(ac) == 1) {
				System.out.println("회원 가입 성공");
			} else {
				System.out.println("회원 가입 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}