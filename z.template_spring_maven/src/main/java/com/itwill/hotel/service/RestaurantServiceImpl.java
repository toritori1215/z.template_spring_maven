package com.itwill.hotel.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.RestaurantCartDTO;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.domain.Restaurant_JD_DTO;
import com.itwill.hotel.domain.Restaurant_J_DTO;
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

	@Override
	public int foodCategoryDessertCnt() {
		int foodCategoryDessertCnt = restaurantdao.foodCategoryDessertCnt();
		return foodCategoryDessertCnt;
	}

	@Override
	public RestaurantDTO get_Restaurant_Product_name_select(String pname) {
		// TODO Auto-generated method stub
		
		RestaurantDTO deposit_cost = restaurantdao.get_Restaurant_Product_name_select(pname);
		
		return deposit_cost;
	}


	@Override
	public List<RestaurantCartDTO> findCartList(Integer mno) {
		// TODO Auto-generated method stub
		List<RestaurantCartDTO> restaurantCart = restaurantdao.findCartList(mno);
		return restaurantCart;
		
	}
	
	
	@Transactional(propagation = Propagation.REQUIRED,
			isolation = Isolation.READ_COMMITTED,
			timeout = 10)
	@Override
	public int insertCartInfo(RestaurantCartDTO cart_info) {
		// TODO Auto-generated method stub
		int insertCartCnt = restaurantdao.insertCartInfo(cart_info);
		return insertCartCnt;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED,
	isolation = Isolation.READ_COMMITTED,
	timeout = 10)
	public int updateCartInfo(RestaurantCartDTO cart_info) {
		// TODO Auto-generated method stub
		int updateCartCnt = restaurantdao.updateCartInfo(cart_info);
		
		return updateCartCnt;
	}

	@Override
	public int seatCapacityCalcul(HashMap<String, String> dateAndtime) {
		// TODO Auto-generated method stub
		//public int seatCapacityCalcul(HashMap<String, String> dateAndtime)
		int alreadyCapacity = restaurantdao.seatCapacityCalcul(dateAndtime);
		return alreadyCapacity;
	}

	@Override
	public int deleteMemberCart(int mno) {
		// TODO Auto-generated method stub
		int deleteCnt = restaurantdao.deleteMemberCart(mno);
		return deleteCnt;
	}
	
	@Transactional(propagation = Propagation.REQUIRED,
				   isolation = Isolation.READ_COMMITTED,
				   timeout = 10)
	@Override
	public boolean cartReDefindTransaction(List<Restaurant_JD_DTO> jd_list, Member member) {
		// TODO Auto-generated method stub
		boolean transactionSucceed = false;
		//1.기존 카트리스트 삭제.
		Integer insertCnt = null;
		Integer removeCnt = null;
		removeCnt =	restaurantdao.deleteMemberCart(member.getmNo());
		//2.새로운 카트리스트 삽입.
	    for (Restaurant_JD_DTO restaurant_JD_DTO : jd_list) {
			System.out.println(restaurant_JD_DTO);
			//2.카트 View 에서 확정된 항목들의 정보들을 카트테이블에 집어 넣는다.
			RestaurantCartDTO cartItem = new RestaurantCartDTO(member.getmNo(), 
															  restaurant_JD_DTO.getJdproductqty(), 
															  restaurant_JD_DTO.getJdproducttot(),
															  restaurant_JD_DTO.getPno(),
															  null);
			insertCnt = restaurantdao.insertCartInfo(cartItem);
			
	    }
		
	    if(insertCnt!=null && removeCnt!=null) {
	    	transactionSucceed = true;
	    }
	    
		return transactionSucceed;
	}

	@Override
	public List<RestaurantDTO> all_jumun_Info_Insert(Restaurant_J_DTO jumundto, 
												  List<Restaurant_JD_DTO> jd_list,
												  int mno) {
		// TODO Auto-generated method stub
		boolean transaction_succ = false;
		int insertJCnt = restaurantdao.insertJumunTable(jumundto);
		int insertJDCnt =0; 
		for (Restaurant_JD_DTO restaurant_JD_DTO : jd_list) {
			insertJDCnt = restaurantdao.insertJumunDetailTable(restaurant_JD_DTO);
		}

		if(insertJCnt > 0 && insertJDCnt>0) {
			transaction_succ = true;
		}
		////// 주문 상세의 상품들 정보를 가져온다.
		List<RestaurantDTO> jd_product_list = new ArrayList<RestaurantDTO>();
		for (Restaurant_JD_DTO restaurant_JD_DTO : jd_list) {
			RestaurantDTO jd_product = restaurantdao.get_Restaurant_Product(restaurant_JD_DTO.getPno());
			jd_product_list.add(jd_product);
		}
		
		
		
		return jd_product_list;
	}

	
	

}
