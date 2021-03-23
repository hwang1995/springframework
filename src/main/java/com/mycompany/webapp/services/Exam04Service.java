package com.mycompany.webapp.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.Exam04DAO;
import com.mycompany.webapp.dto.Board;

@Service
public class Exam04Service {
	@Autowired
	private Exam04DAO exam04DAO;
	
	public List<Board> getBoardList() {
		List<Board> list = exam04DAO.selectAll();
		
		return list;
		
	}

}
