package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.DiaryService;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@Autowired
	DiaryService service;

	@GetMapping
	public String show(Model model) throws Exception {
		model.addAttribute("diaries", service.getDiaryList());
		return "oldDiary";
	}

}
