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

	<div id="wrap">
		<script>
		 $(function() {
			 $.extend({ //팝업닫기
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
			<div class="l_n_title">피부질환</div>
			<ul class="l_n_top">
				<li id="sb_01"><a href="${pageContext.request.contextPath}/menu13_01">발톱무좀</a></li>
				<li id="sb_02"><a href="${pageContext.request.contextPath}/menu13_02">백반증</a></li>
				<li id="sb_03"><a href="${pageContext.request.contextPath}/menu13_03">건선</a></li>
				<li id="sb_04"><a href="${pageContext.request.contextPath}/menu13_04">알레르기피부염</a></li>
				<li id="sb_05"><a href="${pageContext.request.contextPath}/menu13_05">아토피피부염</a></li>
				<li id="sb_06"><a href="${pageContext.request.contextPath}/menu13_06">지루성피부염</a></li>
				<li id="sb_07"><a href="${pageContext.request.contextPath}/menu13_07">튼살</a></li>
				<li id="sb_08"><a href="${pageContext.request.contextPath}/menu13_08">닭살</a></li>
				<li id="sb_09"><a href="${pageContext.request.contextPath}/menu13_09">티눈ㆍ사마귀</a></li>
				<li id="sb_10"><a href="${pageContext.request.contextPath}/menu13_10">두드러기</a></li>
				<li id="sb_11"><a href="${pageContext.request.contextPath}/menu13_11">한관종ㆍ비립종</a></li>
				<li id="sb_12"><a href="${pageContext.request.contextPath}/menu13_12">단순포진ㆍ대상포진</a></li>
				<li id="sb_13"><a href="${pageContext.request.contextPath}/menu13_13">백선</a></li>
				<li class="cbox"></li>
			</ul>
			<jsp:include page="include/left_nav.jsp"></jsp:include>
		</div>
		<div id="table_wrap"><!-- contents -->
    		<table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
	   			<tr>
					<td colspan="2" height="15"></td>
	   			</tr>
				<tr>
					<td align="left" style="width: 50%;"><img src="${pageContext.request.contextPath}/resources/img/pc/content/title12_05.gif" border="0"></td>
					<td align="right" class="HOME"><img src="${pageContext.request.contextPath}/resources/img/pc/content/home.gif" align="absmiddle"> &gt; 피부질환 &gt; <span class="home_1">닭살</span></td>
				</tr>
    		  	<tr>
    				<td colspan="2" height="25"></td>
    			</tr>
				<tr>
					<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/pc/content/con1205.jpg"></td>
				</tr>
				
				<tr>
					<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/pc/common/btn_con.jpg" usemap="#foot" border="0"></td>
				</tr>
    		</table>
			<!-- contents -->
			<br><br><br><br><br>
			<br><br><br><br><br>
			<script>
				var sb = "08";
				
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