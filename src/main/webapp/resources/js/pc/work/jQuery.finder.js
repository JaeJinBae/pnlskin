/**
 * ====================================
 * 아이디 비밀번호 찾기 js
 * ====================================
 */
    $(document).ready(function() {
         
		 /**
		  * Loading.... start, end
		  */
		 DIV_CLASS_ID = '';
		 $(window).ajaxStart(function() {//start loading
              alert("start");
			  $.ajaxLoading("show"); 
		 });
		 $(window).ajaxStop(function() {//stop loading
              alert("end");
			  $.ajaxLoading("hide");
		 });
		 $.extend({//loading 제어
		 	  ajaxLoading : function(fg) { 
		 		   if(fg=="show") {
					    var loading = $('<img alt="loading.." src="/bbs/images/ajax-loader.gif" border="0" />').appendTo( $(DIV_CLASS_ID) ).hide();
		 		        loading.show();
		 		   }else if(fg=="hide") {
		 		        loading.hide();
		 		   }
		 	  }
		 });
         
	     //-------- ajax send
		 $.extend({
			  go_find : function(classID, name, hp1, hp2, hp3, email1, email2, id) {
				   DIV_CLASS_ID = classID;
				   //$.ajaxLoading('show', '#'+classID); //start ajaxLoading
				   jqxhr = $.ajax({
					    url: "/bbs/members/proc.php?mode="+classID+"&name="+name+"&id="+id+"&hp1="+hp1+"&hp2="+hp2+"&hp3="+hp3+"&email1="+email1+"&email2="+email2+"&gTime="+Math.floor(Math.random()*99999),
					    global: true,
					    type: "POST",
					    dataType: "html",
					    data: ( "mode="+classID+"&name="+name+"&id="+id+"&hp1="+hp1+"&hp2="+hp2+"&hp3="+hp3+"&email1="+email1+"&email2="+email2 ),
					    async: true, //비동기
					    success: function(msg) {
							 //$.ajaxLoading('hide', '#'+classID); //end ajaxLoading
							 //alert(msg);
						     $("#"+classID).html(msg);
					    }
				   });
			  }
		 });

	     //-------- 아이디 찾기
		 $("#btn_find_id").click(function() {

			  if($("input[name=name_id]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name_id]").focus(); return;
			  }
			  if(
				   ( $("input[name='cellphone_id[]']:eq(0)").val()=="" || $("input[name='cellphone_id[]']:eq(1)").val()=="" || $("input[name='cellphone_id[]']:eq(2)").val()=="" ) ) {
				   
				   alert("핸드폰을 정확히 입력해 주십시요."); return;
			  }
			  if($("input[name=email1_id]").val()=="" || $("input[name=email1_id]").val()=="") {
				   alert("이메일을 입력해 주십시요."); $("input[name=email1_id]").focus(); return;
			  }
			  $.go_find(
			        "find_id", 
				    $("input[name=name_id]").val(),
				    $("input[name='cellphone_id[]']:eq(0)").val(),
				    $("input[name='cellphone_id[]']:eq(1)").val(),
				    $("input[name='cellphone_id[]']:eq(2)").val(),
				    $("input[name=email1_id]").val(),
				    $("input[name=email2_id]").val()
			  );
         });

	     //-------- 비밀번호 찾기

		 $("#btn_find_pwd").click(function() {

			  if($("input[name=name_pw]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name_pw]").focus(); return;
			  }
			  if($("input[name=id_pw]").val()=="") {
				   alert("아이디를 입력해 주십시요."); $("input[name=id_pw]").focus(); return;
			  }
			  if(
				   ( $("input[name='cellphone_pw[]']:eq(0)").val()=="" || $("input[name='cellphone_pw[]']:eq(1)").val()=="" || $("input[name='cellphone_pw[]']:eq(2)").val()=="" ) ) {
				   
				   alert("핸드폰을 정확히 입력해 주십시요."); return;
			  }

			  $.go_find(
			        "find_pwd", 
				    $("input[name=name_pw]").val(),
				    $("input[name='cellphone_pw[]']:eq(0)").val(),
				    $("input[name='cellphone_pw[]']:eq(1)").val(),
				    $("input[name='cellphone_pw[]']:eq(2)").val(),
					"",
					"",
				    $("input[name=id_pw]").val()
			  );
         });

		 $("#btnSendSms").click(function (){
			if($("input[name=name_pw]").val()=="") {
				   alert("이름을 입력해 주십시요."); $("input[name=name_pw]").focus(); return;
			  }
			if($("input[name=id_pw]").val()=="") {
				   alert("아이디를 입력해 주십시요."); $("input[name=id_pw]").focus(); return;
			  }
			if(
				( $("input[name='cellphone_pw[]']:eq(0)").val()=="" || $("input[name='cellphone_pw[]']:eq(1)").val()=="" || $("input[name='cellphone_pw[]']:eq(2)").val()=="" ) ) {
				
				alert("핸드폰을 정확히 입력해 주십시요.");
			}else{

				jqxhr = $.ajax({
					url: "/bbs/members/auth_sms.php?id="+$("input[name=id_pw]").val()+"&name="+$("input[name=name_pw]").val()+"&hp1="+$("input[name='cellphone_pw[]']:eq(0)").val()+"&hp2="+$("input[name='cellphone_pw[]']:eq(1)").val()+"&hp3="+$("input[name='cellphone_pw[]']:eq(2)").val()+"&gTime="+Math.floor(Math.random()*99999),
					global: true,
					type: "POST",
					dataType: "html",
					data: ( "id="+$("input[name=id_pw]").val()+"&name="+$("input[name=name_pw]").val()+"&hp1="+$("input[name='cellphone_pw[]']:eq(0)").val()+"&hp2="+$("input[name='cellphone_pw[]']:eq(1)").val()+"&hp3="+$("input[name='cellphone_pw[]']:eq(2)").val() ),
					async: true, //비동기
					success: function(result) {
						eval(result);
						if(ret['result']==2){

							$("#find_pwd")
							.css("margin", "0px auto")
							.css("text-align", "center")
							.css("background-color", "#FFE7E6")
							.css("padding", "10px 0px 4px 0px")
							.text("인증번호를 발송하였습니다")
							.animate({ height: 20, width: 500 }, "slow");

							$("#auth_num2").val(ret['auth_num']);
							$("#btnSendSms").hide();

						}else if(ret['result']==1){

							$("#find_pwd")
							.css("margin", "0px auto")
							.css("text-align", "center")
							.css("background-color", "#FFE7E6")
							.css("padding", "10px 0px 4px 0px")
							.text("발송에 실패하였습니다. 관리자에게 문의해 주세요.")
							.animate({ height: 20, width: 500 }, "slow");
						}else if(ret['result']==0){

							$("#find_pwd")
							.css("margin", "0px auto")
							.css("text-align", "center")
							.css("background-color", "#FFE7E6")
							.css("padding", "10px 0px 4px 0px")
							.text("회원정보를 찾을 수가 없습니다.")
							.animate({ height: 20, width: 500 }, "slow");
						}
					}
				});
			}
		 });

		 $("#btnSmsAuth").click(function (){
			if($("#auth_num").val() == ""){
				alert("인증번호를 입력해 주세요");
			}else if($("#auth_num").val() != $("#auth_num2").val()){
				alert("인증번호가 맞지 않습니다. 다시 입력해 주세요.");
				$("#auth_num").val('');
			}else{
				$("#btnSmsAuth").hide();
				$("#confirmBtn").show();
				$("#is_auth").val('y');
			}
		 });

	});