package com.spring.boardPrac01.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.boardPrac01.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	@Override
	public List<BoardDTO> getAllBoard() throws Exception {
		return session.selectList("com.spring.mapper.BoardMapper.getAllBoard");
	}

	@Override
	public void insertBoard(BoardDTO bdto) throws Exception {
		session.insert("com.spring.mapper.BoardMapper.insertBoard", bdto);		
	}

	@Override
	public BoardDTO getOneBoard(int num) throws Exception {
		return session.selectOne("com.spring.mapper.BoardMapper.getOneBoard", num);
	}

	@Override
	public void increaseReadCount(int num) throws Exception {
		session.update("com.spring.mapper.BoardMapper.increaseReadCount", num);
	}

	@Override
	public void updateBoard(BoardDTO bdto) throws Exception {
		session.update("com.spring.mapper.BoardMapper.updateBoard", bdto);
		
	}

	@Override
	public BoardDTO validateUserCheck(BoardDTO bdto) throws Exception {
		return session.selectOne("com.spring.mapper.BoardMapper.validateUserCheck", bdto);
	}

	@Override
	public void deleteBoard(int num) throws Exception {
		session.delete("com.spring.mapper.BoardMapper.deleteBoard", num);
		
	}
}
