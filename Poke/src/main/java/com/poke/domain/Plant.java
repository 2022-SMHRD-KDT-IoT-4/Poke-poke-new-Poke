package com.poke.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plant {
	private int plant_number;
	private String plant_name;
	private int cycle;
	private int temperature;
	private int humidity;
	private int uv;
	

}
