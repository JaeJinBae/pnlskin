/**
 * ====================================
 * 고객의 소리 js
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
		 $("#sendit").click(function() {

			  /*if($("input[name=class]").val()=="") {
				   alert("지점을 선택해 주십시요."); $("input[name=class]").focus(); return;
			  }**/
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
			  if( $("textarea[name=content]").val()=="" ) {
				   alert("내용을 입력해 주십시요."); $("textarea[name=content]").focus(); return;
			  }
			  if($("input[name=mode]").val()=="write") { msg = "등록"; }else{ msg = "수정"; }
			  if(confirm("데이타를 "+msg+"하시겠습니까?")) { 
				   document.thisForm.submit();
			  }else{
				   return;
			  }

		 }).css("cursor", "pointer");

	//-------- search
		 $("#search").click(function() {
			  $("form[name=searchForm]").submit();
		 });
	
	});