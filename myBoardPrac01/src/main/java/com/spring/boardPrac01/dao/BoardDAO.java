package com.spring.boardPrac01.dao;

import java.util.List;

import com.spring.boardPrac01.dto.BoardDTO;

public interface BoardDAO {
	
	public List<BoardDTO> getAllBoard() throws Exception;

	public void insertBoard(BoardDTO bdto) throws Exception;
	
	public BoardDTO getOneBoard(int num) throws Exception;
	
	public void increaseReadCount(int num) throws Exception;
	
	public void updateBoard(BoardDTO bdto) throws Exception;
	
	public BoardDTO validateUserCheck(BoardDTO bdto) throws Exception;
	
	public void deleteBoard(int num) throws Exception;
}
