package org.font.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/font/*")
@AllArgsConstructor
public class FontController {

	// 일반메인
	@GetMapping("/main")
	public String getMain() {

		log.info("main 이동");

		return "main";
	}
}