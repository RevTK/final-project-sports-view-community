package com.tm.nmp.board;

import java.util.List;

public class BoardNumberList {

	private List<Integer> boardNumberList;

	public BoardNumberList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardNumberList(List<Integer> boardNumberList) {
		super();
		this.boardNumberList = boardNumberList;
	}

	public List<Integer> getBoardNumberList() {
		return boardNumberList;
	}

	public void setBoardNumberList(List<Integer> boardNumberList) {
		this.boardNumberList = boardNumberList;
	}

	public void showNumberList() {
		for (int boardNumberList : boardNumberList) {
			System.out.println(boardNumberList);
		}
	}
}
