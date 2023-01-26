package com.tm.nmp.fan;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.nmp.TokenMaker;
import com.tm.nmp.account.AC_US_DAO;
import com.tm.nmp.board.BoardDAO;
import com.tm.nmp.board.BoardOption;
import com.tm.nmp.board.BoardSelector;
import com.tm.nmp.board.PostVO;
import com.tm.nmp.board.ReplyVO;

@Controller
public class BaseballController {

	@Autowired
	private AC_US_DAO acDAO;

	@Autowired
	private BoardDAO brDAO;
	
	@RequestMapping(value = "baseball.board.go", method = RequestMethod.GET)
	public String baseballBoardGO(HttpServletRequest req) {
		TokenMaker.make(req);
		int post_board = Integer.parseInt(req.getParameter("post_board"));
		acDAO.loginCheck(req);
		brDAO.getAllPost(req, 1, post_board);
		
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value = "baseball.detail.go", method = RequestMethod.GET)
	public String baseballDetail(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		BoardOption.clearSearch(req);
		acDAO.wathingPage(req);
		acDAO.loginCheck(req);
		brDAO.getPost(req, p);
		req.setAttribute("contentPage", "fan/baseball/baseballDetail.jsp");
		return "index";
	}

	@RequestMapping(value = "baseball.reg.go", method = RequestMethod.GET)
	public String baseballRegGo(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		acDAO.wathingPage(req);
		if (acDAO.loginCheck(req)) {
			req.setAttribute("contentPage", "fan/baseball/baseballReg.jsp");
		} else {
			req.setAttribute("contentPage", "account/loginPage.jsp");
		}
		return "index";
	}

	@RequestMapping(value = "baseball.reg.do", method = RequestMethod.POST)
	public String baseballRegDo(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		acDAO.loginCheck(req);
		brDAO.regPost(req, p);
		brDAO.getAllPost(req, 1, 21);
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}

	@RequestMapping(value = "baseball.update.go", method = RequestMethod.GET)
	public String baseballUpdateGo(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		acDAO.wathingPage(req);
		acDAO.loginCheck(req);
		brDAO.getPost(req, p);
		req.setAttribute("contentPage", "fan/baseball/baseballUpdate.jsp");
		return "index";
	}

	@RequestMapping(value = "baseball.update.do", method = RequestMethod.POST)
	public String baseballUpdateDo(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		if (acDAO.loginCheck(req)) {
			brDAO.updatePost(req, p);
		}
		brDAO.getAllPost(req, 1, 21);
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}

	@RequestMapping(value = "baseball.delete.do", method = RequestMethod.GET)
	public String baseballDeleteDo(HttpServletRequest req, PostVO p) {
		TokenMaker.make(req);
		BoardOption.clearSearch(req);
		if (acDAO.loginCheck(req)) {
			brDAO.deletePost(req, p);
		}
		brDAO.getAllPost(req, 1, 21);
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}

	@RequestMapping(value = "/baseball.page.change", method = RequestMethod.GET)
	public String baseballPageChange(HttpServletRequest req) {
		TokenMaker.make(req);
		acDAO.wathingPage(req);
		acDAO.loginCheck(req);
		int pg = Integer.parseInt(req.getParameter("pg"));
		brDAO.getAllPost(req, pg, 21);
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}

	@RequestMapping(value = "/baseball.search.do", method = RequestMethod.GET)
	public String baseballSearchDo(HttpServletRequest req, BoardSelector bSel) {
		acDAO.loginCheck(req);
		brDAO.searchPost(req, bSel);
		brDAO.getAllPost(req, 1, 21);
		req.setAttribute("contentPage", "fan/baseball/baseballBoard.jsp");
		return "index";
	}

	@RequestMapping(value = "baseballReply.reg.do", method = RequestMethod.GET)
	public String baseballReplyRegDo(HttpServletRequest req, ReplyVO rp, PostVO p) {
		TokenMaker.make(req);
		if (acDAO.loginCheck(req)) {
			brDAO.regReply(req, rp);
		}
		brDAO.getPost(req, p);
		req.setAttribute("contentPage", "fan/baseball/baseballDetail.jsp");
		return "index";
	}

	@RequestMapping(value = "baseballReply.delete.do", method = RequestMethod.GET)
	public String baseballReplyDelete(HttpServletRequest req, ReplyVO rp, PostVO p) {
		TokenMaker.make(req);
		if (acDAO.loginCheck(req)) {
			brDAO.deleteReply(req, rp);
		}
		brDAO.getPost(req, p);
		req.setAttribute("contentPage", "fan/baseball/baseballDetail.jsp");
		return "index";
	}

	@RequestMapping(value = "baseballReply.update.do", method = RequestMethod.GET)
	public String baseballReplyUpdate(HttpServletRequest req, ReplyVO rp, PostVO p) {
		TokenMaker.make(req);
		if (acDAO.loginCheck(req)) {
			brDAO.updateReply(req, rp);
		}
		brDAO.getPost(req, p);
		req.setAttribute("contentPage", "fan/baseball/baseballDetail.jsp");
		return "index";
	}

}