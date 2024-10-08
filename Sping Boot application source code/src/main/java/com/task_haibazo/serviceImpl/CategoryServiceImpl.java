package com.task_haibazo.serviceImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.task_haibazo.dto.response.APICustomize;
import com.task_haibazo.dto.response.CategoryResponse;
import com.task_haibazo.entity.Category;

import com.task_haibazo.repository.CategoryRepository;

import com.task_haibazo.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public APICustomize<List<CategoryResponse>> categories() {
		List<Category> categories = categoryRepository.findAll();
		List<CategoryResponse> categoryResponseList = categories.stream()
				.map(category -> new CategoryResponse(category.getId(), category.getCategorName()))
				.collect(Collectors.toList());

		String message = categories.isEmpty() ? "No categories found!" : "All categories retrieved successfully!";
		int statusCode = categories.isEmpty() ? HttpStatus.NOT_FOUND.value() : HttpStatus.OK.value();
		// Tạo API chuẩn với statuCode, message, result
		return new APICustomize<>(statusCode, message, categoryResponseList);
	}
}
