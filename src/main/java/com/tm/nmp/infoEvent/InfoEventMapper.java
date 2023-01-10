package com.tm.nmp.infoEvent;

import java.util.List;

public interface InfoEventMapper {

	List<TeamEventDTO> showAllTeamEvent();

	List<TeamEventDTO> showTeamEvent(TeamEventDTO te);

	int insertTeamEvent(TeamEventDTO te);

	int updateTeamEvent(TeamEventDTO te);

	int deleteTeamEvent(TeamEventDTO te);


}
