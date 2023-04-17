package habitTracker.dto;

import lombok.Data;

@Data
public class HabitDto {

	private int habitIdx;
	private String habitContents;
	private String registDt;
	private String deleteYn;
	
}
