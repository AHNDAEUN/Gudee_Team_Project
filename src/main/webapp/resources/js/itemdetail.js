
	$(function(){

		$(".it_img_s").click(function () {
			$(".it_img_s").removeClass("it_img_s_on");
			$(this).addClass("it_img_s_on");
			$("#it_img_m").attr("src",$(this).attr("src"));
		});

	})



$(document).ready(function() {
	$(".teb_menu li").click(function(){
		$(".teb_menu li").removeClass("active");
		$(this).addClass("active");
		$(".tab-cont").hide();
		$($(this).find("a").attr("href")).show();
		return false;
	});

});


	
$(".review_order_popup_bg").on("click", function(){	
	$('.review_order_popup').hide();
});

	
$("#review_close_btn").on("click", function(){	
	$('.review_order_popup').hide();
});




$(document).ready(function() {
	$(".teb_menu li").click(function(){
		$(".teb_menu li").removeClass("active");
		$(this).addClass("active");
		$(".tab-cont").hide();
		$($(this).find("a").attr("href")).show();
		return false;
	});

});