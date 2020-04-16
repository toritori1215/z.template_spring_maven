package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.repository.RestaurantDao;
import com.itwill.hotel.util.PageCalculator;
import com.itwill.hotel.util.PageInputDto;
import com.itwill.hotel.util.RestaurantBoardListPageDto;





@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService{
	@Autowired
	@Qualifier("restaurantDaoImpl")
	private RestaurantDao restaurantdao;
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED,
					isolation = Isolation.READ_COMMITTED,
					timeout = 10)
	public int registerProduct(RestaurantDTO restdto) {
		
		int registProductCnt = restaurantdao.registerProduct(restdto);
		
		
		
		
		return registProductCnt;
	}
	
	@Override
	public RestaurantDTO get_Restaurant_Product(int pNo) {
		RestaurantDTO restDTO = restaurantdao.get_Restaurant_Product(pNo);
		return restDTO;
	}

	
	
	@Override
	public RestaurantBoardListPageDto findRestaurantBoardList(PageInputDto pageInputDto,String orderBy, String category) {
		//System.out.println("orderBy::"+orderBy);
		int totalRecordCount=0;
			//1.전체글의 갯수
		if(category==null || category=="") {
			totalRecordCount = restaurantdao.restEntireProductCnt();
		}else if(category!=null && !category.equals("") && !category.contains("Dessert")) {
			totalRecordCount = restaurantdao.restCategoryProductCnt(category);
		}else if(category!=null && !category.equals("") && category.contains("Dessert")) {
			totalRecordCount = restaurantdao.restCategoryProductDessertCnt(category);
		}
		System.out.println("전체글의 갯수 :"+ totalRecordCount);
		System.out.println("선택된 페이지 :"+ pageInputDto.getSelectPage());
		System.out.println("보여줄 행 수:"+ pageInputDto.getRowCountPerPage());		
		System.out.println("보여줄 페이지 수 :"+ pageInputDto.getPageCountPerPage());
		//2.paging계산(PageCounter 유틸클래스)
		RestaurantBoardListPageDto restBoardListPageDto=PageCalculator.getPagingInfo(
								Integer.parseInt(pageInputDto.getSelectPage()),
								pageInputDto.getRowCountPerPage(),
								pageInputDto.getPageCountPerPage(),
								totalRecordCount);
		//3.게시물데이타 얻기
		List<RestaurantDTO> boardList=
				restaurantdao.findRestBoardList(orderBy,
												category);
		
		if(boardList != null) {
			System.out.println("boardList ::" + boardList);
		}else {
			System.out.println("boardList ::읎다!!");
		}
		restBoardListPageDto.setList(boardList);
		System.out.println("restBoardListPageDtogetTotalRecordCount()::"+restBoardListPageDto);
		
		return restBoardListPageDto;
	}
	
	@Override
	public RestaurantBoardListPageDto calculator_paging(PageInputDto pageInputDto) {
		
		//1.전체글의 갯수
		int totalRecordCount = restaurantdao.restEntireProductCnt();
		System.out.println("전체글의 갯수 :"+ totalRecordCount);
		System.out.println("선택된 페이지 :"+ pageInputDto.getSelectPage());
		System.out.println("보여줄 행 수:"+ pageInputDto.getRowCountPerPage());		
		System.out.println("보여줄 페이지 수 :"+ pageInputDto.getPageCountPerPage());
		//2.paging계산(PageCounter 유틸클래스)
		RestaurantBoardListPageDto restBoardListPageDto=PageCalculator.getPagingInfo(
				Integer.parseInt(pageInputDto.getSelectPage()),
				pageInputDto.getRowCountPerPage(),
				pageInputDto.getPageCountPerPage(),
				totalRecordCount);
		
		
		return restBoardListPageDto;
	}
	public List<HashMap<String,Integer>> foodCategoryList(){
		List<HashMap<String,Integer>> foodCategoryList=null;
		foodCategoryList = restaurantdao.foodCategoryList();
		
		return foodCategoryList;
	}
}
