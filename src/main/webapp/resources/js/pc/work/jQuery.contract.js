/**
 * ====================================
 * 회원가입 약관동의 js
 * ====================================
 */
    $(document).ready(function() {
	
		 $.extend({
			   joincheck : function() {
					if( $("#agree_y:checked").val() == "Y" ) {   
						 $("#thisForm").submit();  
					}else{
						 alert("이용약관 및 개인정보 취급방침에 동의 하셔야 합니다."); return;
					}
			   }
		 });

		 $("#join_conf").click(function() {
			  $.joincheck();
		 }).css('cursor', 'pointer');

		 $("#join_cancel").click(function() {
			  history.go(-1);
		 }).css('cursor', 'pointer');
	});