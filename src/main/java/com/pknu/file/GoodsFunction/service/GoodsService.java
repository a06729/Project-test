package com.pknu.file.GoodsFunction.service;

import java.util.HashMap;

import org.springframework.ui.Model;

import com.pknu.file.GoodsFunction.dto.GoodsDto;

public interface GoodsService {

	void GoodsAdd(GoodsDto goodsDto);

	String getGoodsInf(HashMap<String, Object> parmMap,Model model);

}
