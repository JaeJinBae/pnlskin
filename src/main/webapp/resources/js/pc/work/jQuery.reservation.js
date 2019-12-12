/**
 * ====================================
 * 온라인예약 js
 * ====================================
 */
    
    $(document).ready(function() {
    
	//-------- submit
		 $.extend({
			  sendit : function() {
				   $("form[name=thisForm]").submit();
			  },
			  
			  //-------- remove
			  remove : function(lcd, mcd, scd, arguments, idx) {
			       if(confirm("정말로 삭제 하시겠습니까?")) {
						common_iframe.location.href="/_admin/work/"+mcd+"/proc.php?"+arguments+"&mode="+scd+"&idx="+idx;
				   }
			  }

		 });
    
	//-------- checkbox checked all
		 $(".checkAll").click(function() {
			  isall = $(".checkAll").attr("checked");
			  $(".removechk").each(function() {
				   //$("select").uniform({selectClass: '.removechk'});
				   if(isall==true) $(this).attr("checked","checked")
				   else $(this).attr("checked","");
			  });
		 });

	//-------- write
		 $("#btn_conf").click(function() {
		 	  if($('#consent').is(':checked') == false ){   
				   alert("개인정보 취급방침에 동의하셔야 합니다."); return;
		      }
			  if($("input[name=class]").val()=="") {
				   alert("지점을 선택해 주십시요."); $("input[name=class]").focus(); return;
			  }
			  if($("input[name=name]").val()=="") {
			       alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
			  }
			  /*if($("input[name=id]").val()=="") {
				   alert("아이디를 입력해 주십시요."); $("input[name=id]").focus(); return;
			  }
			  if( $("input[name=pwd]").val()=="" ) {
				   alert("비밀번호를 입력해 주십시요."); $("input[name=pwd]").focus(); return;
			  }
			  if( $("input[name=pwd1]").val()=="" ) {
				   alert("비밀번호확인을 입력해 주십시요."); $("input[name=pwd1]").focus(); return;
			  }
			  if( $("input[name=pwd]").val() != $("input[name=pwd1]").val() ) {
				   alert("비밀번호가 일치하지 않습니다."); return;
			  }**/
			  if( $("input[name='cellphone[]']:eq(0)").val()=="" || $("input[name='cellphone[]']:eq(1)").val()=="" || $("input[name='cellphone[]']:eq(2)").val()=="" ) {
				   alert("전화번호를 입력해 주십시요."); return;
			  }
			  if($("input[name=email]").val()=="" || $("input[name=email1]").val()=="") {
				   alert("이메일을 입력해 주십시요."); $("input[name=email]").focus(); return;
			  }else{
				   ismail = emailCheck($("input[name=email]").val(), $("input[name=email1]").val());
				   if(!ismail) {
					    alert("메일 주소가 올바르지 않습니다.\n다시 입력해 주십시요."); return;
				   }
			  }
			  if($("input[name=reser_ymd]").val()=="") {
				   alert("켈린더에서 예약일자를 선택해 주십시요."); $("input[name=reser_ymd]").focus(); return;
			  }
			  if( $("#reser_hour option:selected").val() == "" ) {
			       alert("원하시는 진료 시간을 선택해 주십시요."); $("#reser_hour").focus(); return;
			  }   
			  /*if( $("input[name=reser_hour]").val()=="" ) {
				   alert("원하시는 진료 시간을 선택해 주십시요."); $("input[name=reser_hour]").focus(); return;
			  }**/
			  /*if( $("input[name=title]").val()=="" ) {
				   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
			  }
			  if( $("textarea[name=content]").val()=="" ) {
				   alert("예약 내용을 입력해 주십시요."); $("textarea[name=content]").focus(); return;
			  }**/

			  /**
			   * contents null checked [정규표현식 <P>, </P>, <BR>, &nbsp; 테그제거]
			   */
			  var content = ed.getHtml();
			  var temp = content;
			  temp = temp.replace(/<\/*p>|<br>/ig, ""); 
			  temp = temp.replace("&nbsp;", "");
			  if(temp == "") { alert("예약 내용을 입력해 주십시요."); ed.focus(); return; }

			  if($("input[name=mode]").val()=="write") { msg = "접수"; }else{ msg = "수정"; }
			  if(confirm("이대로 예약을 "+msg+"하시겠습니까?")) { 
				   document.thisForm.submit();
			  }else{
				   return;
			  }

		 }).css("cursor", "pointer");

	});

	//-------- 켈린터 예약일 선택 후 등록폼 페이지로 이동
    function goto_regist() {
		 document.thisForm.submit();
	}