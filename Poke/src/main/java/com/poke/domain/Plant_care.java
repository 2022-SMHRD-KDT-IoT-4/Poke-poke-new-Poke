package com.poke.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Plant_care {
	@NonNull String plant_nickname;
	@NonNull String last_date;
	private String plant_diary;
	private int plant_height;
	

}
