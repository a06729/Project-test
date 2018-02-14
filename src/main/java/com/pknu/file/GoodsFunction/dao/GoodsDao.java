package com.pknu.file.GoodsFunction.dao;

import java.util.HashMap;
import java.util.List;

import com.pknu.file.GoodsFunction.dto.GoodsDto;
import com.pknu.file.GoodsFunction.dto.PagingDto;

public interface GoodsDao {

	void goodsAdd(GoodsDto goodsDto);

	List<GoodsDto> getGoodsInf(HashMap<String, Object> parmMap);

	GoodsDto updateInf(GoodsDto goodsDto);

	void goodsUpdate(GoodsDto goodsDto);

	List<GoodsDto> selectPaging(PagingDto paging);

	int selectTotalPaging();

}
