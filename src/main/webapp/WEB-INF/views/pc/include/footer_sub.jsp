<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		
  



  
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
</table -->
	<div id="qmenu">
		<div id="gray"></div>
		<ul>
			<li><a href="${pageContext.request.contextPath}/menu01_06"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_01.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_01_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_01.png'"></a></li>
			<li><a href="${pageContext.request.contextPath}/menu01_05"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_02.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_02_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_02.png'"></a></li>
			<li><a href="${pageContext.request.contextPath}/menu14_04"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_03.png" alt="" onmouseover="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_03_o.png'" onmouseout="this.src='${pageContext.request.contextPath}/resources/img/pc/common/q_03.png'"></a></li>
			<li><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_04.png" alt=""></li>
			<li><a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_05.png" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/pc/common/q_06.png" alt=""></a></li>
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


<script language="javascript">

/* var sb = "01";

if(sb) {
	$("#sb_"+sb).css({'background':'#48c6ff'});
	$("#sb_"+sb+" a").css({"color":"#fff"});
} */

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
</script><script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR1F40118514478&amp;py=0&amp;gd=dgc19&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1576128178916" type="text/javascript"></script>

<noscript><img src='http://dgc19.acecounter.com:8080/?uid=AR1F40118514478&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End --> 

<!-- Begin Footer -->
	<div id="wrap">
		<div id="footer">
			<div id="ft_wrap">
				<div class="fl" id="logo"><a href=""><img src="${pageContext.request.contextPath}/resources/img/pc/main/f_logo.png" alt=""></a></div>
				<p class="ft01">
					<a href="${pageContext.request.contextPath}/">이용약관</a> &nbsp;|&nbsp;
					<a href="${pageContext.request.contextPath}/">개인정보취급방침</a> &nbsp;|&nbsp;
					<a href="${pageContext.request.contextPath}/" target="_blank">이메일주소 무단수집거부</a>
				</p>
				<p class="ft02">주소 : 대구광역시 달서구 상인동 1512번지 상인프라자 5층 &nbsp;|&nbsp; 대표자 : 박재경 &nbsp;|&nbsp; 사업자등록번호 : 514-25-52029 &nbsp;|&nbsp; 고객센터 : 053-644-7755&nbsp;&nbsp;
					<a href="http://blog.naver.com/pnl_skin" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/pc/main/blog.png" alt=""></a></p>
				<p class="ft03">COPYRIGHT ⓒ PARK &amp; LEE CLINIC. ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div>
<!-- End Footer -->
		 

    <!-- End Wrapper -->
	<div style="display:;"><iframe name="common_iframe" id="common_iframe" style="display:none;"></iframe></div>