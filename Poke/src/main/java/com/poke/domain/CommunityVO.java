package com.poke.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommunityVO {
	int post_number;
	String post_name;
	String post_contents;
	int view_count;
	String id;
}
