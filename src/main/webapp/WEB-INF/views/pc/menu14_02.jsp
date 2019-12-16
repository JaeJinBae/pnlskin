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
<style>
	.imgBox {width:350px; height: 250px; float: left;padding-right:8px;margin-bottom:10px;border-bottom:1px dotted #999999;}
</style>
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
			<div class="l_n_title">커뮤니티</div>
			<ul class="l_n_top">
				<li id="sb_01"><a href="${pageContext.request.contextPath}/menu14_01">전후사진</a></li>
				<li id="sb_02"><a href="${pageContext.request.contextPath}/menu14_02">시술후기</a></li>
				<li id="sb_03"><a href="${pageContext.request.contextPath}/menu14_03">리얼스토리</a></li>
				<li id="sb_04"><a href="${pageContext.request.contextPath}/menu14_04">온라인상담</a></li>
				<li id="sb_05"><a href="${pageContext.request.contextPath}/menu14_05">하이닥</a></li>
				<li class="cbox"></li>
			</ul>
			<jsp:include page="include/left_nav.jsp"></jsp:include>
		</div>
		<div id="table_wrap"><!-- contents -->
    		<table width="740" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2" height="15"></td>
				</tr>
				<tr>
					<td align="left"><img src="${pageContext.request.contextPath}/resources/img/pc/content/title14_02.gif" border="0"></td>
					<td align="right" class="HOME"><img src="${pageContext.request.contextPath}/resources/img/pc/content/home.gif" align="absmiddle"> &gt; 커뮤니티 &gt; <span class="home_1">시술후기</span></td>
				</tr>
				 <tr>
					<td colspan="2" height="25"></td>
				</tr>
				 <tr>
					<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/pc/content/board_banner.jpg" border="0"></td>
				</tr>
				<tr>
					<td colspan="2" class="tab_height">
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_over">전체</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">주름</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">기미잡티</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">여드름 및 흉터</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">모공흉터</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">모반</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">안면홍조</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">탈모</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">보톡스, 필러</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">제모,비만</span></a>
						<a href="${pageContext.request.contextPath}/menu14_02"><span class="tab_down">피부질환</span></a>
					</td>
				</tr>		
				<tr>
					<td colspan="2">
						<div class="width_size_auto">
							<div class="data_list_panel" style="width:100%;">
								<table class="data_list_table data_list_header" background="${pageContext.request.contextPath}/resources/img/pc/content/title_back.gif" border="0">
									<tr class="text_align_center">
										<td style="width:0px;"></td>
										<td style="width:6%; text-align:center">번호</td><td style="width:10px;"><span class="data_list_header_shell">|</span></td>
										<td style="width:50%; text-align:center">제목</td><td style="width:10px;"><span class="data_list_header_shell">|</span></td>
										<td style="width:15%; text-align:center">이름</td><td style="width:10px;"><span class="data_list_header_shell">|</span></td>
										<td style="width:10%; text-align:center">등록일자</td><td style="width:10px;"><span class="data_list_header_shell">|</span></td>
										<td style="width:7%; text-align:center">조회</td><td style="width:10px;"></td>
										<td style="width:0px;"></td>
									</tr>
								</table>
								<table class="data_list_body" border="0" style="background: rgb(255, 255, 255);">
									<tr class="text_align_center">
										<td style="width:0px;"></td>
										<td style="width:6%; text-align:center;">19</td><td></td>
										<td style="width:50%; text-align:left; padding-left:10px;"><a href="?sb=02&amp;bbs=postscript&amp;search=&amp;keyword=&amp;pg=read&amp;sb=02&amp;bbs=postscript&amp;reload=/work/sub14/sub14.php&amp;idx=19&amp;thispage=&amp;category= ">    고객님 자필후기 - 기미   </a></td>
										<td></td>
										<td style="width:15%; text-align:center">박앤..</td><td></td>
										<td style="width:10%; text-align:center">2017-02-10</td><td></td>
										<td style="width:7%; text-align:center">182</td><td></td>
										<td style="width:0px;"></td>
									</tr>
								</table>
								<div class="grp_cecret" id="cfmLayer_19" style="display:none; padding-top:2px;">
									<div style="width:100%; text-align:left; padding-left:90px;">
										<form name="cfmForm" id="cfmForm" action="/bbs/postscript/proc.php?sb=02&amp;bbs=postscript&amp;search=&amp;keyword=&amp;pg=read&amp;thispage=" method="post" target="common_iframe">
											<input type="hidden" name="reload" value="/work/sub14/sub14.php">
											<input type="hidden" name="mode" value="chk_read">
											<input type="hidden" name="idx" value="19">
											<span style="font-weight:bold; color:#EA501C;">└</span>
											<span style="color:#EA501C;"> 비밀번호:</span> <input type="password" name="pwd_19" style="width:100px; height:14px;" class="input" id="counsel_pass_19" maxlength="15">
											<input name="image" type="image" style="border:none;" src="${pageContext.request.contextPath}/resources/img/pc/content/pw_submit.gif" align="absmiddle" border="0">
										</form>
									</div>
								</div>		 
								<table width="" align="right" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="" align="center" style="padding-right:0px; padding-top:10px;">
										<a href="?sb=02&amp;bbs=postscript&amp;pg=write"><img src="${pageContext.request.contextPath}/resources/img/pc/content/btn_write.gif" border="0" id="button_write" title="쓰기" style="cursor:hand;"></a>
										</td>
									</tr>
								</table>
							</div>
							<table align="center" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="center">
										<div class="data-list-paging" style="margin:0px auto; text-align:center; width:100%; padding-top:15px;">
											<table class="data-list-paging" border="0" align="center" cellspacing="0" cellpadding="0">
												<tr>
													<td><img src="${pageContext.request.contextPath}/resources/img/pc/common/ico_prev02.gif" border="0" alt="맨처음"></td>
													<td style="padding-left:3px;"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ico_prev01.gif" border="0" alt="이전10개"></td>
													<td style="width:10px;"></td>
													<td>
														<table border="0" align="center" cellspacing="0" cellpadding="0">
															<tr>
																<td style="padding:3px 3px 3px 3px;">
																	<table width="17" height="16" cellpadding="0" cellspacing="0" style="border-top:#DDDDDD 1px solid; border-right:#DDDDDD 1px solid; border-bottom:#DDDDDD 1px solid; border-left:#DDDDDD 1px solid; ">
																		<tr style="cursor:pointer;" bgcolor="#ffffff">
																			<td onmouseover="this.style.backgroundColor='#ffffff';" onmouseout="this.style.backgroundColor='#ffffff';" style="bgcolor='#ffffff'; text-align:center;">
																				<span style="color:#; font-weight:bold;">1</span>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
													<td style="width:10px;"></td>
													<td><img src="${pageContext.request.contextPath}/resources/img/pc/common/ico_next01.gif" border="0" alt="다음10개"></td>
													<td style="padding-left:3px;"><img src="${pageContext.request.contextPath}/resources/img/pc/common/ico_next02.gif" border="0" alt="맨마지막"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
							<div style="padding:20px 0 0 0;"></div>
							<table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
								<tr>
									<td height="1" style="background-color:#E0E0E0;" colspan="10"></td>
								</tr>
								<tr>
									<td align="center" style="background-color:#f9fafa;">
										<div style="padding:2px 0 0 0;"></div>
										<table border="0" cellpadding="0" cellspacing="0">
											<form name="searchForm" id="searchForm" method="post" action="?sb=02&amp;bbs=postscript&amp;pg=list"></form>
												<tr>
													<td style="width:35px;"><img src="${pageContext.request.contextPath}/resources/img/pc/common/sear_txt01.gif" align="absmiddle"></td>
													<td width="*">
														<div style="padding-top:10px;"></div>
														<table border="0" cellpadding="0" cellspacing="0">
															<tr>
																<td style="width:95px;">
																	<div class="ddOutOfVision" style="height:0px;overflow:hidden;position:absolute;" id="select_msddHolder">
																		<select name="search" class="selbox" id="select" style="width:100px">
																			<option value="tit_con">제목 + 글내용</option>
																			<option value="title">제목</option>
																			<option value="content">글내용</option>
																			<option value="name">이름</option>
																		</select>
																	</div>
																	<div id="select_msdd" class="dd" style="width: 100px;">
																		<div id="select_title" class="ddTitle">
																			<span id="select_arrow" class="arrow"></span>
																			<span class="ddTitleText" id="select_titletext">
																				<span class="ddTitleText">제목 + 글내용</span>
																			</span>
																		</div>
																		<div id="select_child" class="ddChild" style="width: 98px;">
																			<a href="javascript:void(0);" class="selected enabled" style="[object CSSStyleDeclaration]" id="select_msa_0"><span class="ddTitleText">제목 + 글내용</span></a>
																			<a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="select_msa_1"><span class="ddTitleText">제목</span></a>
																			<a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="select_msa_2"><span class="ddTitleText">글내용</span></a>
																			<a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="select_msa_3"><span class="ddTitleText">이름</span></a>
																		</div>
																	</div>
																</td>
																<td style="width:145px; padding-left:5px;">
																	<input name="keyword" type="text" value="" class="input" style="width:140px" id="textfield">
																</td>
																<td style="padding-left:3px; width:*;">
																	<img src="${pageContext.request.contextPath}/resources/img/pc/common/2011113019V4.gif" border="0" style="cursor: pointer;" id="btn_search">
																</td>
															</tr>
														</table>
											
													<div style="padding-top:10px;"></div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<!-- contents -->
			<br><br><br><br><br>
			<br><br><br><br><br>
			<script>
				var sb = "02";
				
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