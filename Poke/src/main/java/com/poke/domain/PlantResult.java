package com.poke.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlantResult {
	private String plant_nickname;
	private String teperatureResult;
	private String teperatureResultTTS;
	private String humidityResult;
	private String humidityResultTTS;
	private String uvResult;
	private String uvResultTTS;
}