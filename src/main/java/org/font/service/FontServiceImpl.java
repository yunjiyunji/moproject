package org.font.service;

import java.util.List;

import org.font.domain.FontVO;
import org.font.mapper.FontMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class FontServiceImpl implements FontService {

	@Setter(onMethod_ = @Autowired)
	private FontMapper fontmapper;
	
	@Override
	public List<FontVO> getList() {
		log.info("getList.........");
		return fontmapper.getList();
	}

	@Override
	public FontVO get(int fid) {
		log.info("get......" + fid);
		return fontmapper.read(fid);
	}
	
	

}
