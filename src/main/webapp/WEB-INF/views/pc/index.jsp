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
<meta name="naver-site-verification" content="4f232264d1469465fb3bb68eff7c6d7ee8f6826b">
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
<script src="${pageContext.request.contextPath}/resources/js/pc/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pc/jquery.bxslider.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pc/script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin/jquery.cookie.js" charset="utf-8"></script>
<script>
</script>
</head>
<body>

<!-- <div id="pop_37" style="position:absolute;z-index:99999;left:800px;top:670px;text-align:center;text-align:center;border:1px solid #000;">
	<div><img alt="핀포인트-팝업.jpg" src="/_admin/easy-editor/tmp/201803292102401652.jpg" border="0"></div>
	
	<p style="height:16px; height:36px; padding:0 10px; color:#949393; background-color:#222; line-height:36px;text-align:left;">
		<input type="checkbox" onclick="if(this.checked==true){$.cookie('pop_37_view','view',{expires:1});$('#pop_37').hide();}" style="veritcal-align:middle;margin-right:5px;color:#333">
		<label for="achk">오늘하루 보지 않기</label><a href="#" onclick="$('#pop_37').hide();" style="color:#949393 !important;float:right;">창닫기 X</a>
	</p>
</div>


<script>
//$wh = $(document).height();
//$("#mask1").css({"height":$wh+"px","opacity":"0.7"});
</script>

<div id="pop_42" style="position:absolute;z-index:99999;left:200px;top:130px;text-align:center;text-align:center;border:1px solid #000;">
	<div><img src="/_admin/easy-editor/tmp/201911191739339586.jpg" border="0" alt="여드름이벤트.jpg"></div>
	
	<p style="height:16px; height:36px; padding:0 10px; color:#949393; background-color:#222; line-height:36px;text-align:left;">
		<input type="checkbox" onclick="if(this.checked==true){$.cookie('pop_42_view','view',{expires:1});$('#pop_42').hide();}" style="veritcal-align:middle;margin-right:5px;color:#333">
		<label for="achk">오늘하루 보지 않기</label><a href="#" onclick="$('#pop_42').hide();" style="color:#949393 !important;float:right;">창닫기 X</a>
	</p>
</div>


<script>
//$wh = $(document).height();
//$("#mask1").css({"height":$wh+"px","opacity":"0.7"});
</script> -->
	<div id="wrap">
		<jsp:include page="include/header.jsp"></jsp:include>
	</div>
	<div class="visual">
		<ul class="bxslider" id="bxslider01">
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/main/bn_95.jpg" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/main/bn_83.jpg" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/main/bn_65.jpg" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/main/bn_62.png" alt=""></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/main/bn_61.png" alt=""></li>
						<!--
			<li id="visual01"">
				<img src="/images/v04.png" alt="" />
				
			</li>
			<li id="visual02">
				<img src="/images/v03.png" alt="" />
			</li>
			<li id="visual03">
				<img src="/images/v02.png" alt="" />
			</li>
			<li id="visual04">
				<img src="/images/v01.png" alt="" />
			</li>
			-->
		</ul>
	</div>
	<style>

	.c01_top04 {background:url('${pageContext.request.contextPath}/resources/img/pc/main/pnl_main.png') no-repeat !important;position:relative;}
	.c01_top04_span {position:absolute;left:25px;top:292px}
	.vm {vertical-align:middle}
	.agree {font-size:12px}

	.tbl_wrap {position:absolute;left:20px;top:160px}
	.tbl_wrap table th {text-align:center;color:#000;font-size:13px;padding:10px 20px 10px 0;vertical-align:top;}
	.tbl_wrap table td input.input {height:22px;width:150px}
	.tbl_wrap table td textarea.texta {height:35px;width:152px}
	.main_sb {position:absolute;right:25px;top:290px}
	</style>

	<div id="wrap">
		<div id="content01">
			<form name="fsmsform" action="" method="post" onsubmit="return checkSubmit(this,'agreen1')">
				<ul class="c01_top">
					<!-- <a href="http://pnlskin.com/work/sub05/sub05.php?sb=01"><li class="mr_10px c01_top01"></li></a> -->
					<li class="mr_10px c01_top01">
						<div class="visual">
							<ul class="bxslider" id="bxslider03">
								<li id="visual01">
									<a href="http://www.pnlskin.com/work/sub05/sub05.php?sb=01"><img src="${pageContext.request.contextPath}/resources/img/pc/main/con01.png" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con01_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con01.png'" alt=""></a>								
								</li>
								<li id="visual02">								
									<a href="http://www.pnlskin.com/work/sub03/sub03.php?sb=01"><img src="${pageContext.request.contextPath}/resources/img/pc/main/con04.png" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con04_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con04.png'" alt=""></a>
								</li>
							</ul>
						</div>
					</li>
					<!-- <a href="http://www.pnlskin.com/work/sub04/sub04.php?sb=01"><li class="c01_top02"></li></a> -->
					<li class="mr_10px c01_top02">
						<div class="visual">
							<ul class="bxslider" id="bxslider04">
								<li id="visual01">
									<a href="http://www.pnlskin.com/work/sub04/sub04.php?sb=01"><img src="${pageContext.request.contextPath}/resources/img/pc/main/con02.png" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con02_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con02.png'" alt=""></a>														
								</li>
								<li id="visual02">
									<a href="http://www.pnlskin.com/work/sub09/sub09.php?sb=8_01"><img src="${pageContext.request.contextPath}/resources/img/pc/main/con03.png" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con03_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/main/con03.png'" alt=""></a>		
								</li>
							</ul>
						</div>
					</li>
					<li class="mr_10px">
					<a href="http://plus.kakao.com/home/@박앤리피부과" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/pc/main/pnl_kakao.png" alt=""></a>
					</li>				
					<!-- <a href="http://www.pnlskin.com/work/sub09/sub09.php?sb=8_01"><li class="mr_10px c01_top03"></li></a> -->
					<li class="c01_top04">
					<span class="c01_top04_span">
						<input type="checkbox" id="agreen1" checked="checked" class="vm"><label for="agreen1" class="agree">개인정보취급방침동의</label>
					</span>
					<div class="tbl_wrap" style="">
						<table>
							<tr>
								<th>이름</th>
								<td><input type="text" class="input" name="po_name" title="이름"></td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><input type="text" class="input" name="po_tel" title="연락처"></td>
							</tr>
							<tr>
								<th>상담내용</th>
								<td>
									<select name="po_text" style="width:154px;height:27px">
									<option value="기미&amp;잡티">기미&amp;잡티</option>
									<option value="리프팅">리프팅</option>
									<option value="여드름&amp;여드름흉터">여드름&amp;여드름흉터</option>
									<option value="안면홍조">안면홍조</option>
									<option value="쁘띠성형">쁘띠성형</option>
									<option value="비만">비만</option>
									<option value="탈모&amp;두피케어">탈모&amp;두피케어</option>
									<option value="제모">제모</option>
									</select>
								</td>
							</tr>
						</table>
					</div>
					<input type="image" src="${pageContext.request.contextPath}/resources/img/pc/main/pnl_main_sb.png" class="main_sb">				
					</li>				
				</ul>
				<ul class="c01_bot">
					<li class="mr_10px c01_bot01"></li>
					<li class="c01_bot02"></li>
				</ul>
			</form>
		</div>
		<hr class="line">
		<div id="content02">
			<ul class="c02">
				<a href="/work/sub01/sub01.php?sb=07&amp;bbs=notice&amp;search=&amp;keyword=&amp;pg=read&amp;idx=4&amp;thispage"><li class="c02_01 mr_10px"></li></a>
				<li class="c02_02 mb_10px"></li>
				<li class="c02_03"></li>
			</ul>
		</div>
		<hr class="line">
		<div id="content03">
			<ul class="c03">
				<a href="http://pnlskin.com/work/sub07/sub07.php?sb=6_01"><li class="c03_01 mr_16px"></li></a>
				<a href="http://www.pnlskin.com/work/sub12/sub12.php?sb=11_03"><li class="c03_02 mr_16px"></li></a>
				<!--<a href="#."><li class="c03_03"></li></a>-->
				<a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_01"><li class="c03_03"></li></a>
			</ul>
		</div>
		<hr class="line">
		<div id="content04">
			<ul class="c04">
				<a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08"><li class="c04_01"></li></a>
				<a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=05"><li class="c04_02"></li></a>
				<li class="c04_03">
					<img src="${pageContext.request.contextPath}/resources/img/pc/main/c04_03.png" alt="">
					<ul class="main_press">
						<li><a href="http://www.kidd.co.kr/news/211990" target="_blank">[산업일보] 붉어지는 얼굴 고민이라면? 피.. <span class="date">2019.11.14</span></a></li>
						<li><a href="http://www.kbsm.net/default/index_view_page.php?idx=257053&amp;part_idx=333" target="_blank">[경북신문] 기미, ‘완치’도 가능하다? <span class="date">2019.10.01</span></a></li>
						<li><a href="http://medicalreport.kr/news/view/202381" target="_blank">[메디컬리포트] [칼럼] 가을철 피부 관리, 떨.. <span class="date">2019.09.04</span></a></li>
						<li><a href="http://www.pointn.net/news/articleView.html?idxno=13438" target="_blank">[뉴스포인트] 여름철 안면홍조, 체계적인 치.. <span class="date">2019.08.01</span></a></li>
					</ul>

					<div id="c04_bt">
						<ul>
							<a href="http://pnlskin.com/work/sub14/sub14.php?sb=01&amp;bbs=bnf&amp;pg=list"><li class="c04_1"><p>전후사진</p></li></a>
							<a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01"><li class="c04_2"><p>병원소개</p></li></a>
							<a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08"><li class="c04_3"><p>진료안내</p></li></a>
							<a href="http://www.pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list"><li class="c04_4"><p>온라인상담</p></li></a>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div><!-- #wrap end -->
	
	<div id="allmenu_bg">
		<div id="allmenu">
			<div id="allmenu_w">
				<ul>
					<li>박앤리소개</li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=01">인사말</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=02">의료진소개</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=03">병원둘러보기</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=08">진료안내</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=04">보유장비소개</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=05">찾아오시는길</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=06&amp;bbs=press&amp;pg=list">미디어</a></li>
					<li><a href="http://www.pnlskin.com/work/sub01/sub01.php?sb=07&amp;bbs=notice&amp;pg=list">병원소식</a></li>
				</ul>
				<ul>
					<li>HOT 클리닉</li>
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
				<ul>
					<li>탄력ㆍ리프팅</li>
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
				<ul>
					<li>기미ㆍ잡티ㆍ색소</li>
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
				<ul>
					<li>여드름ㆍ여드름흉터</li>
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
					<ul class="br_1px">
					<li>모공ㆍ흉터</li>
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
				<ul class="2dp">
					<ul class="hf">
						<li>모반</li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_01">선천성멜라닌모반</a></li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_02">베커모반</a></li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_03">화염상모반</a></li>
						<li><a href="#none">혈관종모반</a></li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_04">오타모반</a></li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_05">피지샘모반</a></li>
						<li><a href="http://pnlskin.com/work/sub08/sub08.php?sb=7_06">밀크커피색반점</a></li>
					</ul>
					<ul class="hf  bt_1px bb_1px">
						<li>안면홍조 주사</li>
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_01">안면홍조</a></li>
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_02">모세혈관확장</a></li>
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_05">엑셀브이레이저</a></li>
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_03">V-빔레이저</a></li>
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=8_04">제네시스</a></li>
						<li><a href="#none">롱펄스엔디야그</a></li> <!-- 추가 페이지??? -->
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=18_1">피코</a></li> <!-- 추가 페이지 -->
						<li><a href="http://pnlskin.com/work/sub09/sub09.php?sb=17_1">LDM</a></li> <!-- 추가 페이지 -->
					</ul>
				</ul>
				<ul class="2dp">
					<ul class="hf">
						<li>탈모</li>
						<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_01">탈모</a></li>
						<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_02">모발이식</a></li>
						<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_03">흉터이식술</a></li>
						<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_04">메조테라피</a></li>
						<li><a href="http://www.pnlskin.com/work/sub10/sub10.php?sb=9_05">두피케어</a></li>
					</ul>

					<ul class="hf bt_1px bb_1px">
						<li>쁘띠성형</li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_01">보톡스</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_02">필러</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_03">메조보톡스</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_04">리쥬란힐러</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=10_05">물광주사</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=03_1">스컬트라</a></li>
						<li><a href="http://www.pnlskin.com/work/sub11/sub11.php?sb=18">샤넬동안주사</a></li>
					</ul>
				</ul>
				<ul class="bb_1px">
					<li>제모ㆍ비만</li>
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
				<ul class="bb_1px">
					<li>주사치료</li>
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
				<ul class="bb_1px">
					<li>피부질환</li>
					<li><a href="http://www.pnlskin.com/work/sub13/sub13.php?sb=12_13">발톱무좀</a></li>
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
				<ul class="br_1px bb_1px">
					<li>커뮤니티</li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=01&amp;bbs=bnf&amp;pg=list">전후사진</a></li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=02&amp;bbs=bnf&amp;pg=list">시술후기</a></li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=03&amp;bbs=event&amp;pg=list">리얼스토리</a></li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list">온라인상담</a></li>
					<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=042">하이닥</a></li>
				</ul>
			</div>
		</div>
	</div><!-- $allmenu_bg end -->
	
	<div id="wrap">
		<div id="footer">
			<div id="ft_wrap">
				<div class="fl" id="logo"><a href=""><img src="${pageContext.request.contextPath}/resources/img/pc/main/f_logo.png" alt=""></a></div>
				<p class="ft01">
					<a href="http://www.pnlskin.com/work/sub15/sub15.php?sb=02&amp;bbs=members&amp;pg=contract">이용약관</a> &nbsp;|&nbsp;
					<a href="http://www.pnlskin.com/work/sub15/sub15.php?sb=02&amp;bbs=members&amp;pg=contract">개인정보취급방침</a> &nbsp;|&nbsp;
					<a href="http://www.pnlskin.com/work/_inc/mail_refusal.php" target="_blank">이메일주소 무단수집거부</a>
				</p>
				<p class="ft02">주소 : 대구광역시 달서구 상인동 1512번지 상인프라자 5층 &nbsp;|&nbsp; 대표자 : 박재경 &nbsp;|&nbsp; 사업자등록번호 : 514-25-52029 &nbsp;|&nbsp; 고객센터 : 053-644-7755&nbsp;&nbsp;
					<a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/pc/main/blog.png" alt=""></a></p>
				<p class="ft03">COPYRIGHT ⓒ PARK &amp; LEE CLINIC. ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div><!-- #wrap end -->
	
	<div id="qmenu">
		<div id="gray"></div>
		<ul>
			<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=05"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_01.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_01_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_01.png'"></a></li>
			<li><a href="http://pnlskin.com/work/sub01/sub01.php?sb=08"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_02.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_02_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_02.png'"></a></li>
			<li><a href="http://pnlskin.com/work/sub14/sub14.php?sb=041&amp;bbs=counsel&amp;pg=list"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_03.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_03_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_03.png'"></a></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_04.png" alt=""></li>
			<li><a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_05.png" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_06.png" alt=""></a></li>
		</ul>
	</div><!-- #qmenu end -->

	<script type="text/javascript">
	function checkSubmit(frm,agree){
		
		if(document.getElementById(agree).checked == false ) {
			alert("개인정보수집동의에 체크해주세요.");
			return false;
		}
	
		var eleCount = frm.elements.length;
		var ctl = null;
		for(var i=0; i<eleCount; i++){
			ctl = frm.elements[i];
			if(ctl.title!=""){
				if(ctl.value=="") {
					alert(ctl.title + ' : 필수입력 항목입니다.');
					ctl.focus();
					return false;
				} // end if
			} // end if
		} // end for
	
		frm.action = "/main_proc.php";
	
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

</body>
</html>