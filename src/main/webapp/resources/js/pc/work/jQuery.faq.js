/**
 * ====================================
 * FAQ js
 * ====================================
 */
    
    $(document).ready(function() {
    
	//-------- FAQ 레이어 펼치기
		 $.extend({
			  answer : function(idx) {
				   
				   //$(".answer").css("display", "none"); //전체 닫기
				   if($(".answer_"+idx).is(':visible')) { //레이어가 펼쳐져 있다면
				        $(".answer_"+idx).css("display", "none");
				   }else{ //레이어가 닫혀져 있다면
				        $(".answer_"+idx).css("display", "");
				   }
				   //$(".answer_"+idx).css("display", "");

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
	
	});