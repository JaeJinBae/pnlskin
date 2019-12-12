/**
 * ====================================
 * @ 회원가입 js
 * ====================================
 */
    $(document).ready(function() {
         
		 //-------- 이용약관에 동의했는지 검사
		 if($("input[name=mode]").val()=="write" && $("input[name=agree]").val()!="Y") {
			  alert("회원가입을 하시려면 이용약관에 동의 하셔야 합니다."); 
			  history.go(-1); 
			  return;
		 }

		 $.extend({
			  //-------- save
			  sendit : function() {
				   $("form[name=thisForm]").submit();
			  },
			  
			  //-------- modify
			  modify : function(lcd, mcd, scd, arguments, idx) {
				   location.href="/?"+arguments+"&scd="+scd+"&idx="+idx;
			  }
		 });

	     //-------- 회원가입
		 $("#join_send").click(function() {

			  /**
			   * 신규 등록
			   */
			  if($("input[name=mode]").val()=="write") {
				  if($("input[name=name]").val()=="") {
					   alert("이름을 입력해 주십시요."); $("input[name=name]").focus(); return;
				  }
				  if($("input[name=id]").val()=="") {
					   alert("아이디를 입력해 주십시요."); $("input[name=id]").focus(); return;
				  }
			  }
			  if( $("input[name=pwd]").val()=="" ) {
				   alert("비밀번호를 입력해 주십시요."); $("input[name=pwd]").focus(); return;
			  }
			  if( $("input[name=pwd1]").val()=="" ) {
				   alert("비밀번호확인을 입력해 주십시요."); $("input[name=pwd1]").focus(); return;
			  }
			  if( $("input[name=pwd]").val() != $("input[name=pwd1]").val() ) {
				   alert("비밀번호가 일치하지 않습니다."); return;
			  }

			  if(
				   ( $("input[name='tel[]']:eq(0)").val()=="" || $("input[name='tel[]']:eq(1)").val()=="" || $("input[name='tel[]']:eq(2)").val()=="" ) 
				   &&
				   ( $("input[name='cellphone[]']:eq(0)").val()=="" || $("input[name='cellphone[]']:eq(1)").val()=="" || $("input[name='cellphone[]']:eq(2)").val()=="" ) ) {
				   
				   alert("전화번호 혹은 이동전화번호를 입력해 주십시요."); return;
			  }
			  /**
			   * 신규 등록
			   */

			  if($("input[name=email]").val()=="" || $("input[name=email1]").val()=="") {
				   alert("이메일을 입력해 주십시요."); $("input[name=email]").focus(); return;
			  }else{
				   ismail = emailCheck($("input[name=email]").val(), $("input[name=email1]").val());
				   if(!ismail) {
					    alert("메일 주소가 올바르지 않습니다.\n다시 입력해 주십시요."); return;
				   }
			  }
			  if($("input[name=zipcode]").val()=="" || $("input[name=addr]").val()=="" ) {
				   alert("우편번호검색을 이용하여 우편번호, 주소를 입력해 주십시요."); $("input[name=zipcode]").focus(); return;
			  }
			  if($("input[name=addr1]").val()=="") {
				   alert("상세주소를 입력해 주십시요."); $("input[name=addr1]").focus(); return;
			  }
			  if($("input[name=reg_date]").val()=="") {
				   alert("등록일을 입력해 주십시요."); $("input[name=reg_date]").focus(); return;
			  }

			  if($("input[name=mode]").val()=="write") {
				  if($("input[name=id_chk_flag]").val()=="") {
					   alert("아이디중복체크를 클릭 후 중복 유무를 체크 하세요."); return;
				  }
				  msg = "입력하신 회원정보로 가입 하시겠습니까?"; 
			  }else{
				  msg = "회원정보를 수정 하시겠습니까?";
			  }
			  			  
			  if(confirm(msg)) { 
				   document.thisForm.submit();
			  }else{
				   return;
			  }

		 });


	//-------- 가입 취소
		 $("#join_cancel").click(function() {
			  if(confirm("회원가입을 중단하고 이전페이지로 돌아가시겠습니까? \n\n입력하신 정보가 손실됩니다.")) {
				   history.go(-1);
			  }
		 });
	});


	//-------- 아이디 중복체크 팝업레이어
	function id_overlap(layernm, formnm, fieldnm, tbl, id_fg, id_value) {
		 /* if($("input[name=id]").val()=="") {
			  alert("아이디를 입력해 주십시요."); return;
		 }else{
			  staffid = $("input[name=id]").val();
			  common_iframe.location.href="/_admin/work/members/proc.php?mode=id_exists&staffid="+staffid+"&mcd=staff";
		 }**/

		 /* start idoverlab Layer **/
		 htm = '<div class="'+layernm+'" style="width:232px; height:250px; display:none; position:absolute; ';
		 htm+= 'border-right:#CCCCCC 1px solid; border-top:#CCCCCC 1px solid; border-left:#CCCCCC 1px solid; border-bottom:#CCCCCC 1px solid;background-color:#ffffff;" >';
		 htm+= '<div class="drag01" style="width:100%; height:19px; background:#D1D1D1; cursor:move; color:#ffffff; padding:0 0 5 0;">';
		 htm+= '<span style="float:left; font-weight:bold; color:#ffffff;">&nbsp;아이디 중복체크</span><span style="float:right;"><a href="javascript:close_idoverlap(\''+layernm+'\')" style="color:white; font-weight:bold;">닫기</a>&nbsp;</span>';
		 htm+= '</div> ';
		 htm+= '<iframe style="width:100%; height:99%;" frameborder="0" src="/_admin/lib/class.idoverlap.php?formname='+formnm+'&fieldname='+fieldnm+'&tbl='+tbl+'&layername='+layernm+'&keyword='+id_value+'&id_fg='+id_fg+'"></iframe>';
		 htm+= '</div>';

		 $("#"+layernm+" ."+layernm+":last").remove();
		 $("#"+layernm+"").append(htm);
		 $("."+layernm+"").show();

		 $(function() {
			   var options = {};
			   /*options.helper = "clone"; **/
			   options.opacity = 0.5;
			   $("."+layernm+"").draggable(options);
		 });
		 /* end id overlab Layer **/
	}
	
	//-------- 아이디 중복체크 닫기
    function close_idoverlap(layernm) {
	     $("."+layernm).hide();
	}

	//-------- 수정모드일때 비밀번호 수정시 활성화
 	function onEnabled() {
		if ($('#mod_pass').is(':checked') == true ) {
			 $("input[name=pwd]").attr("disabled", false);
			 $("input[name=pwd]").css("background", "white");
			 $("input[name=pwd1]").attr("disabled", false);
			 $("input[name=pwd1]").css("background", "white");
		}else{
			 $("input[name=pwd]").attr("disabled", true);
			 $("input[name=pwd]").css("background", "EFEFEF");
			 $("input[name=pwd1]").attr("disabled", true);
			 $("input[name=pwd1]").css("background", "EFEFEF");
		}
	}
    
	//-------- autoNextFocus
	function autoTabFocus(thisnm, len) {
		 if(thisnm.value.length == len) {
			 var keyCode = event.which;
			 var $this = $(this);
			 var currentLength = $this.val().length;
			 var maximumLength = len; //$this.attr('maxlength');
			 $(this).next().focus();
	     }
	}