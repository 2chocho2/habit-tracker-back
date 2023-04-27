package habitTracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import habitTracker.dto.HabitDto;
import habitTracker.dto.HabitHistoryDto;
import habitTracker.service.HabitTrackerService;

@RestController
public class HabitTrackerApiController {

	@Autowired
	HabitTrackerService habitTrackerService;
	
	// 습관 목록 조회
	@GetMapping("/api/habit")
	public ResponseEntity<List<HabitDto>> openHabitList() throws Exception {
		List<HabitDto> list = habitTrackerService.openHabitList();
		
		if(list != null) {
			return ResponseEntity.status(HttpStatus.OK).body(list);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(list);
		}
	}
	
	// 습관 추가
	@PostMapping("/api/habit/add")
	public ResponseEntity<Integer> addHabit(@RequestBody HabitDto habitDto) throws Exception {
		int addCount = habitTrackerService.addHabit(habitDto);
		
		if (addCount != 1) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(addCount);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(addCount);
		}
	}
	
	// 습관 수정
	@PutMapping("/api/habit/{habitIdx}")
	public ResponseEntity<Integer> editHabit(
							@PathVariable("habitIdx") int habitIdx,
							@RequestBody HabitDto habitDto) throws Exception {
		habitDto.setHabitIdx(habitIdx);
		int editCount = habitTrackerService.editHabit(habitDto);
		
		if (editCount != 1) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(editCount);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(editCount);
		}
	}
	
	// 습관 삭제
	@DeleteMapping("/api/habit/{habitIdx}")
	public ResponseEntity<Integer> deleteHabit(@PathVariable("habitIdx") int habitIdx) throws Exception {
		int deleteCount = habitTrackerService.deleteHabit(habitIdx);
		
		if (deleteCount != 1) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(deleteCount);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(deleteCount);
		}
	}
	
	// 습관별 상세 페이지
	@GetMapping("/api/habit/{habitIdx}")
	public ResponseEntity<HabitDto> openHabitDetail(@PathVariable("habitIdx") int habitIdx) throws Exception {
		HabitDto habitDto = habitTrackerService.openHabitDetail(habitIdx);
		
		if (habitDto != null) {
			return ResponseEntity.status(HttpStatus.OK).body(habitDto);
		} else {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
		}
	}
	
	// 습관 실행 여부 체크
	@PostMapping("/api/habit/check")
	public ResponseEntity<Integer> checkHabit(@RequestBody HabitHistoryDto habitHistorytDto) throws Exception {
		int checkCount = habitTrackerService.checkHabit(habitHistorytDto);
		
		if (checkCount != 1) {
			return ResponseEntity.status(HttpStatus.OK).body(checkCount);
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(checkCount);
		}
	}
	
	@DeleteMapping("/api/habit/check")
	public ResponseEntity<Integer> unCheckHabit(@RequestBody HabitHistoryDto habitHistorytDto) throws Exception {
		int checkCount = habitTrackerService.unCheckHabit(habitHistorytDto);
		
		if (checkCount != 1) {
			return ResponseEntity.status(HttpStatus.OK).body(checkCount);
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(checkCount);
		}
	}
	
	// 월 변경 후 목록 조회
	@GetMapping("/api/habit/{registDt}")
	public ResponseEntity<List<HabitDto>> openHabitListByMonth(@PathVariable("registDt") String registDt) throws Exception {
		List<HabitDto> list = habitTrackerService.openHabitListByMonth(registDt);
		
		if (list != null) {
			return ResponseEntity.status(HttpStatus.OK).body(list);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(null);
		}
	}
}
