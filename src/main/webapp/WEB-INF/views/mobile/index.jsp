<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta name="viewport" content="width=640px,target-densitydpi=medium-dpi">
<meta name="autocomplete" content="off">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>::::: 박앤리피부과 모바일 :::::</title>
<meta name="ormat-detection" content="telephone=no">
<link rel="canonical" href="http://www.pnlskin.com/m/main.php">
<meta name="description" content="26년이상경력 피부과전문의 진료, 여드름, 기미잡티, 리프팅, 피부질환, 다양한 레이저장비 보유">
<meta property="og:type" content="website">
<meta property="og:title" content="박앤리피부과">
<meta property="og:description" content="26년이상경력 피부과전문의 진료, 여드름, 기미잡티, 리프팅, 피부질환, 다양한 레이저장비 보유">
<meta property="og:image" content="http://www.pnlskin.com/images/sLogo.png">
<meta property="og:url" content="http://www.pnlskin.com/m/">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/jquery.bxslider.css">
<script language="JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/m/jquery.bxslider.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/m/script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/m/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/m/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/m/fancybox/jquery.fancybox-1.3.4.css" media="screen">
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="m_visual">
		<ul class="m_bxslider">
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_96" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_66" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_55" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_6" alt=""></li>
		</ul>
		<div id="m_bx-pager">
			<div style="position:absolute;left:43%;">
				<a data-slide-index="0" href="" class=""></a>
				<a data-slide-index="1" href="" class=""></a>
				<a data-slide-index="2" href="" class=""></a>
				<a data-slide-index="3" href="" class=""></a>
			</div>
		</div>
	</div>
	<div class="main_title">
		<img src="${pageContext.request.contextPath}/resources/img/m/main/main_c01.png" alt="">
	</div>
	<div class="bn_wrap">
		<ul>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_100" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_92" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/bn_72" alt=""></li>
		</ul>
	</div>
	<div class="main_title">
		<img src="${pageContext.request.contextPath}/resources/img/m/main/main_c02.png" alt="">
	</div>
	<div class="content">
		<ul>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/main_c03.png" alt=""></li>
			<li><a href="http://plus.kakao.com/home/@박앤리피부과" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/m/main/main_c04.png" alt=""></a></li>
			<li style="width:320px;">
				<div class="m_visual2">
					<ul class="m_bxslider2">
						<li id="visual01">
							<a href="/m/sub/sub05.html"><img src="${pageContext.request.contextPath}/resources/img/m/main/main_r01.png" alt=""></a>
						</li>
						<li id="visual02">
							<a href="/m/sub/sub06.html"><img src="${pageContext.request.contextPath}/resources/img/m/main/main_r02.png" alt=""></a>
						</li>
						<li id="visual03">
							<a href="/m/sub/sub07.html"><img src="${pageContext.request.contextPath}/resources/img/m/main/main_r03.png" alt=""></a>
						</li>
						<li id="visual04">
							<a href="/m/sub/sub08.html"><img src="${pageContext.request.contextPath}/resources/img/m/main/main_r04.png" alt=""></a>
						</li>
					</ul>
					<div id="m_bx-pager2">
						<div style="width:60px;margin-left:250px;">
							<a data-slide-index="0" href=""></a>
							<a data-slide-index="1" href=""></a>
							<a data-slide-index="2" href=""></a>
							<a data-slide-index="3" href=""></a>
						</div>
					</div>
				</div>
			</li>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/main_c05.png" alt=""></li>
		</ul>
	</div>

	<div class="foot_content">
		<ul>
			<li><img src="${pageContext.request.contextPath}/resources/img/m/main/ft_btn01.png" alt=""></li>
			<li><a href="tel:053-644-7755"><img src="${pageContext.request.contextPath}/resources/img/m/main/ft_btn02.png" alt=""></a></li>
			<li><a href="/m/page.php?fn=counsel"><img src="${pageContext.request.contextPath}/resources/img/m/main/ft_btn03.png" alt=""></a></li>
			<li><a href="/m/sub/sub04.html"><img src="${pageContext.request.contextPath}/resources/img/m/main/ft_btn04.png" alt=""></a></li>
		</ul>
	</div>
	<div class="footer">
		<p>대구광역시 달서구 상인동 1512번지 상인프라자 5층 박앤리피부과</p>
		<p>대표자 : 박재경 | 사업자등록번호 : 514-25-52029 | 고객센터 : 053-644-7755</p>
		<p>COPYRIGHT © PARK &amp; LEE CLINC, ALL RIGHTS RESERVED</p>
	</div>
	
	
	
	
	
	<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
	<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_1426366b17c8";
	if (!_nasa) var _nasa={};
	wcs.inflow();
	wcs_do(_nasa);
	</script>


		<div id="fancybox-tmp"></div>
		<div id="fancybox-loading">
			<div></div>
		</div>
		<div id="fancybox-overlay"></div>
		<div id="fancybox-wrap">
		<div id="fancybox-outer">
			<div class="fancybox-bg" id="fancybox-bg-n"></div>
			<div class="fancybox-bg" id="fancybox-bg-ne"></div>
			<div class="fancybox-bg" id="fancybox-bg-e"></div>
			<div class="fancybox-bg" id="fancybox-bg-se"></div>
			<div class="fancybox-bg" id="fancybox-bg-s"></div>
			<div class="fancybox-bg" id="fancybox-bg-sw"></div>
			<div class="fancybox-bg" id="fancybox-bg-w"></div>
			<div class="fancybox-bg" id="fancybox-bg-nw"></div>
			<div id="fancybox-content"></div>
			<a id="fancybox-close"></a>
			<div id="fancybox-title"></div>
			<a href="javascript:;" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a>
			<a href="javascript:;" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a>
		</div>
	</div>
</body>
</html>