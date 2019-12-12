/**
 * ====================================
 * 시술전후사진 js
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
			  if($("input[name=name]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
			  }
			  if($("input[name=title]").val()=="") {
				   alert("제목을 입력해 주십시요."); $("input[name=title]").focus(); return;
			  }

			  if($("input:file:eq(0)").is(":visible") == true) {
				   if( $("input:file:eq(0)").val()=="" ) {
				       alert("시술전 사진을 선택해 주십시요."); $("input:file:eq(0)").focus(); return;
			       }
			  }
			  if($("input:file:eq(1)").is(":visible") == true) {
				   if( $("input:file:eq(1)").val()=="" ) {
					   alert("시술후 사진을 선택해 주십시요."); $("input:file:eq(1)").focus(); return;
				   }
			  }
			  
			  $("textarea[name=before_content]").val( ed.getHtml() ); /* 에디터 상세글 **/
			  $("textarea[name=after_content]").val( ed1.getHtml() ); /* 에디터 상세글 **/

			  if($("input[name=mode]").val()=="write") msg = "저장"; else msg = "수정";
			  if(confirm("데이타를 "+msg+"하시겠습니까?")) { 
                   document.thisForm.submit();				   
			  }
		 }).css("cursor", "pointer");
	

	});