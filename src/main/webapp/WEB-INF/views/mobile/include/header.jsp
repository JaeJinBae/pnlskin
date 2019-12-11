<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="header">
	<div id="logo">
		<div id="call_btn">
			<a href="tel:053-644-7755"><img src="${pageContext.request.contextPath}/resources/img/m/main/call.png" alt=""></a>
		</div>
           <a href="/m/main.php"><img src="${pageContext.request.contextPath}/resources/img/m/main/m_logo.png" alt=""></a>
		<div id="gnb_btn">
			<img src="${pageContext.request.contextPath}/resources/img/m/main/gnb_open.png" alt="">
		</div>
       </div>
   </div>
<div id="navmenu">
	<ul>
		<li><span style="padding-left:20px;">박앤리피부과</span>
			<ul>
				<li class="sub1"><a href="/m/sub/sub01.html">병원소개</a></li>
				<li class="sub3"><a href="/m/sub/sub03.html">진료안내</a></li>
				<li class="sub3"><a href="/m/sub/sub04.html">찾아오시는 길</a></li>
			</ul>
		</li>
		<li><span style="padding-left:20px;">HOT클리닉</span>
			<ul>
				<li class="sub6"><a href="/m/sub/sub05.html">여드름/여드름흉터</a></li>
				<li class="sub7"><a href="/m/sub/sub06.html">기미/잡티</a></li>
				<li class="sub7"><a href="/m/sub/sub07.html">안면홍조</a></li>
				<li class="sub7"><a href="/m/sub/sub08.html">리프팅</a></li>
				<li class="sub7"><a href="/m/sub/sub09.html">비만클리닉</a></li>
				<li class="sub7"><a href="/m/sub/sub11.html">쁘띠성형</a></li>
				<li class="sub7"><a href="/m/sub/sub12.html">제모</a></li>
			</ul>
		</li>
		<li><a href="/m/page.php?fn=counsel"><span style="padding-left:20px;">온라인상담</span></a></li>
		<li><a href="/m/page.php?fn=bnf"><span style="padding-left:20px;">전후사진</span></a></li>			
	</ul>
</div>