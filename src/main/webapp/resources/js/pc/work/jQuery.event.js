/**
 * ====================================
 * 이벤트 js
 * ====================================
 */
    
    $(document).ready(function() {
	
		 $.extend({
			  //-------- save
			  sendit : function() {
				   $("form[name=thisForm]").submit();
			  },
			  
			  //-------- modify
			  modify : function(lcd, mcd, scd, arguments, idx) {
				   location.href="/?"+arguments+"&scd="+scd+"&idx="+idx;
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
		  
			  /* 공지사항 체크여부 **/
			  if( $("input:radio[name=is_notice]:checked").val() == "n" ) {
                   isnotice = "n";
			  }else{
				   isnotice = "y";
			  }
			  
			  if($("input[name=name]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
			  }
			  if($("input[name=title]").val()=="") {
				   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
			  }		  
			  /*if( $("textarea[name=content]").val()=="" ) {
				   alert("내용을 입력해 주십시요."); $("textarea[name=content]").focus(); return;
			  }**/

			  /**
			   * contents null checked [정규표현식 <P>, </P>, <BR>, &nbsp; 테그제거]
			   */
			  var temp = ed.getHtml();
			  temp = temp.replace(/<\/*p>|<br>/ig, ""); 
			  temp = temp.replace("&nbsp;", "");
			  if(temp == "") { alert("내용을 입력해 주십시요."); ed.focus(); return; }
			  
			  /* 공지사항글이 아니면 업로드 필수 **/
			  if(isnotice=="n") {
				  if($("input:file:eq(0)").is(":visible") == true) {
					  if( $("input:file:eq(0)").val()=="" ) {
						   alert("이벤트 이미지를 선택해 주십시요."); $("input:file:eq(0)").focus(); return;
					  }
				  }
			  }

			  if($("input[name=mode]").val()=="write") msg = "저장"; else msg = "수정";
			  if(confirm("데이타를 "+msg+"하시겠습니까?")) { 
                   document.thisForm.submit();				   
			  }
		 }).css("cursor", "pointer");
	

	});