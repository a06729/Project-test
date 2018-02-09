package com.pknu.file.GoodsFunction.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pknu.file.GoodsFunction.dao.GoodsDao;
import com.pknu.file.GoodsFunction.dto.GoodsDto;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	GoodsDao goodsDao;
	
	@Override
	public void GoodsAdd(GoodsDto goodsDto) {
		goodsDao.goodsAdd(goodsDto);
		
	}

	@Override
	public String getGoodsInf(HashMap<String, Object> parmMap,Model model) {
		Map<String, Object> resultMap=new HashMap<>();
		List<GoodsDto> goodsInfList=goodsDao.getGoodsInf(parmMap);
		
		System.out.println(goodsInfList);
		model.addAttribute("goodsList",goodsInfList);
		return "Goods/GoodsControl";

	}
		
}
