<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>박앤리피부과</title>
<meta name="ormat-detection" content="telephone=no">
<link rel="canonical" href="http://www.pnlskin.com/main.php">
<meta name="description" content="26년이상경력 피부과전문의 진료, 여드름, 기미잡티, 리프팅, 피부질환, 다양한 레이저장비 보유">
<meta property="og:type" content="website">
<meta property="og:title" content="박앤리피부과">
<meta property="og:description" content="26년이상경력 피부과전문의 진료, 여드름, 기미잡티, 리프팅, 피부질환, 다양한 레이저장비 보유">
<meta property="og:image" content="http://www.pnlskin.com/images/sLogo.png">
<meta property="og:url" content="http://www.pnlskin.com">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pc/style2.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pc/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pc/jquery.bxslider.css">
<script src="${pageContext.request.contextPath}/resources/js/pc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pc/jquery.bxslider.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pc/script.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pc/common.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/pc/common.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/pc/link.js"></script>
	
	<!-- jQuery-1.6 -->
<!-- 	<script type="text/javascript" src="/_admin/js/jquery-1.6.js" charset="utf-8"></script> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/jquery.cookie.js" charset="utf-8"></script>
<!-- jQuery UI -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/ui/jquery-ui-1.8.9.custom.js" charset="utf-8"></script>
<!-- jQuery UI all CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/js/admin/themes/base/jquery.ui.all.css" rel="stylesheet">
<!-- plugin - maxlength -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/maxlength/maxlength.js"></script>
<!-- plugin - autoTab -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/autotab/jquery.autotab-1.1b.js"></script>
<!-- plugin - maskedinput(inputbox날짜포맷, 기타 사용자정의 포맷) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/maskedinput/jquery.maskedinput-1.2.2.js"></script>
<script> $(function($){ $(".masked_date").mask("9999-99-99"); }); </script>
<!-- plugin - Layer combobox(selectbox) -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/admin/plugin/dropdown_selbox/msdropdown/dd.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/dropdown_selbox/msdropdown/js/jquery.dd.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function() {
	 try {
	 	 oHandler = $(".selbox").msDropDown().data("dd");
	 	 /*oHandler.visible(true); alert($.msDropDown.version); $.msDropDown.create("body select"); **/
	 	 $("#ver").html($.msDropDown.version);
	 }catch(e) {
	 	 alert("Error: "+e.message);
	 }
});  
</script>

<!-- plugin - AD Gallery -->
   <link type="text/css" href="${pageContext.request.contextPath}/resources/js/admin/plugin/adgallery/jquery.ad-gallery.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/adgallery/jquery.ad-gallery.js"></script>
<!-- plugin - 지정영역 인쇄 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/jquery.printArea.js" charset="utf-8"></script>
<!-- admin 공용 js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pc/work/common.jQuery.js" charset="utf-8"></script>
<!-- 메뉴별 js 인클루드 -->
<!-- plugin - mediaplay_plugin -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/mediaplay_plugin/jquery.metadata.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/mediaplay_plugin/jquery.media.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/plugin/mediaplay_plugin/swfobject.js"></script>
<script type="text/javascript">
$(function() {
     $('a.media').media(); /*$.fn.media.mapFormat('avi', 'quicktime'); **/ 
});
</script>

<!-- easy wisig Editor -->
<script src="${pageContext.request.contextPath}/resources/js/admin/easy-editor/easyEditor.js"></script>

<script>
$(document).ready(function() {
	$("#thesms_sms_call").draggable();

	$.extend({
		direct : function(arg){//direct
			location.href=arg;
		}
	 });
});
</script>
<script>
</script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="include/header.jsp"></jsp:include>
	</div>
	<div id="sub_visual">
		<img src="${pageContext.request.contextPath}/resources/img/pc/content/sub_v01.png" alt="">
	</div>

	<div id="wrap"><script>
		 $(function() {$.extend({ //팝업닫기
				    close_popup: function(divID) {
					     $("#"+divID).hide();
				    }
			  }),$.extend({ //오늘하루열지않기
				    todayclose_popup: function(cookie_name, divID) {
						 this_domain = "www.pnlskin.com";
						 expires_val = 1; //쿠키시간(일수)
						 //$.cookie(cookie_name, "nopopup", {expires:"."+expires_val, domain:this_domain, path:"/", secure:0});
						 $.cookie(cookie_name, "nopopup", { expires: 1 });
						 /**
						  * 저장된 쿠키값 확인
						  */
						 //alert($.cookie(cookie_name));
					     $("#"+divID).hide();
				    }
			  });});
		 </script>
		<div id="l_nav" style="float:left;">
			<div class="l_n_title">박앤리소개</div>
			<ul class="l_n_top">
				<li id="sb_01" style="background: rgb(72, 198, 255);"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01" style="color: rgb(255, 255, 255);">인사말</a></li>
				<li id="sb_02"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=02">의료진소개</a></li>
				<li id="sb_03"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=03">병원둘러보기</a></li>
				<li id="sb_08"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08">진료안내</a></li>
				<li id="sb_04"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=04">보유장비소개</a></li>
				<li id="sb_05"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=05">찾아오시는길</a></li>
				<li id="sb_06"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list">미디어</a></li>
				<li id="sb_07"><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=07&amp;bbs=notice&amp;pg=list">병원소식</a></li>
				<li class="cbox"></li>
			</ul>
			<ul class="l_n_bottom clear">
				<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=01"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ln_c01.png" alt=""></a></li>
				<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ln_c02.png" alt=""></a></li>
				<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ln_c03.png" alt=""></a></li>
				<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ln_c04.png" alt=""></a></li>
			</ul>
		</div>
		<div id="table_wrap"><!-- contents -->
    		<table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
	   			<tr>
					<td colspan="2" height="15"></td>
	   			</tr>
				<tr>
					<td align="left"><img src="${pageContext.request.contextPath}/resources/img/pc/content/title01_01.gif" border="0"></td>
					<td align="right" class="HOME"><img src="${pageContext.request.contextPath}/resources/img/pc/content/home.gif" align="absmiddle"> &gt; 박앤리 &gt; <span class="home_1">인사말</span></td>
				</tr>
    		  	<tr>
    				<td colspan="2" height="25"></td>
    			</tr>
				<tr>
					<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/pc/content/con0101.jpg"></td>
				</tr>
    		</table>
<!-- contents -->
<br><br>
<br><br>
<br><br><br><br><br><br>
<script language="javascript">

var sb = "01";

if(sb) {
	$("#sb_"+sb).css({'background':'#48c6ff'});
	$("#sb_"+sb+" a").css({"color":"#fff"});
}
</script>
</div>
</div>
<jsp:include page="include/footer_sub.jsp"></jsp:include>

 </body>
</html>