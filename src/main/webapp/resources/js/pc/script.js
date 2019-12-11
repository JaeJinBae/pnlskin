

$(document).ready(function(){
	
	$("#bxslider01").css({"opacity":"0"});
	setTimeout(function(){
	$('#bxslider01').bxSlider({
	mode: 'horizontal',
	auto:true,
	pager: true,
	autoControls: false,
	controls: false,
	});
	$("#bxslider01").animate({"opacity":"1"},200);
	},300);



	$("#header #menu > ul > li").on( "mouseenter",function(){
		$("#header #menu > ul > li > ul").not($(this).children("ul")).fadeOut(100);
		$(this).children("ul").fadeIn(100);
		$("#header #menu #menu_bg").fadeIn(100);
		
	} )
	$("#header").on( "mouseleave",function(){
		$("#header #menu > ul > li > ul").fadeOut(100);
		$("#header #menu #menu_bg").fadeOut(100);
	} );

	$("#header #menu2 > ul > li").on( "mouseenter",function(){
		$("#header #menu2 > ul > li > ul").not($(this).children("ul")).fadeOut(100);
		$(this).children("ul").css("margin-left","-15px");
		$(this).children("ul").fadeIn(100);
		$("#header #menu2 #menu_bg").fadeIn(100);
		
	} )
	$("#header").on( "mouseleave",function(){
		$("#header #menu2 > ul > li > ul").fadeOut(100);
		$("#header #menu2 #menu_bg").fadeOut(100);
	} );
});


$(document).ready(function(){

	$('#bxslider02').bxSlider({
		mode: 'horizontal',
		auto:true,
		pager: false,
		autoControls: false,
		controls: true,
	});

});

$(document).ready(function(){

	$('#bxslider03').bxSlider({
		mode: 'horizontal',
		auto:true,
		pager: true,
		autoControls: false,
		controls: false,
	});

});

$(document).ready(function(){

	$('#bxslider04').bxSlider({
		mode: 'horizontal',
		auto:true,
		pager: true,
		autoControls: false,
		controls: false,
	});

});