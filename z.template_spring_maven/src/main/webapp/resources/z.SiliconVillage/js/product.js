/**
 * 
 */

/* Collapse filters */
if ($(this).width() < 991) {
	$('.collapse#collapseFilters').removeClass('show');
} else {
	$('.collapse#collapseFilters').addClass('show');
}

/* Input range slider */
$(function () {
	'use strict';
	$('#price-range').ionRangeSlider({
		hide_min_max: true,
		keyboard: true,
		min: 0,
		max: 800,
		from: 200,
		to: 500,
		type: 'double',
		step: 1,
		prefix: "$",
		grid: true
	});
});

$('#addWishlist').on("click", function (e) {
	var mNo = $(this).parent().attr("mNo");
	var pNo = $(this).parent().attr("pNo");
	console.log(mNo);
	console.log(pNo);
	$.ajax({
		type: 'POST',
		url : "wishlist_insert",
		data : {
			mNo: 'mNo',
			pNo: 'pNo'
		},
		dataType : "json",
		success : function() {
		}
	});
});
