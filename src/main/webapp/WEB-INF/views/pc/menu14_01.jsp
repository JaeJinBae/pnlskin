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
					<td align="left"><img src="${pageContext.request.contextPath}/resources/img/pc/content/title14_01.gif" border="0"></td>
					<td align="right" class="HOME"><img src="${pageContext.request.contextPath}/resources/img/pc/content/home.gif" align="absmiddle"> &gt; 커뮤니티 &gt; <span class="home_1">전후사진</span></td>
				</tr>
				<tr>
					<td colspan="2" height="25"></td>
				</tr>
		
				<tr>
					<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/pc/content/board_banner.jpg" border="0"></td>
				</tr>
		
		
				<tr>
					<td colspan="2" class="tab_height">
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_over">전체</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">주름</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">기미잡티</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">여드름 및 흉터</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">모공흉터</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">모반</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">안면홍조</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">탈모</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">보톡스, 필러</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">제모,비만</span></a>
						<a href="${pageContext.request.contextPath}/menu14_01"><span class="tab_down">피부질환</span></a>
					</td>
				</tr>
				<tr>
					<td colspan="2">
							<div class="width_size_auto">
								<div style="padding:0 0 0 0;"></div>
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td>
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr><td height="2" style="background-color:#c2c2c2;" colspan="10"></td></tr>
											<tr>
												<td align="center" style="padding:10px 0 0 0;">
													<div class="imgBox">
														<table height="240" cellspacing="0" cellpadding="0" border="0">
															<tr>
																<td align="center">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td style="padding-left:0px; padding-top:10px;">
																				<table width="80" height="80" cellspacing="0" cellpadding="0" border="0">
																					<tr>
																						<td><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=46')"><img src="/files/bnf/bnf_2013070517_C490L3.jpg" width="150" height="121" border="0"></a></td><td style="padding-left:10px;"><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=46')"><img src="/files/bnf/bnf_2013070517_2908Y4.jpg" width="150" height="120" border="0"></a></td>
																					</tr>
																					<tr height="30">
																						<td align="center"><img src="/bbs/images/before.gif" border="0"></td><td align="center"><img src="/bbs/images/after.gif" border="0"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td align="center" stlye="padding-top:30px;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td>
																				<table width="100%" border="0">
																					<tr>
																						<td valign="top">
																							<div style="padding:0px 10px 5px 10px; text-align:left">
																								<span style="font-weight:bold;"><a href="?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=read&amp;idx=46&amp;thispage=">   검버섯 시술전후사진 CASE12</a></span>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</div>
														
													<div class="imgBox">
														<table height="240" cellspacing="0" cellpadding="0" border="0">
															<tr>
																<td align="center">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td style="padding-left:0px; padding-top:10px;">
																				<table width="80" height="80" cellspacing="0" cellpadding="0" border="0">
																					<tr>
																						<td><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=44')"><img src="/files/bnf/bnf_2013070410_C0LSTU.jpg" width="150" height="149" border="0"></a></td><td style="padding-left:10px;"><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=44')"><img src="/files/bnf/bnf_2013070410_1L37YZ.jpg" width="150" height="149" border="0"></a></td>
																					</tr>
																					<tr height="30"><td align="center"><img src="/bbs/images/before.gif" border="0"></td>
																						<td align="center"><img src="/bbs/images/after.gif" border="0"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td align="center" stlye="padding-top:30px;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td>
																				<table width="100%" border="0">
																					<tr>
																						<td valign="top">
																							<div style="padding:0px 10px 5px 10px; text-align:left">
																								<span style="font-weight:bold;"><a href="?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=read&amp;idx=44&amp;thispage=">   여드름시술 전후사진 CASE10</a></span>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</div>
																
													<div class="imgBox">
														<table height="240" cellspacing="0" cellpadding="0" border="0">
															<tr>
																<td align="center">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td style="padding-left:0px; padding-top:10px;">
																				<table width="80" height="80" cellspacing="0" cellpadding="0" border="0">
																					<tr>
																						<td><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=29')"><img src="/files/bnf/bnf_2013061918_B4E846.jpg" width="150" height="100" border="0"></a></td>
																						<td style="padding-left:10px;"><a href="javascript:show_dialog_iframe('comu_bnf', 700, 600, '전후사진 ', 'bnf_iframe', '/_admin/inc/inc.bnf.popup.php?idx=29')"><img src="/files/bnf/bnf_2013061918_C81T34.jpg" width="150" height="100" border="0"></a></td>
																					</tr>
																					<tr height="30">
																						<td align="center"><img src="/bbs/images/before.gif" border="0"></td>
																						<td align="center"><img src="/bbs/images/after.gif" border="0"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td align="center" stlye="padding-top:30px;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td>
																				<table width="100%" border="0">
																					<tr>
																						<td valign="top">
																							<div style="padding:0px 10px 5px 10px; text-align:left">
																								<span style="font-weight:bold;"><a href="?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=read&amp;idx=29&amp;thispage=">   헤어라인교정 전후사진 CASE3</a></span>
																							</div>
																	 					</td>
																	 				</tr>
																 				</table>
																 			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</div>
													<div class="imgBox"></div>
													<div class="data-list-paging" style="margin:0px auto; text-align:center; width:100%; padding-top:15px;">
														<table class="data-list-paging" border="0" align="center" cellspacing="0" cellpadding="0">
															<tr>
																<td><img src="/_admin/images/ico_prev02.gif" border="0" alt="맨처음"></td>
																<td style="padding-left:3px;"><img src="/_admin/images/ico_prev01.gif" border="0" alt="이전10개"></td>
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
																			<td style="padding:3px 3px 3px 3px;">
																				<table width="17" height="16" cellpadding="0" cellspacing="0" style="border-top:#B4B4B4 1px solid; border-right:#B4B4B4 1px solid; border-bottom:#B4B4B4 1px solid; border-left:#B4B4B4 1px solid; ">
																					<tr style="cursor:pointer;" bgcolor="#ffffff" onclick="javascript:location.href='?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=list&amp;thispage=2'">
																						<td onmouseover="this.style.backgroundColor='#E3E3E3';" onmouseout="this.style.backgroundColor='#ffffff';" style="bgcolor='#ffffff'; text-align:center;">
																							<span style="font-color:#646464;">2</span>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td style="padding:3px 3px 3px 3px;">
																				<table width="17" height="16" cellpadding="0" cellspacing="0" style="border-top:#B4B4B4 1px solid; border-right:#B4B4B4 1px solid; border-bottom:#B4B4B4 1px solid; border-left:#B4B4B4 1px solid; ">
																					<tr style="cursor:pointer;" bgcolor="#ffffff" onclick="javascript:location.href='?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=list&amp;thispage=3'">
																						<td onmouseover="this.style.backgroundColor='#E3E3E3';" onmouseout="this.style.backgroundColor='#ffffff';" style="bgcolor='#ffffff'; text-align:center;">
																							<span style="font-color:#646464;">3</span>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
																<td style="width:10px;"></td>
																<td><img src="/_admin/images/ico_next01.gif" border="0" alt="다음10개"></td>
																<td style="padding-left:3px;">
																	<a href="?sb=01&amp;bbs=bnf&amp;search=&amp;keyword=&amp;category=&amp;pg=list&amp;thispage=3"><img src="/_admin/images/ico_next02.gif" border="0" alt="맨마지막"></a>
																</td>
															</tr>
														</table>
													</div>
																
													<div style="padding:10px 0 0 0;"></div>
													<table border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td></td>
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
																	<form name="searchForm" id="searchForm" method="post" action="?sb=01&amp;bbs=bnf&amp;pg=list"></form>
																	<tr>
																		<td style="width:35px;"><img src="/_admin/images/sear_txt01.gif" align="absmiddle"></td>
																		<td width="*">
																			<div style="padding-top:10px;"></div>
																			<table border="0" cellpadding="0" cellspacing="0">
																				<tr>      
																					<td style="width:100px;">
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
																					<td style="padding-left:5px;">
																						<input name="keyword" type="text" value="" class="input" style="width:140px" id="textfield">
																					</td>
																					<td style="padding-left:3px; width:*;">
																						<img src="/files/design_manager/2011113019V4.gif" border="0" style="cursor: pointer;" id="btn_search">
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
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br><br><br>
					</td>
				</tr>
			</table>
			<!-- contents -->
			<br><br><br><br><br>
			<br><br><br><br><br>
			<script>
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