/**
 * ====================================
 * 로그인 js
 * ====================================
 */
    $(document).ready(function() {
    
	$("#login_id").focus();
	
	//-------- login
		 $.extend({
			   logincheck : function() {
					if($("input[name=id]").val()=="") {
						alert("아이디를 입력해 주십시요."); $("input[name=id]").focus(); return;
				    }
				    if($("input[name=pwd]").val()=="") {
						alert("비밀번호를 입력해 주십시요."); $("input[name=pwd]").focus(); return;
				    }
				    $("#thisForm").submit();
			   }
		 });

		 $("#btn_login").click(function() {
			  $.logincheck();
		 });
         
		 $("#login_id, #login_pwd").bind('keydown', function(fn) {
		      if(fn.keyCode==13){
				   $.logincheck();
			  }
		 });
	});