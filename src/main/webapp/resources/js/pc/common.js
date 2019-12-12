//회원정보 검색
function Member_Detail(id) {
	var window_left = (screen.width-640)/2;
  var window_top = (screen.height-480)/2;
  window.open("/admin/common/member_view.php?id="+id,"member_win",'width=600,height=500,status=no, scrollbars=yes, top=' + window_top + ',left=' + window_left + '');
}
function Member_Sel_Detail(id) {
	var window_left = (screen.width-640)/2;
  var window_top = (screen.height-480)/2;
  window.open("/admin/member_view.php?id="+id,"member_win",'width=600,height=500,status=no, scrollbars=yes, top=' + window_top + ',left=' + window_left + '');
}

//배송상태 변경
function changeBookingStatus(Cvalue, Cpath) {
	document.checkForm.Cvalue.value = Cvalue;
	document.checkForm.Cpath.value = Cpath;
	if(confirm("예약상태를 변경하시겠습니까?")) {
  	document.checkForm.submit();
	}
}

function changeprocessStatus(Cvalue, Cpath) {
	document.checkForm.Cvalue.value = Cvalue;
	document.checkForm.Cpath.value = Cpath;
	if(confirm("처리상태를 변경하시겠습니까?")) {
  	document.checkForm.submit();
	}
}

function changedate1(){
		var f = document.frmRegist;

		var calyear = f.strYear.value;
		var calmonth = f.strMonth.value;
		var size = lastday(calyear, calmonth);
		var k;

		f.strDay.length=size;
		f.strDay.options[0].value = "01";
		f.strDay.options[0].text  = "01";

		for (var i=2;i<=size;i++ ){
			if (i < 10) k='0' + i;
			else 		k = i;
			f.strDay.options[i-1].value = k;
			f.strDay.options[i-1].text  = k;
		}
	}

// flashWrite(파일경로, 가로, 세로, 아이디, 배경색, 변수, 윈도우모드) 
function flashWrite(url,w,h,id,bg,vars,win){ 
	// 플래시 코드 정의 
	var flashStr= 
	"<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0' width='"+w+"' height='"+h+"' id='"+id+"' align='middle'>"+ 
	"<param name='allowScriptAccess' value='always' />"+ 
	"<param name='movie' value='"+url+"' />"+ 
	"<param name='FlashVars' value='"+vars+"' />"+ 
	"<param name='wmode' value='"+win+"' />"+ 
	"<param name='menu' value='false' />"+ 
	"<param name='quality' value='high' />"+ 
	"<param name='bgcolor' value='"+bg+"' />"+ 
	"<embed src='"+url+"' FlashVars='"+vars+"' wmode='"+win+"' menu='false' quality='high' bgcolor='"+bg+"' width='"+w+"' height='"+h+"' name='"+id+"' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash' />"+ 
	"</object>"; 
	// 플래시 코드 출력 
	document.write(flashStr);
}

function fdown(act_file, bcd, seq, num)
{
	$("iframe[name=ifrm]").attr("src",act_file+"?bcd="+bcd+"&seq="+seq+"&num="+num);
}

function fdown2(act_file,seq, num)
{
	$("iframe[name=ifrm]").attr("src",act_file+"?seq="+seq+"&num="+num);
}

function viewImg(file)
{
	window.open(file,"imagepop");
}

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

function rejectEmail()
{
	window.open("/html/customer/reject_email.php", "rejectWindow", "width=600,height=207,scrollbars=no,resizable=no");
}

function chkForm2(form)
{
	var auth = true;
	$("form[name="+form+"] input,textarea").each(function (){

	if($(this).attr("required") == "required")
	{
		if($(this).val()=="")
		{
			alert($(this).attr("hname"));
			$(this).focus();
			auth = false;
			return false;
		}
	}
	});
	return auth;
}