package com.itwill.hotel.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.controller.interceptors.LoginCheck;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.exception.WrongRestaurantDataException;
import com.itwill.hotel.service.RestaurantService;
import com.itwill.hotel.util.PageInputDto;
import com.itwill.hotel.util.RestaurantBoardListPageDto;



@Controller
public class RestaurantViewResolverController {
	
	@Autowired
	@Qualifier("restaurantService")
	private RestaurantService restService;
	
	@RequestMapping("restaurant_test1")
	public String sample_ex1() {
		return "restaurant_test1";
	}
	@RequestMapping("restaurant_test2")
	public String sample_ex2() {
		return "restaurant_test2";
	}
	
	@RequestMapping("restaurant_all_list_test")
	public String restaurant_all_list_test(Model model,
										   @RequestParam(required = false) String pageno,
										   @RequestParam(required = false) String orderBy,
										   @RequestParam(required = false) String category) {
		
		if(pageno==null||pageno.equals("")){
			pageno="1";
		}	
		//2.한페이지에표시할 게시물수 
		int rowCountPerPage = 6;
		//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
		int pageCountPerPage = 5;
		//페이징(계산)을위한DTO,VO
		PageInputDto pageInputDto=
				new PageInputDto(rowCountPerPage,pageCountPerPage,pageno,"","");

		//게시물조회
		RestaurantBoardListPageDto restListPage 
			=restService.findRestaurantBoardList(pageInputDto, orderBy,category);
		
		
		
		model.addAttribute("restListPage",restListPage);
		
		return "restaurant_all_list_test";
	}
	
	
	/////////////////////////////////////////////////////////////
	@RequestMapping("restaurants_all_list")
	public String all_restaurants_list(Model model,
									   @RequestParam(required = false) String pageno,
									   @RequestParam(required = false) String orderBy,
									   @RequestParam(required = false) String category) {
		
		System.out.println("orderBy="+orderBy);
		
		if(pageno==null||pageno.equals("")){
			pageno="1";
		}
		if(category==null) {
			category="";
		}
		
		//2.한페이지에표시할 게시물수 
		int rowCountPerPage = 6;
		//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
		int pageCountPerPage = 5;
		//페이징(계산)을위한DTO,VO
		PageInputDto pageInputDto=
				new PageInputDto(rowCountPerPage,pageCountPerPage,pageno,"","");

		//게시물조회
		RestaurantBoardListPageDto restListPage 
			=restService.findRestaurantBoardList(pageInputDto, orderBy,category);
		
		List<HashMap<String,Integer>> foodCategoryList = restService.foodCategoryList();
		int foodCategoryDessertCnt = restService.foodCategoryDessertCnt();
		System.out.println("restListPage -->"+restListPage );
		model.addAttribute("restListPage",restListPage);
		model.addAttribute("foodCategoryList",foodCategoryList);
		model.addAttribute("currentPageno",pageno);
		model.addAttribute("category",category);
		model.addAttribute("foodCategoryDessertCnt",foodCategoryDessertCnt);
		
		System.out.println("restListPage ::-->"+ restListPage);
		for (int i = 0; i < foodCategoryList.size(); i++) {
			System.out.println("foodCategoryList.get(\"foodcategory\"):" + foodCategoryList.get(i).get("foodcategory"));
			System.out.println("foodCategoryList.get(\"categoryCnt\"):" + foodCategoryList.get(i).get("categoryCnt"));
		}
		
		return "restaurants_all_list";
	}
	
	@LoginCheck
	@RequestMapping(value="restaurant_cart_fixed_sidebar",method = RequestMethod.POST)
	public String restaurant_cart_fixed_sidebar(HttpSession session,
												@RequestParam(required =false) Integer pno) {
		//카트에 집어넣기위해 필요한정보
		//mNo 회원번호 , cproductQty(제품별 주문 수량), cProductTypePay(제품별 총가격),제품번호
		 
		
		
		
		return "restaurant_cart_fixed_sidebar";
	}
	
	@RequestMapping("restaurant_single_food_detail")
	public String single_restaurant_with_gallery(Model model,
												 @RequestParam(value="pno",required = false) Integer pno) throws WrongRestaurantDataException {
		System.out.println("pno ::->" + pno);
		if(pno==null || pno <= -1) {
			throw new WrongRestaurantDataException("잘못된 레스토랑 관련 데이터 입력");
		}
		
		RestaurantDTO product = restService.get_Restaurant_Product(pno);
		RestaurantDTO deposit_cost= restService.get_Restaurant_Product_name_select("BPPP");
		
		System.out.println("deposit_cost.pprice ->"+ deposit_cost.getPprice());
		
		model.addAttribute("restaurantProduct",product);
		model.addAttribute("deposit_cost",deposit_cost);
		return "restaurant_single_food_detail";
	}
	
	@LoginCheck
	@RequestMapping("restaurant_payment_fixed_sidebar")
	public String restaurant_payment_fixed_sidebar() {
		
		return "restaurant_payment_fixed_sidebar";
	}
	
	@LoginCheck
	@RequestMapping("restaurant_confirmation_fixed_sidebar")
	public String restaurant_confirmation_fixed_sidebar() {
	
		return "restaurant_confirmation_fixed_sidebar";
	}
	
	
	
	
	/*
	@RequestMapping("restaurant_single_restaurant_detail")
	public String restaurant_single_restaurant_detail() {
		
		return "restaurant_single_restaurant_detail";
	}
	*/
	@ExceptionHandler(WrongRestaurantDataException.class)
	public String restaurant_Controll_Exception(WrongRestaurantDataException e) {
		System.out.println(e);
		return "common_404";
	}
}
