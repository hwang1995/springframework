package com.mycompany.webapp.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Board;

@Repository
public class Exam04DAO {
	
	public List<Board> selectAll() {
		List<Board> list = new ArrayList<>();
		for(int i = 1 ; i <= 100; i++) {
			Board board = new Board();
			board.setBno(i);
			board.setBtitle("제목 " + i);
			board.setBcontent("내용 " + i);
			board.setBwriter("작성자 " + i);
			board.setBdate(new Date());
			board.setBhitcount(0);
			list.add(board);

		}
		return list;
	}

}
