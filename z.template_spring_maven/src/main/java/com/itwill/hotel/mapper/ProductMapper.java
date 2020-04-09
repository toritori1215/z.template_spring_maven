package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Product;

public interface ProductMapper {

	public Product selectByNo(Integer pNo);

	public List<Product> selectByType(HashMap parameterMap);

	public Integer countBookedRoomQty(HashMap parameterMap);
	
	public Integer countBookedTourQty(HashMap parameterMap);

}
