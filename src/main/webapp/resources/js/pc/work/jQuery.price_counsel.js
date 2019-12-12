/**
 * ====================================
 * 비용상담 js
 * ====================================
 */
    
    $(document).ready(function() {
    
	//-------- submit
		 $.extend({
			  sendit : function() {
				   $("form[name=thisForm]").submit();
			  },
			  
			  //-------- remove(비밀글: 삭제 비밀번호 체크 레이어)
			  remove : function(delLayer, modLayer) {
				   $("#"+delLayer).css("display", "");
				   $("#del_pass").focus();
				   $("#"+modLayer).css("display", "none");
			  },

			  //-------- modify(비밀글: 수정 비밀번호 체크 레이어)
			  modify : function(delLayer, modLayer) {
			       $("#"+delLayer).css("display", "none");
				   $("#"+modLayer).css("display", "");
				   $("#mod_pass").focus();
			  },

			  //-------- 확인(비밀글: 수정, 삭제 비밀번호체크레이어 폼전송)
			  layer_send : function(formid) {
				   $("#"+formid).submit();
			  },

			  //-------- 취소
			  layer_hide : function(layername) {
				   $("#"+layername).css("display", "none");
			  }

		 });
    
	//-------- checkbox checked all
		 $(".checkAll").click(function() {
			  isall = $(".checkAll").attr("checked");
			  $(".removechk").each(function() {
				   if(isall==true) $(this).attr("checked","checked")
				   else $(this).attr("checked","");
			  });
		 }).css("cursor", "pointer");

	//-------- write
		 $("#btn_conf").click(function() {
              
		 	  if($('#consent').is(':checked') == false ){   
				   alert("개인정보 취급방침에 동의하셔야 합니다."); return;
		      }  
			  if($("input[name=name]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
			  }
			  /*if($("input[name=id]").val()=="") {
				   alert("아이디를 입력해 주십시요."); $("input[name=id]").focus(); return;
			  }**/
			  if( $("input[name=pwd]").val()=="" ) {
				   alert("비밀번호를 입력해 주십시요."); $("input[name=pwd]").focus(); return;
			  }
			  if( $("input[name=pwd1]").val()=="" ) {
				   alert("비밀번호확인을 입력해 주십시요."); $("input[name=pwd1]").focus(); return;
			  }
			  if( $("input[name=pwd]").val() != $("input[name=pwd1]").val() ) {
				   alert("비밀번호가 일치하지 않습니다."); return;
			  }

			  /*if( $("input[name='cellphone[]']:eq(0)").val()=="" || $("input[name='cellphone[]']:eq(1)").val()=="" || $("input[name='cellphone[]']:eq(2)").val()=="" ) {
				   alert("전화번호를 입력해 주십시요."); return;
			  }**/
			  if($("input[name=email]").val()=="" || $("input[name=email1]").val()=="") {
				   alert("이메일을 입력해 주십시요."); $("input[name=email]").focus(); return;
			  }else{
				   ismail = emailCheck($("input[name=email]").val(), $("input[name=email1]").val());
				   if(!ismail) {
					    alert("메일 주소가 올바르지 않습니다.\n다시 입력해 주십시요."); return;
				   }
			  }
			  if( $("input[name=title]").val()=="" ) {
				   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
			  }

			  var content = ed.getHtml();
			  var temp = content;
			  temp = temp.replace(/<\/*p>|<br>/ig, ""); 
			  temp = temp.replace("&nbsp;", "");
			  if(temp == "") { alert("내용을 입력해 주십시요."); ed.focus(); return; }

			  /**
			  * 답변내용 editor 처리
			  */
			  /*if($("input[name=mode]").val()=="modify") { $("textarea[name=answer]").val( ed1.getHtml() ); } **/

			  if($("input[name=captcha]").val()=="") {
				   alert("스펨 방지를 위하여 암호코드를 입력해 주십시요."); $("input[name=captcha]").focus(); return;
			  }

			  if($("input[name=mode]").val()=="write") { msg = "등록"; }else{ msg = "수정"; }
			  if(confirm("작성하신 비용문의 정보를 "+msg+"하시겠습니까?")) { 
				   document.thisForm.submit();
			  }else{
				   return;
			  }

		 }).css("cursor", "pointer");

    });