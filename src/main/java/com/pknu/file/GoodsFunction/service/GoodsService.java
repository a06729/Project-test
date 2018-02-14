package com.pknu.file.GoodsFunction.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.pknu.file.GoodsFunction.dto.GoodsDto;
import com.pknu.file.GoodsFunction.dto.PagingDto;

public interface GoodsService {

	void GoodsAdd(GoodsDto goodsDto);

	String getGoodsInf(HashMap<String, Object> parmMap,Model model);

	String selectGoods(GoodsDto goodsDto,Model model);

	void GoodsUpdate(GoodsDto goodsDto);

	List<GoodsDto> selectPaging(PagingDto paging);

	int selectTotalPaging();

}
