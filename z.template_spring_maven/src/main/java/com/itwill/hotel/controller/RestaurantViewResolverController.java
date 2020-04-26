package com.itwill.hotel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.itwill.hotel.controller.interceptors.LoginCheck;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.RestaurantCartDTO;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.domain.Restaurant_JD_DTO;
import com.itwill.hotel.domain.Restaurant_J_DTO;
import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;
import com.itwill.hotel.exception.WrongRestaurantDataException;
import com.itwill.hotel.service.RestaurantService;
import com.itwill.hotel.service.ReviewService;
import com.itwill.hotel.util.PageInputDto;
import com.itwill.hotel.util.RestaurantBoardListPageDto;

import net.sf.json.JSONArray;



@Controller
public class RestaurantViewResolverController {
	
	@Autowired
	@Qualifier("restaurantService")
	private RestaurantService restService;
	
	@Autowired
	private ReviewService reviewService;
	
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
	@RequestMapping(value="restaurant_cart_fixed_sidebar",method = RequestMethod.GET)//,method = RequestMethod.POST
	public String restaurant_cart_fixed_sidebar_get(HttpSession session,
													Model model) {
		
		Member member= (Member)session.getAttribute("sUser");
		System.out.println("member.getmNo() ="+ member.getmNo());
		RestaurantDTO restaurant_prod= restService.get_Restaurant_Product_name_select("BPPP");
		
		session.setAttribute("restaurant_prod", restaurant_prod);
		System.out.println("여기까진 들어오는듯 한데???");
		List<RestaurantCartDTO> restCartList = restService.findCartList(member.getmNo());
		
		for (RestaurantCartDTO restaurantCartDTO : restCartList) {
			System.out.println(restaurantCartDTO);
		}
		
		int sumprice =0;
		for (RestaurantCartDTO restaurantCartDTO : restCartList) {
			sumprice+= restaurantCartDTO.getCproductTypePay();
		}
		model.addAttribute("deposit_cost",restaurant_prod);
		model.addAttribute("restCartList" , restCartList);
		model.addAttribute("sumprice", sumprice);
		
		
		
		return "restaurant_cart_fixed_sidebar";
	}
	
	
	@LoginCheck
	@RequestMapping(value="restaurant_cart_fixed_sidebar",method = RequestMethod.POST)//,method = RequestMethod.POST
	public String restaurant_cart_fixed_sidebar(HttpSession session,
												Model model,
												@RequestParam(required =false) Integer pno,
												@RequestParam(required =false) Integer foodCount,
												@RequestParam(required =false) Integer foodsPrice,
												@RequestParam(required =false) Integer deposit_cost_ori) {
		
		
		//카트에 집어넣기위해 필요한정보
		//mNo 회원번호 , cproductQty(제품별 주문 수량), cProductTypePay(제품별 총가격),제품번호
		Member user_info = (Member)session.getAttribute("sUser");
		System.out.println("deposit_cost_ori :: "+ deposit_cost_ori);
		//System.out.println("pno -->" + pno);
		//System.out.println("foodCount -->" + foodCount);
		//System.out.println("foodsPrice -->" + foodsPrice);
		boolean duplication = false;
		int sumprice =0; 
		//0.'BPPP'레스토랑 예약금 금액등록
		model.addAttribute("deposit_cost",deposit_cost_ori);//3
		
		//1.회원의 카트에 저장되어있는  cart리스트를 먼저 가져온다.
		List<RestaurantCartDTO> restCartList = restService.findCartList(user_info.getmNo());
		//2.pno가 null인지 아닌지의 여부 및 list상에 존재하는지의 여부에 따라 동작을 달리한다. 
		if(pno!=null){
			//3.입력 상품번호가 리스트에 존재하면 cartlist에 존재하는 cartDTO의 상품 수량 및 가격을 DB에 업데이트
			for (RestaurantCartDTO restaurantCartDTO : restCartList) {
				//카트에 중복되는 상품이 들어올경우
				int localPno = pno.intValue();
				int cartitemPno=restaurantCartDTO.getPno().intValue();
				System.out.println("-------------");
				System.out.println(localPno + "//" + cartitemPno);
				System.out.println("-------------");
				duplication = (pno.intValue() == restaurantCartDTO.getPno().intValue()) ? true : false;
				System.out.println("duplication::"+ duplication);
				if(duplication) {
					int cartSaveFoodCnt = restaurantCartDTO.getCproductQty();
					int cartSavePriceCnt = restaurantCartDTO.getCproductTypePay();
					int updateFoodCnt = cartSaveFoodCnt + foodCount;
					int updatefoodsPrice = cartSavePriceCnt + foodsPrice;
					//HashMap<String, Integer> updateMap = new HashMap<String, Integer>();
					RestaurantCartDTO updateCartDto = 
							new RestaurantCartDTO(user_info.getmNo(), updateFoodCnt, updatefoodsPrice, pno, null);
					int updateCnt = restService.updateCartInfo(updateCartDto);
					System.out.println("update 행:"+updateCnt);
					break;
				}
			}
			
			if(!duplication) {
				//아닐경우 cart list에 insert
				RestaurantCartDTO insertCartDto = new RestaurantCartDTO(user_info.getmNo(), foodCount, foodsPrice, pno, null);
				int insertCartCnt = restService.insertCartInfo(insertCartDto);
				System.out.println("cart에 들어간 행 수 :"+insertCartCnt);
			}
			
		}else {
			//4.pno가 null일시는 addCart요청이 아님으로 처음 검색한 리스트를 날려보낸다.
			for (RestaurantCartDTO restaurantCartDTO : restCartList) {
				sumprice+= restaurantCartDTO.getCproductTypePay();
			}
			model.addAttribute("sumprice", sumprice);//2
			System.out.println("sumprice 정보 :"+sumprice);
			model.addAttribute("restCartList", restCartList);//1
			System.out.println("첫 검색 cartlist 정보 :"+restCartList);
			return "restaurant_cart_fixed_sidebar";
		}
		//5. 업데이트나 삽입이 완료되었음으로 리스트를 다시 받아와야한다.
		restCartList = restService.findCartList(user_info.getmNo());
		for (RestaurantCartDTO restaurantCartDTO : restCartList) {
			sumprice+= restaurantCartDTO.getCproductTypePay();
		}
		System.out.println("sumprice 정보 :"+sumprice);
		model.addAttribute("sumprice", sumprice);
		System.out.println("재 검색 cartlist 정보 :"+restCartList);
		model.addAttribute("restCartList", restCartList);
		return "restaurant_cart_fixed_sidebar";
	}
	
	
	
	
	
	
	
	@RequestMapping("restaurant_single_food_detail")
	public String single_restaurant_with_gallery(Model model,
												 HttpSession session,
												 @RequestParam(value="pno",required = false) Integer pno) throws WrongRestaurantDataException {
		System.out.println("pno ::->" + pno);
		if(pno==null || pno <= -1) {
			throw new WrongRestaurantDataException("잘못된 레스토랑 관련 데이터 입력");
		}
		

		RestaurantDTO product = restService.get_Restaurant_Product(pno);
		RestaurantDTO restaurant_book= restService.get_Restaurant_Product_name_select("BPPP");
		
		System.out.println("deposit_cost.pprice ->"+ restaurant_book.getPprice());
		model.addAttribute("restaurantProduct",product);
		model.addAttribute("deposit_cost",restaurant_book);
		//추가: 여러 페이지들을 작성해보니 레스토랑 예약 상품은 세션에 등록해두면 편함...에휴
		session.setAttribute("restaurant_prod", restaurant_book);
		
		List<Review> reviewList = reviewService.selectAll(pno);
		model.addAttribute("reviewList", reviewList);
		int reviewSize = reviewList.size();
		model.addAttribute("reviewSize", reviewSize);
		ReviewRate reviewRate = reviewService.selectRate(pno);
		model.addAttribute("reviewRate", reviewRate);
		return "restaurant_single_food_detail";
	}
	
	@LoginCheck
	@RequestMapping(value = "restaurant_payment_fixed_sidebar1",method = RequestMethod.POST)
	public String restaurant_payment_fixed_sidebar1(@RequestParam(value="itemObjectJSONList",required = false) 
												   String itemObjectJSONList,
												   @RequestParam(value="totalPrice") Integer totalPrice,
												   @RequestParam(value="bookingTime") String bookingTime,
												   @RequestParam(value="bookingDate") String bookingDate,
												   @RequestParam(value="totalSeatBookingCnt") Integer totalSeatBookingCnt, 
												   @RequestParam(value="totalFoodPrice") Integer totalFoodPrice,
												   @RequestParam(value="isCart",required=false) String isCart,
												   Model model,
												   HttpSession session) {
		System.out.println(itemObjectJSONList);
		System.out.println("totalPrice >>>>>" + totalPrice);
		System.out.println("bookingTime >>>>>" + bookingTime);
		System.out.println("bookingDate >>>>>" + bookingDate);
		System.out.println("totalFoodPrice >>>>>" + totalFoodPrice);
		System.out.println("totalSeatBookingCnt >>>>>" + totalSeatBookingCnt);
		
		//deposit total cost 계산.
		RestaurantDTO bookProduct = (RestaurantDTO)session.getAttribute("restaurant_prod");
		
		int totaldeposit = bookProduct.getPprice() * totalSeatBookingCnt;
		//System.out.println("여기가 안찍히면 여서 null포인트란 건데..");
		
		//JSON 형태의 문자열 List<Map> 파싱
		List<Map<String,Object>> resultMapArray = new ArrayList<Map<String,Object>>();
	    resultMapArray = JSONArray.fromObject(itemObjectJSONList);
	    
	    List<Restaurant_JD_DTO> jd_list = new ArrayList<Restaurant_JD_DTO>(); 
	   
	    //밑작업(중요) : 카트에서 넘어온 item들의 정보를 리스트 객채로 받아  리스트 주문 상세 dto정보에 Insert
	    for (Map<String,Object> resultMap : resultMapArray) {
			Integer pno = Integer.parseInt((String) resultMap.get("pno"));
			Integer jdproductqty = Integer.parseInt((String)resultMap.get("jdproductqty"));
			Integer jdproducttot = Integer.parseInt((String)resultMap.get("jdproducttot"));
			Restaurant_JD_DTO jd_dto = new Restaurant_JD_DTO(null, null, null,
															 jdproductqty, jdproducttot, null, pno,null,null);
			jd_list.add(jd_dto);
		}
	    
	    //0. 카트에서 요청이 들어온것이 아니라면 카트를 초기화줄 필요가 없다.
	    if(isCart != null && isCart.equals("no")) {
	    	System.out.println("카트에서의 요청이 아닙니다.");
	    }else {
		    //1.아직 결재가 완료 된것이 아니고 결제창으로 넘어가는 과정이다.
		    //  카트에서 상품의 수량과 가격 총합계가 바뀌었을 경우를 생각하여 해당 회원의 카트테이블을 카트View에서 조정한 리스트 항목으로 변경해주어야한다.
		    //  카트의 기존 내용 삭제와 동시에 새로운 카트리스트를 카트테이블에 등록하는 것임으로 하나의 트랜잭션으로 처리하기 위해 서비스에서 작업이 이루어지게 한다.
		    Member member = (Member)session.getAttribute("sUser");
		    boolean cartReDefindSucc =restService.cartReDefindTransaction(jd_list, member);
		    if(cartReDefindSucc) {
		    	System.out.println("카트 정보 초기화 성공!!!");
		    }
	    }
	    //2. 해당 컨트롤러는 주문할 항목을 확정짓는 단계의 과정임으로 세션으로 처리하면 결제 뷰에서 유용하게 사용가능하다. (혹시 모르니 결재완료시 해당세션을 지우도록 한다!)
	    //totalPrice, jumunList 는 restaurant_payment_fixed_sidebar로 이동하는 어느 경로든 재 setting이 됨으로 session에 저장 하자.
	    session.setAttribute("jumunList", jd_list);
	    session.setAttribute("totalPrice",totalPrice);
	    //bookingTime, bookingDate, totalSeatBookingCnt 는 
	    //session에 남아있을 경우 예약 안했을시 restaurant_payment_fixed_sidebar에 예약을 했다고 뜰수 있음으로 model로 보내고 주문결과로 다시 전달해야함.
	    model.addAttribute("bookingTime", bookingTime);
	    model.addAttribute("bookingDate", bookingDate);
	    model.addAttribute("totalSeatBookingCnt", totalSeatBookingCnt);
	    model.addAttribute("totalFoodPrice", totalFoodPrice);
	    model.addAttribute("totalDepositCost",totaldeposit);
	    model.addAttribute("isCart",isCart);
		return "restaurant_payment_fixed_sidebar";
	}
	
	
	@LoginCheck
	@RequestMapping(value = "restaurant_payment_fixed_sidebar2",method = RequestMethod.POST)
	public String restaurant_payment_fixed_sidebar2(@RequestParam(value="itemObjectJSONList",required = false) 
												   String itemObjectJSONList,
												   @RequestParam(value="totalPrice") Integer totalPrice,
												   @RequestParam(value="totalFoodPrice") Integer totalFoodPrice,
												   @RequestParam(value="isCart",required = false) String isCart,
												   Model model,
												   HttpSession session) {
		System.out.println(itemObjectJSONList);
		System.out.println("totalPrice >>>>>" + totalPrice);
		System.out.println("totalFoodPrice >>>>>" + totalFoodPrice);
		List<Map<String,Object>> resultMapArray = new ArrayList<Map<String,Object>>();
	    resultMapArray = JSONArray.fromObject(itemObjectJSONList);
	    
	    List<Restaurant_JD_DTO> jd_list = new ArrayList<Restaurant_JD_DTO>(); 
	   
	    //밑작업(중요) : 카트에서 넘어온 item들의 정보를 리스트 객채로 받아  리스트 주문 상세 dto정보에 Insert
	    for (Map<String,Object> resultMap : resultMapArray) {
			Integer pno = Integer.parseInt((String) resultMap.get("pno"));
			Integer jdproductqty = Integer.parseInt((String)resultMap.get("jdproductqty"));
			Integer jdproducttot = Integer.parseInt((String)resultMap.get("jdproducttot"));
			Restaurant_JD_DTO jd_dto = new Restaurant_JD_DTO(null, null, null,
															 jdproductqty, jdproducttot, null, pno,null,null);
			jd_list.add(jd_dto);
		}
	    if(isCart != null && isCart.equals("no")) {
	    	System.out.println("카트에서의 요청이 아닙니다.");
	    }else {
		    //1.아직 결재가 완료 된것이 아니고 결제창으로 넘어가는 과정이다.
		    //  카트에서 상품의 수량과 가격 총합계가 바뀌었을 경우를 생각하여 해당 회원의 카트테이블을 카트View에서 조정한 리스트 항목으로 변경해주어야한다.
		    //  카트의 기존 내용 삭제와 동시에 새로운 카트리스트를 카트테이블에 등록하는 것임으로 하나의 트랜잭션으로 처리하기 위해 서비스에서 작업이 이루어지게 한다.
		    Member member = (Member)session.getAttribute("sUser");
		    boolean cartReDefindSucc =restService.cartReDefindTransaction(jd_list, member);
		    if(cartReDefindSucc) {
		    	System.out.println("카트 정보 초기화 성공!!!");
		    }
	    }
	    //2. 해당 컨트롤러는 주문할 항목을 확정짓는 단계의 과정임으로 세션으로 처리하면 결제 뷰에서 유용하게 사용가능하다. (혹시 모르니 결재완료시 해당세션을 지우도록 한다!)
	    session.setAttribute("jumunList", jd_list);
	    session.setAttribute("totalPrice",totalPrice);
	    model.addAttribute("totalFoodPrice",totalFoodPrice);
	    model.addAttribute("isCart",isCart);
		return "restaurant_payment_fixed_sidebar";
	}
	
	
	@LoginCheck
	@RequestMapping(value= "restaurant_confirmation_fixed_sidebar",method= RequestMethod.POST)
	public String restaurant_confirmation_fixed_sidebar(@RequestParam Integer totalFoodPrice,
														@RequestParam(required=false) Integer totalDepositCost,
														@RequestParam(required=false) Integer totalSeatBookingCnt,
														@RequestParam(required=false) String bookingDate,
														@RequestParam(required=false) String bookingTime,
														@RequestParam String expire_month,//유효 월
														@RequestParam String expire_year,//유효 년
														@RequestParam(required=false) String isCart,
														@ModelAttribute Restaurant_J_DTO jumundto,
														
														HttpSession session,
														Model model) {
		//주문 상세 정보 셋팅
		List<Restaurant_JD_DTO> jd_list = (List<Restaurant_JD_DTO>)session.getAttribute("jumunList");
		//예약정보가 있다면 예약또한 상품임으로 jd_list에 추가
		
		if(totalDepositCost!=null &&totalDepositCost!=0) {
			RestaurantDTO prod = (RestaurantDTO)session.getAttribute("restaurant_prod");
			
			Restaurant_JD_DTO jumunDetail_reservation = 
						new Restaurant_JD_DTO(null,bookingDate,
											  bookingTime,totalSeatBookingCnt,
											  totalDepositCost,totalSeatBookingCnt,prod.getPno(),null,null);
			
			jd_list.add(jumunDetail_reservation);
		}
		
		//Map<String,List<Restaurant_JD_DTO>> insertMap = new HashMap<String, List<Restaurant_JD_DTO>>();
		//insertMap.put("list", jd_list);
		
		for (Restaurant_JD_DTO restaurant_JD_DTO : jd_list) {
			System.out.println("restaurant_JD_DTO ="+ restaurant_JD_DTO);
			
		}
		
		//주문 테이블 dto 정보 셋팅
		Member member = (Member) session.getAttribute("sUser");
		Integer totalprice =(Integer)session.getAttribute("totalPrice");
		jumundto.setJifcancel(1);
		jumundto.setMno(member.getmNo());
		jumundto.setJvaliddate(expire_month+'/'+expire_year);
		jumundto.setJtotpay(totalprice);
		System.out.println("jumundto ::"+jumundto);
		
		
		//주문 테이블 삽입즉시 주문 상세도 삽입해야함
		//boolean success =restService.all_jumun_Info_Insert(jumundto,insertMap);
		List<RestaurantDTO> jd_product_list =restService.all_jumun_Info_Insert(jumundto,jd_list,member.getmNo());
		if(jd_product_list!=null) {
			System.out.println("삽입 성공!!!");
		}
		for (RestaurantDTO restaurantDTO : jd_product_list) {
			System.out.println(restaurantDTO);
		}
		
		System.out.println("isCart ::" + isCart);
		if(isCart != null && isCart.equals("no")){
			
		}else {
			int deleteCnt = restService.deleteMemberCart(member.getmNo());
			if(deleteCnt>0) {
				System.out.println("삭제 성공");
			}
		}
		
		
		model.addAttribute("jumundto",jumundto);
		model.addAttribute("jd_product_list",jd_product_list);
		model.addAttribute("jd_list",jd_list);

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
