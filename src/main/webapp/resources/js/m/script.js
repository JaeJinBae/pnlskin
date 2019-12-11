$(document).ready(function(){
	//모바일메뉴 버튼
	$("#gnb_btn").click(function(){
		$("#navmenu").slideToggle();
		return false;
	});

	$(function(){
		$("#navmenu ul > li").on("click",function(){
		//모바일메뉴		
		if($(this).hasClass("open")	){
			$(this).removeClass("open");
			$(this).children("ul").slideUp();
		} else {
			$(this).addClass("open");
			$(this).children("ul").slideDown();
			//$("#navmenu > ul > li").css("background","#49255c");
			//$("#navmenu > ul > li").css("color","#fff");
			//$(this).css("background","#b26bcb");
			//$(this).css("color","#fff");
			$("#navmenu ul > li > ul").not($(this).children("ul")).slideUp();
			$("#navmenu ul > li").not($(this)).removeClass("open");
		}
	});
	});
});
$(document).ready(function(){
	//모바일슬라이더 상단
	var slider = $('.m_bxslider').bxSlider({
		mode: 'horizontal',
		auto:true,
		pagerCustom:'#m_bx-pager'
	});
});
$(document).ready(function(){
	//모바일슬라이더 하단
	var slider = $('.m_bxslider2').bxSlider({
		mode: 'horizontal',
		auto:true,
		controls: false,
		pagerCustom:'#m_bx-pager2'
	});
});