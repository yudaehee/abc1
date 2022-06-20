package com.port.abc.boarder.dao;

import java.util.List;

import com.port.abc.boarder.dto.BoardDto;

public interface BoardDao {
	
	public void insert(BoardDto boardDto);
	public List<BoardDto> selectAll();
	public BoardDto selectOne(int num);
	public void increaseReadCount(int num);
	public BoardDto validateUserCheck(BoardDto boardDto);
	public void update(BoardDto boardDto);
	public void delete(int num);
	
	

}
