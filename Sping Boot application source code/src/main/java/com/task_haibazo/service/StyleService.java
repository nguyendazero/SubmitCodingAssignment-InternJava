package com.task_haibazo.service;

import java.util.List;

import com.task_haibazo.dto.response.APICustomize;
import com.task_haibazo.dto.response.StyleResponse;

public interface StyleService {
	public APICustomize<List<StyleResponse>> styles();

}
