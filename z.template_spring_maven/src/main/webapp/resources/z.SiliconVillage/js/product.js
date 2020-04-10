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
	$("#price-range").ionRangeSlider({
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