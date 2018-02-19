package com.pknu.file.GoodsFunction.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pknu.file.GoodsFunction.dto.GoodsDto;
import com.pknu.file.GoodsFunction.dto.PagingDto;

public interface GoodsDao {

	void goodsAdd(GoodsDto goodsDto);

	List<GoodsDto> getGoodsInf(HashMap<String, Object> parmMap);

	GoodsDto updateInf(GoodsDto goodsDto);

	void goodsUpdate(GoodsDto goodsDto);

	List<GoodsDto> selectPaging(Map<String, Object> paramMap);

	int selectTotalPaging(Map<String, Object> paramMap);

}
