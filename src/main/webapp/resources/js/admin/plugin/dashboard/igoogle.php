<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>LG드래그&Sort</title>
<link type="text/css" href="css/ui.all.css" rel="stylesheet" />
<link type="text/css" href="css/demo.css" rel="stylesheet" />
<!--<link type="text/css" href="css/ui.accordion.css" rel="stylesheet" />
<link type="text/css" href="css/ui.base.css" rel="stylesheet" />
<link type="text/css" href="css/ui.datepicker.css" rel="stylesheet" />
<link type="text/css" href="css/ui.slider.css" rel="stylesheet" />
<link type="text/css" href="css/ui.theme.css" rel="stylesheet" />
<link type="text/css" href="css/ui.tabs.css" rel="stylesheet" />//-->

<link type="text/css" href="css/demo.css" rel="stylesheet" />

<!--==================== plugin - dashboard //-->
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="ui.core.js"></script>
<script type="text/javascript" src="ui.sortable.js"></script>
<script type="text/javascript" src="ui.rearrange.js"></script>
<script type="text/javascript" src="jquery.cookie.js"></script>
<link href="css/dashboard.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
$(document).ready(function(){
	 $("#logout").click(function(){
		  $.post("login/login.process.php");
	 });
});

$(function() {/* dashBoard **/
	 Rearrange();
	 $(".column").sortable({
		  connectWith: '.column'
	 });

	 $(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
		  .find(".portlet-header")
			  .addClass("ui-widget-header ui-corner-all")
			  .prepend('<span class="ui-icon ui-icon-plusthick"></span>')
			  .end()
		  .find(".portlet-content");

	 $(".portlet-header .ui-icon").click(function() {
		  $(this).toggleClass("ui-icon-minusthick");
		  $(this).parents(".portlet:first").find(".portlet-content").toggle();
	 });
	 $(".column").disableSelection();
});
</script>
</head>
<body>
<h2>LG드래그&Sort</h2>
<div id="range">
	<div id="column1" class="column">
		<div  id="Feeds" class="portlet">
			<div class="portlet-header">Feeds</div>
			<div class="portlet-content"><div><a href="">쿠키가 적용된 대시보드</a></div></div>
		</div>	
		<div id="News" class="portlet">
			<div class="portlet-header">News</div>
			<div class="portlet-content">뉴스</div>
		</div>
	</div>
	<div id="column2" class="column">
		<div id="Shopping" class="portlet">
			<div class="portlet-header">Shopping</div>
			<div class="portlet-content">쇼핑</div>
		</div>
	</div>
	<div id="column3" class="column">
		<div id="Links" class="portlet">
			<div class="portlet-header">Links</div>
			<div class="portlet-content">링크</div>
		</div>
		<div id="Images" class="portlet">
			<div class="portlet-header">Images</div>
			<div class="portlet-content">이미지</div>
		</div>
	</div>
</div><!-- end range-->
<div id="debug"></div>
</body>
</html>