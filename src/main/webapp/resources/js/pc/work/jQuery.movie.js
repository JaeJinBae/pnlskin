/**
 * ====================================
 * 홍보실게시판 - 동영상홍보관 js
 * ====================================
 */
    
    $(document).ready(function() {
	
		 $.extend({
			  //-------- save
			  sendit : function() {
				   /*jqxhr = $.ajax({
					    url: "process.php?gTime="+Math.floor(Math.random()*99999),
					    global: false,
					    type: "POST",
					    dataType: "html",
					    data: ( "name="+name+"&amp;title="+title+"&amp;content="+content ),
					    async: false,
					    success: function(msg){
						     $("#formID").append(msg);
					    }
				   }); **/
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
			  if($("input[name=name]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
			  }
			  if($("input[name=title]").val()=="") {
				   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
			  }			  
			  if($("input[name=movie_file]").val()=="") {
				   alert("동영상 파일명을 입력해 주십시요."); $("input[name=movie_file]").focus(); return;
			  }	
			  /*if($("textarea[name=content]").val()=="") {
				   alert("내용을 입력해 주십시요."); $("textarea[name=content]").focus(); return;
			  }**/
			  /**
			   * contents null checked [정규표현식 <P>, </P>, <BR>, &nbsp; 테그제거]
			   */
			  var content = ed.getHtml();
			  var temp = content;
			  temp = temp.replace(/<\/*p>|<br>/ig, ""); 
			  temp = temp.replace("&nbsp;", "");
			  if(temp == "") { alert("내용을 입력해 주십시요."); ed.focus(); return; }

			  if($("input[name=mode]").val()=="write") msg = "저장"; else msg = "수정";
			  if(confirm("데이타를 "+msg+"하시겠습니까?")) { 
                   document.thisForm.submit();				   
			  }
		 }).css("cursor", "pointer");

	});