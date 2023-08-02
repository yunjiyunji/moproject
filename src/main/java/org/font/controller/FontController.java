package org.font.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j;

@Log4j
public class FontController {

	@RequestMapping("")
	public void gitTest() {
		log.info("Git Test");
	}
}
