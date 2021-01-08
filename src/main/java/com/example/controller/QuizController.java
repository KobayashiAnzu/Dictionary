package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.KoreanService;

@Controller
@RequestMapping("/quiz")
public class QuizController {


	@Autowired
	KoreanService service;

	@GetMapping
	public String quiz(Model model) throws Exception{
		model.addAttribute("koreans", service.getKoreanByRandom());
		return "quiz";
	}

}
