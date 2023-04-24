package com.example.demo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@SuperBuilder(toBuilder=true)
@NoArgsConstructor
@AllArgsConstructor
public class SampleChildVo extends SampleVo{
	private String childField;
}
