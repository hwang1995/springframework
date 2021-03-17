package com.mycompany.webapp.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.Board;


@Controller
public class Exam01Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(Exam01Controller.class);
	

	@RequestMapping(value = "/home")
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@GetMapping("/exam01/boardlist")
	public String getBoardList(HttpServletRequest request, HttpServletResponse response) {
		// 요청 내용 확인
		System.out.println(request.getQueryString());
		System.out.println("클라이언트의 주소" + request.getRemoteHost());
		
		// 데이터 생성 및 JSP 전달
		List<Board> list = new ArrayList<Board>();
		for(int i = 1 ; i <= 100; i++) {
			Board board = new Board();
			board.setBno(i);
			board.setBtitle("제목 " + i);
			board.setBcontent("내용 " + i);
			board.setBwriter("작성자 " + i);
			list.add(board);

		}
		
		request.setAttribute("list", list);
		request.setAttribute("name", "SUNG WOOK HWANG");
		
		
		// 뷰 이름 리턴
		return "exam01/boardlist";
		
	}
}
