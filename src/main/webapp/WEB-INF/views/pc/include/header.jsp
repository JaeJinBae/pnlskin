<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="header">
	<div id="hd_top">
		<ul class="fr">
			<a href="${pageContext.request.contextPath}/menu14_04"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_01.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/menu01_07"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_02.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/menu14_01"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_03.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/menu01_08"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_04.png" alt=""></li></a>
			<a href="http://plus.kakao.com/home/@박앤리피부과" target="_blank"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_05.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_06.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_07.png" alt=""></li></a>
			<a href="${pageContext.request.contextPath}/"><li><img src="${pageContext.request.contextPath}/resources/img/pc/main/top_08.png" alt=""></li></a>
		</ul>
	</div>
	<div class="fr clear" id="hd_mid">
		<img src="${pageContext.request.contextPath}/resources/img/pc/main/top_09.png" alt="">
	</div>
	<div class="fl" id="logo">
			<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/pc/main/logo.png" alt=""></a>
		</div>
	<div class="fl clear" id="menu2">
		<ul class="fr">
			<li><a href="${pageContext.request.contextPath}/menu01_01">박앤리</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu01_01">인사말</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_02">의료진소개</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_04">진료안내</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_05">보유장비소개</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_06">찾아오시는길</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_07">미디어</a></li>
					<li><a href="${pageContext.request.contextPath}/menu01_08">병원소식</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu02_01">HOT 클리닉</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu02_01">One-day 리프팅</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_02">Young Age 리프팅</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_03">안면홍조 주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_04">기미잡티색소치료</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_05">여드름</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_06">여드름흉터</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_07">모공</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_08">탈모치료</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_09">모발이식</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_10">비만</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_11">튼살치료</a></li>
					<li><a href="${pageContext.request.contextPath}/menu02_12">스컬트라</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu03_00">탄력ㆍ리프팅</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu03_01">울쎄라</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_02">뉴써마지더블로S</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_03">더블로</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_04">디아지</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_05">마스터스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_06">제네시스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_07">프락셀듀얼</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_08">모자이크</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_09">eco2</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_10">보톡스ㆍ필러</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_11">스컬트라 엘란쎄</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_12">진피내주름주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_13">리쥬란힐러</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_14">샤넬동안주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_15">더마샤인</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_16">하이드로리프팅</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_17">해피리프팅 울트라V리프팅</a></li>
					<li><a href="${pageContext.request.contextPath}/menu03_18">LDM RF고주파</a></li> <!-- 추가 페이지 -->
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu04_01">기미ㆍ잡티ㆍ색소</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu04_01">기미</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_02">잡티 색소</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_03">주근깨</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_04">검버섯</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_05">오타모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_06">점</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_07">엑셀브이레이저</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_08">피코</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu04_09">제네시스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_10">스펙트라</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_11">모자이크</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_12">프락셀듀얼</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_13">마스터스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_14">디아지</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_15">Co2</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_16">헬리오스 III</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_17">eco2</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_18">IPL</a></li>
					<li><a href="${pageContext.request.contextPath}/menu04_19">밀크필</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu05_01">여드름ㆍ여드름흉터</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu05_01">여드름</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_02">성인여드름</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_03">사춘기여드름</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_04">바디여드름</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_05">여드름흉터</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_06">여드름자국</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_07">프락셀듀얼</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_08">모자이크</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_09">eco2</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_10">이노젝터</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_11">엑셀브이레이저</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_12">피코</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu05_13">아그네스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_14">카프리</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu05_15">PDT</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_16">아쿠아필</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_17">스케일링,필링</a></li>
					<li><a href="${pageContext.request.contextPath}/menu05_18">해초필링</a></li>
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
			<li><a href="${pageContext.request.contextPath}/menu06_01">모공ㆍ흉터</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu06_01">모공</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_02">흉터</a></li>
					<li><a href="#none">켈로이드</a></li> <!-- 새 페이지? -->
					<li><a href="${pageContext.request.contextPath}/menu06_04">튼살</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_05">프락셀듀얼</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_06">모자이크</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_07">eco2</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_08">이노젝터</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_09">제네시스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_10">피코</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu06_11">카프리</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu06_12">마스터스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_13">디아지</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_14">IPL</a></li>
					<li><a href="${pageContext.request.contextPath}/menu06_15">아쿠아필</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu07_01">모반</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu07_01">선천성멜라닌모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu07_02">베커모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu07_03">화염상모반</a></li>
					<li><a href="#none">혈관종모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu07_05">오타모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu07_06">피지샘모반</a></li>
					<li><a href="${pageContext.request.contextPath}/menu07_07">밀크커피색반점</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu08_01">안면홍조 주사</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu08_01">안면홍조</a></li>
					<li><a href="${pageContext.request.contextPath}/menu08_02">모세혈관확장</a></li>
					<li><a href="${pageContext.request.contextPath}/menu08_03">엑셀브이레이저</a></li>
					<li><a href="${pageContext.request.contextPath}/menu08_04">V-빔레이저</a></li>
					<li><a href="${pageContext.request.contextPath}/menu08_05">제네시스</a></li>
					<li><a href="#none">롱펄스엔디야그</a></li> <!-- 추가 페이지??? -->
					<li><a href="${pageContext.request.contextPath}/menu08_07">피코</a></li> <!-- 추가 페이지 -->
					<li><a href="${pageContext.request.contextPath}/menu08_08">LDM</a></li> <!-- 추가 페이지 -->
				</ul>
			</li>

			<li><a href="${pageContext.request.contextPath}/menu09_01">탈모</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu09_01">탈모</a></li>
					<li><a href="${pageContext.request.contextPath}/menu09_02">모발이식</a></li>
					<li><a href="${pageContext.request.contextPath}/menu09_03">흉터이식술</a></li>
					<li><a href="${pageContext.request.contextPath}/menu09_04">메조테라피</a></li>
					<li><a href="${pageContext.request.contextPath}/menu09_05">두피케어</a></li>
				</ul>
			</li>

			<li><a href="${pageContext.request.contextPath}/menu10_01">쁘띠성형</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu10_01">보톡스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_02">필러</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_03">메조보톡스</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_04">리쥬란힐러</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_05">물광주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_06">스컬트라</a></li>
					<li><a href="${pageContext.request.contextPath}/menu10_07">샤넬동안주사</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu11_01">제모ㆍ비만</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu11_01">제모</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">액취증ㆍ다한증</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">사이저</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">HPL</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">PPC</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">메조테라피</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">카복시테라피</a></li>
					<li><a href="${pageContext.request.contextPath}/menu11_01">클라투</a></li>
					<li><a href="#none">브라질리언제모</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu12_01">주사치료</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu12_01">백옥주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_02">신데렐라주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_03">물광주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_04">보습주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_05">태반주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_06">맞춤영양주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_07">샤넬동안주사</a></li>
					<li><a href="${pageContext.request.contextPath}/menu12_08">땀주사</a></li>
					<li><a href="#none">면역주사</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu13_01">피부질환</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu13_01">발톱무좀</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_02">백반증</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_03">건선</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_04">알레르기피부염</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_05">아토피피부염</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_06">지루성피부염</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_07">튼살</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_08">닭살</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_09">티눈ㆍ사마귀</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_10">두드러기</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_11">한관종ㆍ비립종</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_12">단순포진ㆍ대상포진</a></li>
					<li><a href="${pageContext.request.contextPath}/menu13_13">백선</a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/menu14_01">커뮤니티</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/menu14_01">전후사진</a></li>
					<li><a href="${pageContext.request.contextPath}/menu14_02">시술후기</a></li>
					<li><a href="${pageContext.request.contextPath}/menu14_03">리얼스토리</a></li>
					<li><a href="${pageContext.request.contextPath}/menu14_04">온라인상담</a></li>
					<li><a href="${pageContext.request.contextPath}/menu14_05">하이닥</a></li>
				</ul>
			</li>

		</ul>
	</div>
</div>