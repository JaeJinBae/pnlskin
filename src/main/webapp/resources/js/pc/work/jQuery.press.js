/**
 * ====================================
 * 보도자료 js
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
			  
			  /**
			   * 일반형 게시판이면
			   */
			  if( $(":input:radio[name=press_type]:checked").val() == "n" ){
				  if($("input[name=name]").val()=="") {
					   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
				  }
				  if($("input[name=title]").val()=="") {
					   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
				  }			  
				  /*if($("textarea[name=content]").val()=="") {
					   alert("내용을 입력해 주십시요."); $("textarea[name=content]").focus(); return;
				  }**/

				  var content = ed.getHtml();
				  var temp = content;
				  /*temp = temp.replace("<P>", "");
				  temp = temp.replace("</P>", "");
				  temp = temp.replace("<BR>", "");
				  temp = temp.replace("&nbsp;", "");
				  temp = temp.replace("<P>&nbsp;</P>", ""); **/
				  
				  /**
				   * contents null checked [정규표현식 <P>, </P>, <BR>, &nbsp; 테그제거]
				   */
				  temp = temp.replace(/<\/*p>|<br>/ig, ""); 
				  temp = temp.replace("&nbsp;", "");
				  if(temp == "") { alert("내용을 입력해 주십시요."); ed.focus(); return; }
                  
			  /**
			   * url형 게시판이면
			   */
			  }else{
				  if($("input[name=name]").val()=="") {
					   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
				  }
				  if($("input[name=title]").val()=="") {
					   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
				  }
				  if($("input[name=media_url]").val()=="") {
					   alert("URL을 입력해 주십시요."); $("input[name=media_url]").focus(); return;
				  }	
			  }
			  
			  if($("input[name=mode]").val()=="write") msg = "저장"; else msg = "수정";
			  if(confirm("데이타를 "+msg+"하시겠습니까?")) { 
                   document.thisForm.submit();				   
			  }
		 }).css("cursor", "pointer");
	
	//-------- 보도자료 게시판 타입 설정
		 if($("input[name=press_type]").val()=="y"){
		     $(".togle_normal").css("display", "none");
			 $(".togle_press").css("display", "");
		 }else{
		     $(".togle_normal").css("display", "");
			 $(".togle_press").css("display", "none");
		 }

		 $("input[name=press_type]").click(function() {
		       if( $(":input:radio[name=press_type]:checked").val() == "y" ){
			         $(".togle_press").css("display", "");
					 $(".togle_normal").css("display", "none");
			   }else{
			         $(".togle_press").css("display", "none");
					 $(".togle_normal").css("display", "");
			   }
		 });

	});