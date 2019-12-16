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
						<!-- start contents -->
						<div class="width_size_auto_type2">
							<div class="data_table_panel">
								<table class="data_read_table" style="table-layout:fixed;">
									<tr>
										<td style="width:15%; background-color:#F6F6F6;"></td>
										<td style="width:35%;"></td>
										<td style="width:15%; background-color:#F6F6F6;"></td>
										<td style="width:35%;"></td>
									</tr>
									<tr class="data_read_cell">
										<td class="data_read_tit essential">분류</td>
										<td class="data_read_fil" colspan="3"></td>
									</tr>
									<tr class="data_read_cell">
										<td class="data_read_tit essential" style="width:15%;">이름</td>
										<td class="data_read_fil" colspan="3">박앤**</td>
									</tr>
									<tr class="data_read_cell">
										<td class="data_reg_tit essential" style="width:15%;">조회수</td>
										<td class="data_reg_fil" style="width:35%;">185</td>
										<td class="data_reg_tit essential" style="width:15%;">등록일자</td>
										<td class="data_reg_fil" style="width:35%;">2017-02-10</td>
									</tr>
									<!--<tr class="data_read_cell">
									 <td class="data_reg_tit essential" style="width:15%;">성별</td>
									 <td class="data_reg_fil" style="width:35%;"></td>
									 <td class="data_reg_tit essential" style="width:15%;">나이</td>
									 <td class="data_reg_fil" style="width:35%;"></td>
									</tr>
									<tr class="data_read_cell">
									 <td class="data_read_tit essential">이동전화</td>
									 <td class="data_read_fil" colspan="3"></td>
									   </tr>-->
									<tr class="data_read_cell">
										<td class="data_read_tit essential">이메일</td>
										<td class="data_read_fil" colspan="3">pnl_s********</td>
									</tr>
									<tr class="data_read_cell">
										<td class="data_read_tit essential">제목</td>
										<td class="data_read_fil" colspan="3">고객님 자필후기 - 기미</td>
									</tr>
									<tr class="data_read_cell togle_normal">
										<td class="data_read_tit essential">후기내용</td>
										<td class="data_read_fil" colspan="3" style="height:130px; vertical-align:top; padding-top:10px;"><img src="/_admin/easy-editor/tmp/201702231856408037.jpg" border="0" alt="letter_10.jpg"></td>
									</tr>
								</table>
								<div style="height:10px;"></div>
							
								<!-- start Button //-->
								<table style="width:100%;">
									<tr>
										<td style="text-align:center; padding:10px 0 0 0;">
											<a class="cssbutton black medium" href="javascript:$.modify('del_form_layer', 'modify_form_layer')"><img src="/bbs/images/btn_modify.gif" border="0" id="button_modi" title="수정" style="cursor:hand;"></a>
											<a class="cssbutton black medium" href="javascript:$.remove('del_form_layer', 'modify_form_layer')"><img src="/bbs/images/btn_can.gif" border="0" id="button_dele" title="삭제" style="cursor:hand;"></a>
											<a class="cssbutton black medium" href="javascript:$.gotopage('', '', 'list', 'sb=02&amp;bbs=postscript&amp;search=&amp;keyword=&amp;thispage=')"><img src="/bbs/images/btn_list.gif" border="0" id="button_list" title="목록" style="cursor:hand;"></a>
										</td>
									</tr>
								</table>
								<!-- end Button //-->
							
								<!-- start 수정 레이어 //-->
								<div style="width:100%; text-align:center;">
									<div id="modify_form_layer" style="display:none; margin:0 auto;">
										<div style="padding-top:20px;"></div>
										<form id="mod_form" action="/bbs/postscript/proc.php" method="post" name="mod_form" target="common_iframe">
											<input type="hidden" name="mode" value="mod_pass_check">
											<input type="hidden" name="bbs" value="postscript">
											<input type="hidden" name="sb" value="02">
											<input type="hidden" name="idx" value="19">
											<input type="hidden" name="arguments" value="sb=02&amp;bbs=postscript&amp;search=&amp;keyword=">
											<input type="hidden" name="thispage" value="">
											<input type="hidden" name="reload" value="/work/sub14/sub14.php">
											<span style="color:#0D55CE;">수정</span> 비밀번호: <input type="password" name="mod_pass" id="mod_pass" value="" style="width:120px; " maxlength="15" class="input">
											<a href="javascript:$.layer_send('mod_form')"><img src="/bbs/images/board_confirm.gif" border="0" id="btn_layer_pwd_confirm" title="확인" style="cursor:hand;"></a>
											<a href="javascript:$.layer_hide('modify_form_layer')"><img src="/bbs/images/board_cancel.gif" border="0" id="btn_layer_pwd_cancel" title="취소" style="cursor:hand;"></a>
										</form>
										<div style="padding-bottom:20px;"></div>
									</div>
									<!-- end 수정 레이어 //-->
									
									<!-- start 삭제 레이어 //-->
									<div id="del_form_layer" style="display:none; margin:0 auto;">
										<div style="padding-top:20px;"></div>
										<form id="del_form" action="/bbs/postscript/proc.php" method="post" name="del_form" target="common_iframe">
											<input type="hidden" name="mode" value="del_pass_check">
											<input type="hidden" name="bbs" value="postscript">
											<input type="hidden" name="sb" value="02">
											<input type="hidden" name="idx" value="19">
											<input type="hidden" name="arguments" value="sb=02&amp;bbs=postscript&amp;search=&amp;keyword=">
											<input type="hidden" name="thispage" value="">
											<input type="hidden" name="reload" value="/work/sub14/sub14.php">
											<span style="color:red;">삭제</span> 비밀번호: <input type="password" name="del_pass" id="del_pass" value="" style="width:120px; " maxlength="15" class="input">
											<a href="javascript:$.layer_send('del_form')"><img src="/bbs/images/board_confirm.gif" border="0" id="btn_layer_pwd_confirm" title="확인" style="cursor:hand;"></a>
											<a href="javascript:$.layer_hide('del_form_layer')"><img src="/bbs/images/board_cancel.gif" border="0" id="btn_layer_pwd_cancel" title="취소" style="cursor:hand;"></a>
										</form>
										<div style="padding-bottom:20px;"></div>
									</div>
								</div>
									<!-- end 삭제 레이어 //-->
									   
								<div style="padding-top:10px;"></div>
								<div style="width:100%; border-right:#D7D7D7 0px solid; border-top:#D7D7D7 2px solid; border-left:#D7D7D7 0px solid; border-bottom:#D7D7D7 2px solid; margin: 0 0 0 0; padding-top:10px; padding-bottom:10px;">
									<div style="width:100%;">
										<table width="100%">
											<tr>
												<td style="width:100px; padding-bottom:5px;"><img src="/bbs/images/prev.gif" border="0"></td>
												<td style="width:*; text-align:left; padding-bottom:5px;">
													<a href="?sb=02&amp;bbs=postscript&amp;search=&amp;keyword=&amp;pg=read&amp;idx=18">고객님 자필후기 - 여드름자국, 흉터치료 <img src="/bbs/images/btn_ing.gif" border="0"></a>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<div style="width:100%; border-top:#D7D7D7 1px solid;"></div>
												</td>
											</tr>
										</table>
									</div>
									<div width:100%;"="">
										<table width="100%">
											<tr>
												<td style="width:100px; padding-top:3px;"><img src="/bbs/images/next.gif" border="0"></td>
												<td style="width:*; text-align:left; padding-top:3px;">다음 글이 없습니다.</td>
											</tr>
										</table>
									</div>
								</div>
								 <div class="reply">
									<iframe onload="autoResize(this);" src="/_admin/inc/inc.reply.php?tbl=postscript&amp;idx=19" style="width:100%;" scrolling="no" frameborder="0" allowtransparency="true" height="172"></iframe>
								</div>
								<!-- end contents //-->
							</div>
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