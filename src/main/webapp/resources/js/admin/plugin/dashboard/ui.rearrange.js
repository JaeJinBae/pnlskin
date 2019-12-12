/*
사용은 자유롭게 하실수 있구요, 다만 아래의 출처만 밝혀주세요 ~~

출처 : http://drst3in.potatoweb.net

또한, GPL 라이센스를 사용하였으므로, 소스 수정시 다함께 공유 했으면 좋겠습니다~~
*/

//페이지 로딩시 쿠키값을 추출해서 화면 재배열
Rearrange = function(){
	for(var i = 1; i < 4; i++){
		var ColumnName = "column" + i; //컬럼명
		var ColumnVal = $.cookie("column"+i); //컬럼에 속해있던 레이어의 ID명들
		var RePosition = $.cookie("RePosition");
		var SubID = new Array();
		var InsLayer = "";
		var CurrentID = "";

		if(RePosition == "yes" && ColumnVal){
			/*$("#debug").append(ColumnName + " : " + ColumnVal + "<br>"); **/
			$("#range > div").each(function(){
				CurrentID = $(this).attr("id");
				if(CurrentID == ColumnName){
					SubID = ColumnVal.split("|");
					for(var i in SubID ){
							InsLayer = $("#"+SubID[i]).html();
//							alert(InsLayer);
							$("#"+SubID[i]).remove();
							$("#"+ColumnName).append('<div  id="' + SubID[i] + '" class="portlet">' + InsLayer + '</div>');						
					}
				}//end if
			});
		}//end if
	}//end for
}