package com.spring.boardPrac01.controller;

import java.util.List;

import com.spring.boardPrac01.dto.BoardDTO;

public interface BoardService {
	
	public List<BoardDTO> listAll() throws Exception;
	public void insert(BoardDTO bdto) throws Exception;
	public BoardDTO read(int num) throws Exception;
	public BoardDTO readNoCount(int num) throws Exception;
	public boolean modify(BoardDTO bdto) throws Exception;
	public boolean remove(BoardDTO bdto) throws Exception;
}
