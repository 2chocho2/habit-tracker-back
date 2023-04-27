package habitTracker.service;

import java.util.List;

import habitTracker.dto.HabitDto;
import habitTracker.dto.HabitHistoryDto;

public interface HabitTrackerService {

	// 습관 목록 조회
	public List<HabitDto> openHabitList(String registDt) throws Exception;
	
	// 습관 추가
	public int addHabit(HabitDto habitDto) throws Exception;
	
	// 습관 수정
	public int editHabit(HabitDto habitDto) throws Exception;
	
	// 습관 삭제
	public int deleteHabit(int habitIdx) throws Exception;
	
	// 습관 상제 페이지
	public HabitDto openHabitDetail(int habitIdx) throws Exception;
	public List<HabitHistoryDto> openHabitHistory(int habitIdx) throws Exception;
	
	// 습관 실행 여부 체크
	public int checkHabit(HabitHistoryDto habitHistoryDto) throws Exception;
	
	// 습관 실행 여부 체크 해제
	//	public int unCheckHabit(HabitHistoryDto habitHistoryDto) throws Exception;
	
	// 월 변경 후 목록 조회
	public List<HabitDto> openHabitListByMonth(String registDt) throws Exception;
	
}
