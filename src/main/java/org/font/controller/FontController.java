package org.font.controller;


import org.font.service.FontService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/font/*")
@AllArgsConstructor
public class FontController {

	private FontService fontservice;
	
	// 메인페이지
	@GetMapping("/main")
	public String getMain(Model model) {

		log.info("main 이동");
		model.addAttribute("list", fontservice.getList());

		return "main";
	}
	
	// 조회페이지
	@GetMapping("/get")
	public String get(@RequestParam("fid") int fid, Model model) {
		
		log.info("/get");
		model.addAttribute("font", fontservice.get(fid));
		
		return "get";
	}
}