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
<link rel="stylesheet" type="text/css" href="/css/style2.css">
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/jquery.bxslider.css">
<script src="/js/jquery-1.8.3.min.js"></script>
<script src="/js/jquery.bxslider.min.js"></script>
<script src="/js/script.js"></script>
<script src="/common/js/common.js"></script>
<script language="JavaScript" src="/common/js/common.js"></script>
<script language="JavaScript" src="/common/js/link.js"></script>
	
	<!-- jQuery-1.6 -->
<!-- 	<script type="text/javascript" src="/_admin/js/jquery-1.6.js" charset="utf-8"></script> -->
<script type="text/javascript" src="/_admin/js/jquery.cookie.js" charset="utf-8"></script>
<!-- jQuery UI -->
<script type="text/javascript" src="/_admin/js/ui/jquery-ui-1.8.9.custom.js" charset="utf-8"></script>
<!-- jQuery UI all CSS -->
<link type="text/css" href="/_admin/js/themes/base/jquery.ui.all.css" rel="stylesheet">
<!-- plugin - maxlength -->
<script type="text/javascript" src="/_admin/js/plugin/maxlength/maxlength.js"></script>
<!-- plugin - autoTab -->
<script type="text/javascript" src="/_admin/js/plugin/autotab/jquery.autotab-1.1b.js"></script>
<!-- plugin - maskedinput(inputbox날짜포맷, 기타 사용자정의 포맷) -->
<script type="text/javascript" src="/_admin/js/plugin/maskedinput/jquery.maskedinput-1.2.2.js"></script>
<script> $(function($){ $(".masked_date").mask("9999-99-99"); }); </script>
<!-- plugin - Layer combobox(selectbox) -->
<link rel="stylesheet" type="text/css" href="/_admin/js/plugin/dropdown_selbox/msdropdown/dd.css">
<script type="text/javascript" src="/_admin/js/plugin/dropdown_selbox/msdropdown/js/jquery.dd.js"></script>
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
   <link type="text/css" href="/_admin/js/plugin/adgallery/jquery.ad-gallery.css" rel="stylesheet">
<script type="text/javascript" src="/_admin/js/plugin/adgallery/jquery.ad-gallery.js"></script>
<!-- plugin - 지정영역 인쇄 -->
<script type="text/javascript" src="/_admin/js/jquery.printArea.js" charset="utf-8"></script>
<!-- admin 공용 js -->
<script type="text/javascript" src="/common/js/work/common.jQuery.js" charset="utf-8"></script>
<!-- 메뉴별 js 인클루드 -->
<!-- plugin - mediaplay_plugin -->
<script type="text/javascript" src="/_admin/js/plugin/mediaplay_plugin/jquery.metadata.v2.js"></script>
<script type="text/javascript" src="/_admin/js/plugin/mediaplay_plugin/jquery.media.js"></script>
<script type="text/javascript" src="/_admin/js/plugin/mediaplay_plugin/swfobject.js"></script>
<script type="text/javascript">
$(function() {
     $('a.media').media(); /*$.fn.media.mapFormat('avi', 'quicktime'); **/ 
});
</script>

<!-- easy wisig Editor -->
<script src="/_admin/easy-editor/easyEditor.js"></script>

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
		<div id="header">
			<div id="hd_top">
				<ul class="fr">
					<a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list"><li><img src="/images/top_01.png" alt=""></li></a>
					<a href="http://pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list"><li><img src="/images/top_02.png" alt=""></li></a>
					<a href="http://pnlskin.com/work/sub14/sub14.php?sb=01&amp;bbs=bnf&amp;pg=list"><li><img src="/images/top_03.png" alt=""></li></a>
					<a href="/work/sub01/sub01.php?sb=07&amp;bbs=notice&amp;pg=list"><li><img src="/images/top_04.png" alt=""></li></a>
					<a href="http://plus.kakao.com/home/@박앤리피부과" target="_blank"><li><img src="/images/top_05.png" alt=""></li></a>
					<a href="http://pnlskin.com/work/sub15/sub15.php?sb=01&amp;bbs=members&amp;pg=login"><li><img src="/images/top_06.png" alt=""></li></a>
					<a href="http://pnlskin.com/work/sub15/sub15.php?sb=02&amp;bbs=members&amp;pg=contract"><li><img src="/images/top_07.png" alt=""></li></a>
					<a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list"><li><img src="/images/top_08.png" alt=""></li></a>
				</ul>
			</div>
			<div class="fr clear" id="hd_mid">
				<img src="/images/top_09.png" alt="">
			</div>
			<div class="fl" id="logo">
					<a href="http://pnlskin.com"><img src="/images/logo.png" alt=""></a>
				</div>
			<div class="fl clear" id="menu2">
				
				<ul class="fr">
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01">박앤리</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01">인사말</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=02">의료진소개</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=03">병원둘러보기</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08">진료안내</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=04">보유장비소개</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=05">찾아오시는길</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list">미디어</a></li>
							<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=07&amp;bbs=notice&amp;pg=list">병원소식</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=01">HOT 클리닉</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=01">One-day 리프팅</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=07">Young Age 리프팅</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=02">안면홍조 주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=04">기미잡티색소치료</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=5_05">여드름</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=5_01">여드름흉터</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=6_01">모공</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=9_01">탈모치료</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=05">모발이식</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=11_03">비만</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=12_04">튼살치료</a></li>
							<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=03">스컬트라</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=01">탄력ㆍ리프팅</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=16">울쎄라</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=02">뉴써마지더블로S</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=03">더블로</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=04">디아지</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=05">마스터스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=06">제네시스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=07">프락셀듀얼</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=08">모자이크</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=09">eco2</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=10">보톡스ㆍ필러</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=11">스컬트라 엘란쎄</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=10_03">진피내주름주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=10_04">리쥬란힐러</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=18">샤넬동안주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=12">더마샤인</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=13">하이드로리프팅</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=14">해피리프팅 울트라V리프팅</a></li>
							<li><a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=17">LDM RF고주파</a></li> <!-- 추가 페이지 -->
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub04/sub04.php?sb=01">기미ㆍ잡티ㆍ색소</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=01">기미</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=02">잡티 색소</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=03">주근깨</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=04">검버섯</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=05">오타모반</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=06">점</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=15">엑셀브이레이저</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=18">피코</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=09">제네시스</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=10">스펙트라</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=11">모자이크</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=21">프락셀듀얼</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=20">마스터스</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=19">디아지</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=16">Co2</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=17">헬리오스 III</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=12">eco2</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=13">IPL</a></li>
							<li><a href="http://pnlskin.com/work/sub04/sub04.php?sb=2_08">밀크필</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub05/sub05.php?sb=01">여드름ㆍ여드름흉터</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=01">여드름</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=02">성인여드름</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=03">사춘기여드름</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=04">바디여드름</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=05">여드름흉터</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=06">여드름자국</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=07">프락셀듀얼</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=08">모자이크</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=09">eco2</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=16_1">이노젝터</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=15_1">엑셀브이레이저</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=18_1">피코</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=15">아그네스</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=16">카프리</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=10">PDT</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=11">아쿠아필</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=12">스케일링,필링</a></li>
							<li><a href="http://pnlskin.com/work/sub05/sub05.php?sb=13">해초필링</a></li>
							<li><a href="#none">알라딘필</a></li>
							<li><a href="#none">VSM</a></li>
							<li><a href="#none">블랙필 호박필</a></li> <!-- 세부페이지 연결 다음에 -->
						</ul>
					</li>
					<!--
					<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_01">레이저클리닉</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_01">V빔레이저</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_02">프락셀 듀얼</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_03">스펙트라</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_04">제네시스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_06">모자이크</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_07">ECO2</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_08">써마지CPT</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_09">더블로</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_10">디아지</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_11">마스터스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=13_12">IPL</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=05_15">아그네스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=11">CO2</a></li>
							<li><a href="http://www.pnlskin.com/work/sub06/sub06.php?sb=11_01">제모레이저</a></li>
						</ul>
					</li>
					-->
					<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_01">모공ㆍ흉터</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_01">모공</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_02">흉터</a></li>
							<li><a href="#none">켈로이드</a></li> <!-- 새 페이지? -->
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_03">튼살</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_05">프락셀듀얼</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=13_06">모자이크</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_09">eco2</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=16_1">이노젝터</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=13_04">제네시스</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=18_1">피코</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=16_1">카프리</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=05_1">마스터스</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_08">디아지</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_10">IPL</a></li>
							<li><a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_06">아쿠아필</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub08/sub08.php?sb=7_01">모반</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_01">선천성멜라닌모반</a></li>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_02">베커모반</a></li>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_03">화염상모반</a></li>
							<li><a href="#none">혈관종모반</a></li>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_04">오타모반</a></li>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_05">피지샘모반</a></li>
							<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_06">밀크커피색반점</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub09/sub09.php?sb=8_01">안면홍조 주사</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_01">안면홍조</a></li>
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_02">모세혈관확장</a></li>
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_05">엑셀브이레이저</a></li>
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_03">V-빔레이저</a></li>
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_04">제네시스</a></li>
							<li><a href="#none">롱펄스엔디야그</a></li> <!-- 추가 페이지??? -->
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=18_1">피코</a></li> <!-- 추가 페이지 -->
							<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=17_1">LDM</a></li> <!-- 추가 페이지 -->
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_02">탈모</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_01">탈모</a></li>
							<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_02">모발이식</a></li>
							<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_03">흉터이식술</a></li>
							<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_04">메조테라피</a></li>
							<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_05">두피케어</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_01">쁘띠성형</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_01">보톡스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_02">필러</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_03">메조보톡스</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_04">리쥬란힐러</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_05">물광주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=03_1">스컬트라</a></li>
							<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=18">샤넬동안주사</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_01">제모ㆍ비만</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_01">제모</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_02">액취증ㆍ다한증</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_03_1">사이저</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_03">HPL</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_04">PPC</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_05">메조테라피</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_06">카복시테라피</a></li>
							<li><a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_08">클라투</a></li>
							<li><a href="#none">브라질리언제모</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_01">주사치료</a>
						<ul>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_01">백옥주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_02">신데렐라주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_03">물광주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_04">보습주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_05">태반주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=15_06">맞춤영양주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=18">샤넬동안주사</a></li>
							<li><a href="http://www.pnlskin.com/work/sub15/sub16.php?sb=10_03">땀주사</a></li>
							<li><a href="#none">면역주사</a></li>
						</ul>
					</li>
					<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_12">피부질환</a>
						<ul>
							<li><a href="#none">발톱무좀</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_12">백반증</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_10">건선</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_01">알레르기피부염</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_02">아토피피부염</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_03">지루성피부염</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_04">튼살</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_05">닭살</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_06">티눈ㆍ사마귀</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_07">두드러기</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_08">한관종ㆍ비립종</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_09">단순포진ㆍ대상포진</a></li>
							<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_11">백선</a></li>
						</ul>
					</li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=01&amp;bbs=bnf&amp;pg=list">커뮤니티</a>
						<ul>
							<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=01&amp;bbs=bnf&amp;pg=list">전후사진</a></li>
							<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=02&amp;bbs=bnf&amp;pg=list">시술후기</a></li>
							<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=03&amp;bbs=event&amp;pg=list">리얼스토리</a></li>
							<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list">온라인상담</a></li>
							<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=042">하이닥</a></li>
						</ul>
					</li>
				</ul>
				<div id="menu_bg"></div>
			</div>
		</div>
	</div>
	<div id="sub_visual">
		<img src="/images/sub_v01.png" alt="">
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
			<div class="l_n_title">HOT 클리닉</div>
			<ul class="l_n_top">
				<li id="sb_01" style="background: rgb(72, 198, 255);"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=01" style="color: rgb(255, 255, 255);">One-day 리프팅</a></li>
				<li id="sb_07"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=07">Young Age 리프팅</a></li>
				<li id="sb_02"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=02">안면홍조 주사</a></li>
				<li id="sb_04"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=04">기미잡티색소치료</a></li>
				<li id="sb_5_05"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=5_05">여드름</a></li>
				<li id="sb_5_01"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=5_01">여드름흉터</a></li>
				<li id="sb_6_01"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=6_01">모공</a></li>
								<li id="sb_11_03"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=11_03">비만</a></li>
				<li id="sb_12_04"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=12_04">튼살치료</a></li>
				<li id="sb_03"><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=03">스컬트라</a></li>
				<li class="cbox"></li>
			</ul>
			<ul class="l_n_bottom clear">
				<li><a href="http://www.pnlskin.com/work/sub02/sub02.php?sb=01"><img src="/images/ln_c01.png" alt=""></a></li>
				<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list"><img src="/images/ln_c02.png" alt=""></a></li>
				<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01"><img src="/images/ln_c03.png" alt=""></a></li>
				<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08"><img src="/images/ln_c04.png" alt=""></a></li>
			</ul>
		</div>
				<div id="table_wrap"><!-- contents -->
    <map name="foot" id="foot">
  <area shape="rect" coords="45,23,364,103" href="http://www.pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list">
  <area shape="rect" coords="366,21,688,104" href="http://www.pnlskin.com/work/sub01/sub01.php?sb=05">
</map><table width="740" border="0" cellspacing="0" cellpadding="0">
		<tbody><tr>
			<td colspan="2" height="15"></td>
		</tr>
      <tr>
        <td align="left" width="50%"><img src="../_images/sub/title02_01.gif" border="0"></td>
        <td align="right" class="HOME"><img src="../_images/sub/home.gif" align="absmiddle"> &gt; HOT클리닉 &gt; <span class="home_1">One-day 리프팅</span></td>
      </tr>
	  <tr>
			<td colspan="2" height="25"></td>
		</tr>
	   <tr>
        <td colspan="2"><img src="../_images/sub/con0201.jpg"></td>
      </tr>
	   <tr>
        <td colspan="2"><img src="../_images/sub/btn_con.jpg" usemap="#foot" border="0"></td>


      </tr>
    </tbody></table>
<!-- contents -->
<br><br>
<br><br>
<br><br><br><br><br><br>
		
  



  
<!-- table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td align="center">
		<table width="1000" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="540" align="left"><start include data list <div class="inquiryForm">
<script>
$("document").ready(function() {
	 $("#btn_send").click(function() {
		 if(!$("#requestForm #agr").is(":checked")){
			  alert("개인정보 수집 및 사용에 동의를 해주셔야 합니다.");return;
		 }
		 if( $("#requestForm #name").val() == "" ){
			  alert("이름을 입력해 주십시요."); $("#requestForm #name").focus(); return;
		 }
		 if( $("#requestForm #cell1").val() == "" || $("#requestForm #cell2").val() == "" || $("#requestForm #cell3").val() == "" ) {
			  alert("연락처를 입력해 주십시요."); return;
		 }
		 if(confirm("상담 신청 하시겠습니까?")) {
			  $("#requestForm").submit();
		 }
	 }).css("cursor", "pointer");
});

var isNN = (navigator.appName.indexOf("Netscape")!=-1);
function autoTab(input,len, e) {
	var keyCode = (isNN) ? e.which : e.keyCode; 
	var filter = (isNN) ? [0,8,9] : [0,8,9,16,17,18,37,38,39,40,46];
	if(input.value.length >= len && !containsElement(filter,keyCode)) {
		input.value = input.value.slice(0, len);
		input.form[(getIndex(input)+1) % input.form.length].focus();
	}
	function containsElement(arr, ele) {
		var found = false, index = 0;
		while(!found && index < arr.length)
			if(arr[index] == ele)
			found = true; 
			else
			index++;
		return found;
	}
	function getIndex(input) {
		var index = -1, i = 0, found = false;
		while (i < input.form.length && index == -1)
			if (input.form[i] == input)index = i;
			else i++;
		return index;
	}
	return true;
}

</script>
<form method="post" id="requestForm" name="requestForm" method="post" action="/work/_inc/inc.sub.counsel.proc.php" target="common_iframe">
<input type="hidden" name="mode" value="write">


	<table>
			<tbody>
				<tr>
					<th rowspan="4"><input type="checkbox" name="agr" id="agr" /><a href="JavaScript:scrollpopup('/work/_inc/protect.php','','580','570','');"><img src="/work/_images/sub/board_05.gif" alt="개인정보" /></a></th>
					<td width="49"><img src="/work/_images/sub/board_01.gif" alt="이름" /></td>
					<td width="214"><input id="name" name="name" type="text" class="inputText w131" value=""  exp="이름" /></td>
					<td rowspan="3" align="right" valign="top"><img id="btn_send" src="/work/_images/sub/board_btn.gif" alt="상담신청하기"  border="0"></td>
				</tr>
				<tr>
					<td><img src="/work/_images/sub/board_02.gif" alt="치료과목" /></td>
					<td>
						<select class="inputText w93" id="" name="opt" style="height:20px;font-size:11px;">
													<option value="안티에이징" style="background-color:#eaeaea;">안티에이징</option>
														<option value="울쎄라">▶울쎄라</option>
														<option value="물광주사">▶물광주사</option>
														<option value="브이리프팅">▶브이리프팅</option>
														<option value="티알라인">▶티알라인</option>
														<option value="보톡스">▶보톡스</option>
														<option value="필러">▶필러</option>
														<option value="아미노산주사">▶아미노산주사</option>
														<option value="비타민영양수액">▶비타민영양수액</option>
														<option value="태반주사">▶태반주사</option>
																				<option value="피부클리닉" style="background-color:#eaeaea;">피부클리닉</option>
														<option value="기미">▶기미</option>
														<option value="잡티/주근깨">▶잡티/주근깨</option>
														<option value="여드름">▶여드름</option>
														<option value="여드름 흉터">▶여드름 흉터</option>
														<option value="안면홍조">▶안면홍조</option>
																				<option value="피부질환클리닉" style="background-color:#eaeaea;">피부질환클리닉</option>
														<option value="사마귀/티눈">▶사마귀/티눈</option>
														<option value="비립종/한관종">▶비립종/한관종</option>
														<option value="문신제거">▶문신제거</option>
																				<option value="체형클리닉" style="background-color:#eaeaea;">체형클리닉</option>
														<option value="네오울트라">▶네오울트라</option>
														<option value="스무스쉐이프">▶스무스쉐이프</option>
														<option value="워터젯지방흡입">▶워터젯지방흡입</option>
														<option value="울트라지방용해술">▶울트라지방용해술</option>
														<option value="PPC">▶PPC</option>
																				<option value="모발클리닉" style="background-color:#eaeaea;">모발클리닉</option>
														<option value="세이퍼모발이식">▶세이퍼모발이식</option>
														<option value="특수부위모발이식">▶특수부위모발이식</option>
														<option value="제모">▶제모</option>
														<option value="탈모프로그램">▶탈모프로그램</option>
																				<option value="스페셜클리닉" style="background-color:#eaeaea;">스페셜클리닉</option>
														<option value="지방줄기세포">▶지방줄기세포</option>
														<option value="PRP">▶PRP</option>
																			</select>
					</td>
				</tr>
				<tr>
					<td><img src="/work/_images/sub/board_03.gif" alt="휴대전화" /></td>
					<td>
						<select name="cell1" style="height:20px;">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select> - <input type='text' name='cell2' size='8' maxlength='4' onKeyUp="return autoTab(this,4, event);" style="width:40px; " maxlength="4"  class="input" > - <input type='text' name='cell3' size='8' maxlength='4' style="width:40px; " maxlength="4"  class="input" onKeyUp="return autoTab(this,4, event);">
					</td>
				</tr>
				<tr>
					<td><img src="/work/_images/sub/board_04.gif" alt="내용" /></td>
					<td colspan="2"><input id="content" name="content" type="text" class="inputText w285" /></td>
				</tr>
			</tbody>
		</table>
  </form>
</div> end include data list></td>
			<td width="237" align="left"><a href="javascript:sub08(01)"><img src="/work/_images/sub/banner1.jpg" alt="���" /></a></td>
			<td width="223" align="right"><a href="javascript:sub08(03)"><img src="/work/_images/sub/banner2.jpg" alt="���" /></a></td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td height="40"></td>
</tr>
</table -->	<div id="qmenu">
		<div id="gray"></div>
		<ul>
			<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=05"><img src="/images/q_01.png" alt="" onmouseover="this.src='/images/q_01_o.png'" onmouseout="this.src='/images/q_01.png'"></a></li>
			<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=08"><img src="/images/q_02.png" alt="" onmouseover="this.src='/images/q_02_o.png'" onmouseout="this.src='/images/q_02.png'"></a></li>
			<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list"><img src="/images/q_03.png" alt="" onmouseover="this.src='/images/q_03_o.png'" onmouseout="this.src='/images/q_03.png'"></a></li>
			<li><img src="/images/q_04.png" alt=""></li>
			<li><a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="/images/q_05.png" alt=""></a></li>
			<li><a href="#"><img src="/images/q_06.png" alt=""></a></li>
		</ul>
		
	</div>





<script language="javascript">
			// 좌우측 날개 배너를 위한 스크립트
			var bNetscape4plus = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) >= "4");
			var bExplorer4plus = (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.substring(0,1) >= "4");
			function CheckUIElements()
			{
				var yMenuFrom, yMenuTo, yButtonFrom, yButtonTo, yOffset, timeoutNextCheck;
 				if ( bNetscape4plus )
				{
					yMenuTo     = window.pageYOffset + 0;
				}
				else if ( bExplorer4plus )
				{
					yMenuTo     = document.documentElement.scrollTop + 360;
					if(document.body.scrollTop) yMenuTo += document.body.scrollTop;
				}
				yMenuFrom   = parseInt(document.getElementById("divMenu1").style.top, 10);
				timeoutNextCheck = 500;

				if ( yMenuFrom != yMenuTo )
				{
					yOffset = Math.ceil( Math.abs( yMenuTo - yMenuFrom ) / 20 );
					if ( yMenuTo < yMenuFrom ) yOffset = -yOffset;
					if ( bNetscape4plus ) document.getElementById("divMenu1").top += yOffset;
					else if ( bExplorer4plus )
					{
						document.getElementById("divMenu1").style.top = parseInt (document.getElementById("divMenu1").style.top, 10) + yOffset;
					}
					timeoutNextCheck = 10;
				}

				setTimeout ("CheckUIElements()", timeoutNextCheck);
			}

			function OnLoad()
			{
				var y;
				CheckUIElements();
				return true;
			}
			OnLoad();
	function searchSubmit1(){
		form=document.searchForm1
		if(!checkBlank(form.searchWhat,"검색어를")) return;
		form.submit();
	}
</script>
</div>
</div>

<script language="javascript">

var sb = "01";

if(sb) {
	
	$("#sb_"+sb).css({'background':'#48c6ff'});
	$("#sb_"+sb+" a").css({"color":"#fff"});


}

function scrollpopup(url,id,w,h,sc,addvar,other){

    var ref = url;
    if(addvar){
        addvar= eval("document.joinform."+addvar+".value");
        ref = url +"?fid="+addvar+"&mb="+other;
    }

    var window_left = (screen.width-640)/2;
    var window_top = (screen.height-480)/2;
   //showModalDialog
    window.open(ref,id,'width=' + w + ',height=' + h + ',status=no,scrollbars='+ sc +',menubar=no,top=' + window_top + ',left=' + window_left + '');
}
</script>


<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1426366b17c8";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>


<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['dgc19.acecounter.com','8080','AR1F40118514478','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script><script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR1F40118514478&amp;py=0&amp;gd=dgc19&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1576132744987" type="text/javascript"></script>

<noscript><img src='http://dgc19.acecounter.com:8080/?uid=AR1F40118514478&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End --> 

<!-- Begin Footer -->
	<div id="wrap">
		<div id="footer">
			<div id="ft_wrap">
				<div class="fl" id="logo"><a href=""><img src="/images/f_logo.png" alt=""></a></div>
				<p class="ft01"><a href="http://www.pnlskin.com/work/sub15/sub15.php?sb=02&amp;bbs=members&amp;pg=contract">이용약관</a> &nbsp;|&nbsp; <a href="http://www.pnlskin.com/work/sub15/sub15.php?sb=02&amp;bbs=members&amp;pg=contract">개인정보취급방침</a> &nbsp;|&nbsp; <a href="http://www.pnlskin.com/work/_inc/mail_refusal.php" target="_blank">이메일주소 무단수집거부</a></p>
				<p class="ft02">주소 : 대구광역시 달서구 상인동 1512번지 상인프라자 5층 &nbsp;|&nbsp; 대표자 : 박재경 &nbsp;|&nbsp; 사업자등록번호 : 514-25-52029 &nbsp;|&nbsp; 고객센터 : 053-644-7755&nbsp;&nbsp;
					<a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="/images/blog.png" alt=""></a></p>
				<p class="ft03">COPYRIGHT ⓒ PARK &amp; LEE CLINIC. ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div>
<!-- End Footer -->
		 

    <!-- End Wrapper -->

    <div style="display:;"><iframe name="common_iframe" id="common_iframe" style="display:none;"></iframe></div>


		                         


 
  
 </body>
</html>