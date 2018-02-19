package com.pknu.file.GoodsFunction.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pknu.file.GoodsFunction.dao.GoodsDao;
import com.pknu.file.GoodsFunction.dto.GoodsDto;
import com.pknu.file.GoodsFunction.dto.PagingDto;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	GoodsDao goodsDao;
	
	@Override
	public void GoodsAdd(GoodsDto goodsDto) {
		goodsDao.goodsAdd(goodsDto);
		
	}
	
	
	@Override
	public List<GoodsDto> selectPaging(Map<String, Object> paramMap) {
		return goodsDao.selectPaging(paramMap);
	}


	@Override
	public int selectTotalPaging(Map<String, Object> paramMap) {
		
		return goodsDao.selectTotalPaging(paramMap);
	}



	@Override
	public String getGoodsInf(HashMap<String, Object> parmMap,Model model) {
		List<GoodsDto> goodsInfList=goodsDao.getGoodsInf(parmMap);
		
		System.out.println(goodsInfList);
		model.addAttribute("goodsList",goodsInfList);
		return "Goods/GoodsControl";

	}

	@Override
	public String selectGoods(GoodsDto goodsDto,Model model) {
		// TODO Auto-generated method stub
		GoodsDto goodsInf=goodsDao.updateInf(goodsDto);
		System.out.println(goodsInf);
		model.addAttribute("goodsInf", goodsInf);
		return "Goods/GoodsUpdate";
	}

	@Override
	public void GoodsUpdate(GoodsDto goodsDto) {
		// TODO Auto-generated method stub
		System.out.println(goodsDto);
		goodsDao.goodsUpdate(goodsDto);
	}




		
}
