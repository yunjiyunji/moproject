package org.font.controller;


import org.font.service.FontService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/font/*")
@AllArgsConstructor
public class FontController {

	private FontService fontservice;
	
	// 일반메인
	@GetMapping("/main")
	public String getMain(Model model) {

		log.info("main 이동");
		model.addAttribute("list", fontservice.getList());

		return "main";
	}
}