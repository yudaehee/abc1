package com.port.abc.boarder.service;

import java.util.List;

import com.port.abc.boarder.dto.BoardDto;

public interface BoardService  {
	
	public void insertBoard(BoardDto boardDto);
	public List<BoardDto> getBoardList();
	public BoardDto getOneBoard(int num);
	public boolean updateBoard(BoardDto boardDto);
	public boolean deleteBoard(BoardDto boardDto);
}



