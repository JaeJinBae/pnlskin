/**
 * ====================================
 * @file jQuery common Lib
 * @author Bizmedia
 * ====================================
 */
 
 $(document.body).ajaxStart(function() { 
      alert("..");
 });
 
 $("document").ready(function() {
    
	/**
	// autoTab
	$('#autotab').submit(function() { return false; });
	$('#autotab :input').autotab_magic();
	
	// only number
	$('#sernum, #sernum1, #sernum2').autotab_filter('numeric');
	$('#tel[], #cellphone[], #phone[], #tel, #cellphone, #phone, #age, .number').autotab_filter('numeric');
	$('#tel1, #tel2, #tel3, #phone1, #phone2, #phone3').autotab_filter('numeric');
	$('#cellphone1, #cellphone2, #cellphone3, #mobile1, #mobile2, #mobile3').autotab_filter('numeric');
	$('#sernum, #sernum1, #sernum2').autotab_filter('numeric');
	$('#zipcode1, #zipcode2').autotab_filter('numeric');
	$('#ssn1, #ssn2, #ssn3').autotab_filter('numeric');
	$('#num1, #num2, #num3, #num4, #num5, #num6, #num7, #num8, #num9, #num10').autotab_filter('numeric');
	
	// only text
	$('#text1, #text2, #text3').autotab_filter('text');
	
	// Alpha
	$('#alpha1, #alpha2, #alpha3, #alpha4, #alpha5').autotab_filter('alpha');
	
	// Alphanumeric
	$('#alphanumeric1, #alphanumeric2, #alphanumeric3, #alphanumeric4, #alphanumeric5').autotab_filter({ format: 'alphanumeric', uppercase: true });
	$('#regex').autotab_filter({ format: 'custom', pattern: '[^0-9\.]' });
    **/

   /**
	* @ jss Layer popup
	* 
	* @ params
	* @ based_div string [레이어가 열릴 기준 div]
	* @ layer_id string [레이어 아이디]
	* @ url string [레이어 내용 iframe url]
	* @ width int [가로 사이즈]
	* @ height int [세로 사이즈]
	* @ border_color string [보더 컬러]
	* @ framename string [iframe 이름]
	* @ arguments string [iframe 아규먼트]
	* @ title string [레이어 타이틀]
	* @ example $.jssLayer('Lbased01', 'calendar01', 'http://url', 300, 250, '#D9D9D9', 'ifrm_cal', 'arguments', '타이틀')
    */
    $.jssLayer = function(based_div, layer_id, url, width, height, border_color, frame_name, arguments, title) {
		  var w = (width) ? width : 300;
		  var h = (height) ? height : 250;
		  var arg = (arguments) ? arguments+"&layer_id="+layer_id+"&based_div="+based_div+"&based_div="+based_div+"&width="+w+"&height="+h : "";
		  var iframe = (url) ? '<iframe id="'+frame_name+'" src="'+url+'?'+arg+'" style="width:'+w+'px; height:'+h+'px; margin:0 0 0 0;" frameborder="0"></iframe>' : "";
		  var position = $("#"+based_div).position();

		  // Layer contents
		  layerTag  = '<!--wrap--><div class="'+layer_id+'" style="width:'+w+'px; display:none; position:absolute; border:'+border_color+' 3px solid; background-color:#fff;">'
		  layerTag += '<!--title--><div style="width:100%; height:25px; background-color:#F6F6F6; border-bottom:#D9D9D9 1px solid; cursor:move;">'
		  layerTag += '<!--title--><ul><li style="float:left; padding:7px 0 0 5px; height:20px;">'+title+'</li><li style="float:right; padding:7px 5px 0 0; height:20px;"><span style="cursor:pointer;" onclick="javascript:$.jssLayer_close(\''+layer_id+'\', \''+based_div+'\')">close</span></li><ul></div>'
		  layerTag += '<!--content--><div style="clear:both;"></div><div style="width:100%;  background-color:#fff;">'
		  layerTag += '<!--content-->'+iframe+'</div>'
		  /*layerTag += '<!--content--><div id="layerAjax"></div></div>' **/
		  layerTag += '<!--wrap--></div>'

		  // modal show
		  // $.jssModal_start();

		  // Layer show
		  $("#"+based_div).html('').append(layerTag);
		  $("."+layer_id).css('left', position.left).css('top', position.top).css('z-index', 1999);
		  $("."+layer_id).show();
		  $("."+layer_id).draggable();

		  // Ajax start
		  /*$.jssLayer_Ajax('layerAjax', url, arg, layer_id, w, h); **/
	};

   /**
	* @ jss Layer popup close
	* @ params : layer_id string, based_div string
	*/
    $.jssLayer_close = function(layer_id, based_div) {
		  $.jssModal_end();
		  $("#"+based_div).empty(); // $("#"+based_div).html(''); // $("."+layer_id).hide();
	};

   /**
	* @ jss Layer Ajax
	*/
    $.jssLayer_Ajax = function(ajax_div, _url, arg, layer_id, w, h) {
		  result = $.ajax({
			  url: _url+"?gTime="+Math.floor(Math.random()*99999),
			  global: true,
			  type: "POST",
			  dataType: "html",
			  data: (arg),
			  async: true,
			  success: function(result) {
				   $("#"+ajax_div).html('').append(result);
			  }
		 });
		 /**
		 * @ Ajax Loading...
		 */
		 $("#"+ajax_div).ajaxStart(function(){ $(this).html("<img src='/img/loading/ajax-loader.gif' />"); });
		 $("#"+ajax_div).ajaxStop(function(){ });
	};

   /**
	* @ jss Layer modal start
	*/
    $.jssModal_start = function() {
          $("body").append('<div id="modal-darkbg" style="position:absolute; top:0; left:0; width:100%; height:100%; background:#F5F5F5; opacity:.5; filter:alpha(opacity=50);"></div>');   
          $("#modal-darkbg").css('width', $(window).width()).css('height', $(document).height()).css('z-index', 1000);  
          $("#modal-darkbg").show();
	};

   /**
	* @ jss Layer modal end
	*/
    $.jssModal_end = function() {
	      $("#modal-darkbg").remove();
	};

	$.extend({
	     /* direct **/
		 gotopage : function(sb, bbs, pg, arguments) { 
			  location.href="?sb="+sb+"&bbs="+bbs+"&pg="+pg+"&"+arguments
		 },

	     /* start Calendar Layer **/
		 //켈린더 열기
		 open_calendar : function(layernm, formnm, fieldnm) {
			  htm = '<div class="'+layernm+'" style="width:232px; height:250px; display:none; position:absolute; ';
			  htm+= 'border-right:#CCCCCC 1px solid; border-top:#CCCCCC 1px solid; border-left:#CCCCCC 1px solid; border-bottom:#CCCCCC 1px solid;" >';
			  htm+= '<div class="drag01" style="width:100%; height:19px; background:#D1D1D1; cursor:move; color:#ffffff; padding:0 0 5 0;">&nbsp;';
			  htm+= '<span style="float:left; font-weight:bold; color:#ffffff;">&nbsp;켈린더</span><span style="float:right;"><a href="javascript:$.close_calendar(\''+layernm+'\')" style="color:white; font-weight:bold;">닫기</a>&nbsp;</span>';
			  htm+= '</div> ';
			  htm+= '<iframe style="width:100%; height:90%;" frameborder="0" src="/_admin/lib/class.calendar.php?parent_form_name='+formnm+'&parent_field_name='+fieldnm+'&parent_layer_name='+layernm+'"></iframe>';
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
		 },
		 
		 //켈린더 닫기
		 close_calendar : function(layernm) {
		      $("."+layernm).hide();
		 }
	});
	/* end Calendar Layer **/

	/* start zipcode Layer **/
	$.extend({
		 //우편번호 열기
		 zipsearch : function(formnm, zipnm, addr1, addr2) {
			  htm = '<div class="zip" style="width:450px; height:345px; display:none; position:absolute; ';
			  htm+= 'border-right:#CCCCCC 1px solid; border-top:#CCCCCC 1px solid; border-left:#CCCCCC 1px solid; border-bottom:#CCCCCC 1px solid; background-color:#ffffff;" >';
			  htm+= '<div class="drag01" style="width:100%; height:19px; background:#D1D1D1; cursor:move; color:#ffffff; padding:5px 0 0 0;">';
			  htm+= '<span style="float:left; font-weight:bold; color:#ffffff;">&nbsp;우편번호찾기</span><span style="float:right;"><a href="javascript:$.zipclose()" style="color:white; font-weight:bold;">닫기</a>&nbsp;</span>';
			  htm+= '</div> ';
			  htm+= '<iframe style="width:100%; height:99%;" frameborder="0" src="/_admin/lib/class.zipcode.php?f_obj='+formnm+'&f_zip='+zipnm+'&f_addr1='+addr1+'&f_addr2='+addr2+'"></iframe>';
			  htm+= '</div>';

			  $("#zipLayer .zip:last").remove();
			  $("#zipLayer").append(htm);
			  $(".zip").show();

			  $(function() {
				   var options = {};
				   /*options.helper = "clone"; **/
				   //options.opacity = 0.5;
				   $(".zip").draggable(options);
			  });

		 },
		 
		 //우편번호 닫기
		 zipclose : function() {
			  $(".zip").hide();
		 }
	});
	/* end zipcode Layer **/
    
	/* start 순서설정 **/
	$.extend({
		 autoSave : function(idx, mode, val) {
			 jqxhr = $.ajax({
				   url: "/_admin/inc/inc.orderset.php?gTime="+Math.floor(Math.random()*99999)+"&mode="+mode+"&idx="+idx+"&val="+val,
				   global: false,
				   type: "POST",
				   dataType: "html",
				   data: ( "" ),
				   async: false,
				   success: function(msg) {
						//$("#id").append(msg);
				   }
			 });
		 }
	});
	/* end 순서설정 **/
	
	/* start member search Layer **/
	$.extend({
		 open_userSearch : function(layernm, table, formnm, fieldnm, fieldnm01) {//회원검색창 열기
		      keyword = $("input[name=target_id]").val();
			  htm = '<div class="'+layernm+'" style="width:350px; height:250px; display:none; position:absolute; ';
			  htm+= 'border-right:#CCCCCC 1px solid; border-top:#CCCCCC 1px solid; border-left:#CCCCCC 1px solid; border-bottom:#CCCCCC 1px solid;" >';
			  htm+= '<div class="drag01" style="width:100%; height:19px; background:#D1D1D1; cursor:move; color:#ffffff; padding:5px 0 0 0;">&nbsp;';
			  htm+= '<span style="float:left; font-weight:bold; color:#ffffff;">&nbsp;회원검색</span><span style="float:right;"><a href="javascript:$.close_calendar(\''+layernm+'\')" style="color:white; font-weight:bold;">닫기</a>&nbsp;</span>';
			  htm+= '</div> ';
			  htm+= '<iframe style="width:350px; height:220px;" frameborder="0" src="/_admin/lib/class.usersearch.php?table='+table+'&formname='+formnm+'&fieldname='+fieldnm+'&fieldname01='+fieldnm01+'&layername='+layernm+'&keyword='+keyword+'"></iframe>';
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
		 },
		 close_userSearch : function(layernm) {//회원검색창 닫기
		      $("."+layernm).hide();
		 }
	});
	/* end User search Layer **/

	/* 게시판 리스트 검색 **/
	$("#btn_search").click(function() {
		  $("form[name=searchForm]").submit();
	}).css("cursor", "pointer");

	/* dataList Hover **/
	$(".data_list_body").hover(
	     function(){ $(this).css('background', '#F3F3F3'); /*$(this).addClass(".hover01");**/ },
	     function(){ $(this).css('background', '#fff'); /*$(this).removeClass("hover01");**/ }
	).click(
	     function(){ $(this).css('background', ''); }
	);

	/* dataList Hover notice **/
	$(".data_list_body_notice").hover(
	     function(){ $(this).css('background', '#F3F3F3'); /*$(this).addClass(".hover01");**/ },
	     function(){ $(this).css('background', '#F3F3F3'); /*$(this).removeClass("hover01");**/ }
	).click(
	     function(){ $(this).css('background', ''); }
	);

	/* paging MouseOver **/
	$(".paging").hover(
	     function() {
		     $(this).css('background', '#ffffff');
			 $(this).css('border', '1px solid');
	     },
	     function() { 
			 $(this).css('background', '#ffffff');
			 $(this).css('border', 'none');
		 }
	).click(
	     function(){ $(this).css('background', ''); }
	);

    /* input maskedinput **/
	jQuery(function($) {
		 $("#date").mask("99/99/9999");   
		 $("#phone").mask("(999) 999-9999");
		 $("#tin").mask("99-9999999");
		 $("#ssn").mask("999-99-9999");
	});
	jQuery(function($){ $("#product1").mask("99/99/9999",{placeholder:" "});});
	jQuery(function($){ $("#product2").mask("99/99/9999",{completed:function(){alert("You typed the following: "+this.val());}});});
	jQuery(function($){ $.mask.definitions['~']='[+-]';   
		 $("#eyescript3").mask("~9.99 ~9.99 999");
	});
	jQuery(function($){ $("#phone4").mask("(999) 999-9999? x99999"); });
	jQuery(function($){ $("#cellphone").mask("999-9999-9999"); });
	jQuery(function($){ $("#phone").mask("99-9999-9999"); });

    /* 이메일폼필드 입력 [name=email] @ [name=email1] [select]**/
	$("select[name=email_selecter]").change(function(index, val) {
	     if($(this).val()!="") {
			  $("input[name=email1]").attr("value", $(this).val() );
		 }else{
			  $("input[name=email1]").attr("value", "" );
			  $("input[name=email1]").focus();
		 }
	});
	$("input[name=email1]").blur(function() {
		 
		 $("select[name=email_selecter] > option").each(function(){
		      if( ($(this).val() == $("input[name=email1]").val()) && $("input[name=email1]").val()!="" ){
			       $(this).attr("selected", "selected");
			  }else{
				   /* **/
			  }
		 });
	});
	
	/* 파일필드 추가, 제거 **/
	$("#btn_addupload").click(function() {
		 $(".filegrp").append('<input type="file" name="file[]" style="width:500px;" />');
	}).css("cursor", "pointer");

	/* 셀렉트박스 전체선텍, 해제 **/
	/*$.extend({
		 checkboxCheckAll :function(obj) {
			  var checked = $("#checkAll").attr("checked");
			  $(obj).each(function() {
				   alert("..");
			       //var subChecked = $(this).attr("checked");
				   //if (subChecked != checked)
			       //$(this).click();
			  });
		 }
	}); **/

	/* search
	$("#search").click(function() {
		 $("form[name=searchForm]").submit();
	}); **/

	/* 파일삭제 **/
    $.extend({
	     file_delete : function(sb, bbs, mode, field, idx, table, arguments) {
		      if(confirm("정말로 파일을 삭제 하시겠습니까?")) {
                   common_iframe.location.href="/bbs/"+bbs+"/proc.php?"+arguments+"&mode="+mode+"&field="+field+"&table="+table+"&idx="+idx;
			  }
		 }
	});

	/* AD Gallery Roll(겔러리 롤이미지) **/
    $('img.image1').data('ad-desc', '');
    $('img.image1').data('ad-title', '');
    $('img.image4').data('ad-desc', '');
    $('img.image5').data('ad-desc', '');
    var galleries = $('.ad-gallery').adGallery();
    $('#switch-effect').change( function() {
            galleries[0].settings.effect = $(this).val();
            return false;
    });
    $('#toggle-slideshow').click( function() {
            galleries[0].slideshow.toggle();
            return false;
    });
    $('#toggle-description').click(function() {
           if(!galleries[0].settings.description_wrapper) {
               galleries[0].settings.description_wrapper = $('#descriptions');
           } else {
               galleries[0].settings.description_wrapper = false;
           }
           return false;
    });

 });








/**
 * jQuery UI 다이얼로그 모달윈도우 - 기본
 * <div id="dialog-example" title="This is my title">in a dialog modalpopup!</div>
 * show_dialog("example", 500, 500);
 * $("#dialog-id").remove(); $("#dialog-id").hide();
 */
 function show_dialog(id, width, height) {
	 $( "#dialog:ui-dialog" ).dialog( "destroy" );
	 $( "#dialog-"+id ).dialog({
		 width: width,
		 height: height,
	 	 modal: true
	 });
 }
 
/**
 * jQuery UI 다이얼로그 모달윈도우 - 레이어 생성 후 ifrmae show
 * show_dialog_iframe("example", 500, 500, "Title", "iframeID", "iframeSRC");
 * parent.$("#dialog-id").remove(); parent.$("#dialog-id").hide();
 */
 function show_dialog_iframe(id, width, height, title, iframeid, src) {
	 iframe_width = (width-50);
	 iframe_height= (height-60);
	 htm = '<div id="dialog-'+id+'" title="'+title+'" style="z-index:20000;"><iframe id="'+iframeid+'" style="width:'+iframe_width+'px; height:'+iframe_height+'px; border:0px;" src="'+src+'" scrolling="no" frameborder="0"></iframe></div>';
	 $("body #dialog-"+id+":last").remove();
	 $("body").append(htm);
	 $( "#dialog:ui-dialog" ).dialog( "destroy" );
	 $( "#dialog-"+id ).dialog({
		 width: width,
		 height: height,
	 	 modal: true
	 });
 }

/**
 * iframe resized for Height 
 */
function autoResize(i){//iframe resize   
	 var iframeHeight=   
	 (i).contentWindow.document.body.scrollHeight;   
	 (i).height=iframeHeight+20;
}

/**
 * 레이어 켈린더 
 */
function cal_MouseOver(e, frmname, fldname, iframename, calendar_path) {
	 path = calendar_path+'?parent_form_name='+frmname+'&parent_field_name='+fldname;
	 $("#layer_calendar").attr("src", path);
	 /*document.getElementsByName(iframename).src = calendar_path+'?parent_form_name='+frmname+'&parent_field_name='+fldname; **/
	 document.getElementById("cal001").style.visibility = 'visible';
	 document.getElementById("cal001").style.left = e.clientX + document.body.scrollLeft + 0; //10;
	 document.getElementById("cal001").style.top  = e.clientY + document.body.scrollTop + 0; //10;
}
function cal_MouseOut() {
	 document.getElementById("cal001").style.visibility = 'hidden';
}

/**
 * 숫자만 입력받기
 */
function onlyNumber() { 
	 if ( ( (96<=event.keyCode) && (event.keyCode<=105) ) ||  ( (48<=event.keyCode) && (event.keyCode<=57) ) || (event.keyCode==8)  || (event.keyCode==37) || (event.keyCode==39) || (event.keyCode==9)) { 
		 event.returnValue=true; 
	 }else{ 
		 event.returnValue=false; 
	 }
}

/**
 * 숫자만 입력받기 
 */
function onOnlyNumber(obj) {
	for(var i = 0; i < obj.value.length ; i++) {
		chr = obj.value.substr(i,1);  
		chr = escape(chr);
		key_eg = chr.charAt(1);
		if (key_eg =='u'){
			key_num = chr.substr(i,(chr.length-1));   
			if((key_num < "AC00") || (key_num > "D7A3")) { 
				event.returnValue = false;
			} 
		}
	}
	if(event.keyCode >= 48 && event.keyCode <= 57) {
	}else{
		event.returnValue = false;
	}
}

/**
 * 주민등록번호 앞자리로 생년월일 리턴
 */
function get_sernumTobirth(sernum1) {
	 var year, month, day, mil;
	 //var f = document.thisForm;
	 var sernumber = sernum1;
     
	 if(sernumber.length > 5){
		  mil = sernumber.substr(0, 1);
		  year = sernumber.substr(0, 2);
		  month = sernumber.substr(2, 2);
		  day = sernumber.substr(4, 2);
          
		  if(mil==0) year="20"+year;
		  else year="19"+year;
		  
		  /*f.birth_year.value = year;
	      f.birth_month.value = month;
	      f.birth_day.value = day; **/
		  return year+"-"+month+"-"+day;
	 }else{
		  return false;
	 }
}

/**
 * 이메일주소 체크
 */
function emailCheck(mail1, mail2) {
	var check1 = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/;
	var check2 = /^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4})$/;
	var emailcheck = mail1 + "@" + mail2;
    
	if ( !check1.test(emailcheck) && check2.test(emailcheck) ) {
		 return true; /* true email **/
	} else {
		 return false; /* bad email **/
	}
}

/**
 * 주민번호 검사(외국인번호 포함) 
 *
 * if(false == (birth = checkPersonalNo(주민번호)))
 * 년 = birth[0]; 
 * 월 = birth[1]; 
 * 일 = birth[2]; 
 * if(birth[3]) 외국인; 
 */
function checkPersonalNo(personal_no) {
    personal_no = personal_no.replace(/[^\d]+/g, ''); 
    pattern = /^[0-9]{6}[1-8][0-9]{6}$/; 

    if(!pattern.test(personal_no)) { 
        return false; 
    } 
    var birth = new Array(); 
    birth[0] = personal_no.substr(0, 2); 
    switch(personal_no.charAt(6)) { 
    case '1': 
    case '2': 
        birth[0] = ('19' + birth[0]) * 1; 
        birth[3] = false; 
        break; 
    case '3': 
    case '4': 
        birth[0] = ('20' + birth[0]) * 1; 
        birth[3] = false; 
        break; 
    case '5': 
    case '6': 
        birth[0] = ('19' + birth[0]) * 1; 
        birth[3] = true; 
        break; 
    case '7': 
    case '8': 
        birth[0] = ('20' + birth[0]) * 1; 
        birth[3] = true; 
        break; 
    /*case '9': //old 
    case '0': 
        birth[0] = ('18' + birth[0]) * 1; 
        birth[3] = true; 
        break;*/ 
    } 

    birth[1] = personal_no.substr(2, 2) * 1; 
    birth[2] = personal_no.substr(4, 2) * 1; 

    if(birth[1] < 1 || birth[1] > 12) { 
        return false; 
    } 
    if(birth[2] < 1 || birth[2] > 31) { 
        return false; 
    } 
    var check = 0; 
    var mul = 2; 

    if(birth[3]) { 
        if(((personal_no.charAt(7) * 10 + personal_no.charAt(8)) % 2) != 0) { 
            return false; 
        } 
    } 
    for(i = 0; i < 12; i ++) { 
        check += personal_no.charAt(i) * mul; 
        mul ++; 
        if(mul > 9) { 
            mul = 2; 
        } 
    } 

    check = 11 - (check % 11); 

    if(check > 9) { 
        check %= 10; 
    } 
    if(birth[3]) { 
        check += 2; 
        if(check > 9) { 
            check %= 10; 
        } 
    } 
    if(check != personal_no.charAt(12)) { 
        return false; 
    } 
    return birth; 
} 

/**
 * 플래시 출력
 */
function flashpreview(url, w, h, id, bg, vars, win) {//flashWrite(파일경로, 가로, 세로, 아이디, 배경색, 변수, 윈도우모드)
	var flashStr= 
	"<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0' width='"+w+"' height='"+h+"' id='"+id+"' align='middle'>"+ 
	"<param name='allowScriptAccess' value='always' />"+ 
	"<param name='movie' value='"+url+"' />"+ 
	"<param name='FlashVars' value='"+vars+"' />"+ 
	"<param name='wmode' value='"+win+"' />"+ 
	"<param name='menu' value='false' />"+ 
	"<param name='quality' value='high' />"+ 
	"<param name='bgcolor' value='"+bg+"' />"+ 
	"<embed src='"+url+"' FlashVars='"+vars+"' wmode='"+win+"' menu='false' quality='high' bgcolor='"+bg+"' width='"+w+"' height='"+h+"' name='"+id+"' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash' />"+ 
	"</object>"; 
	document.write(flashStr);
}

/**
 * Textarea 높이 조절(easy Editor)
 *
jQuery.fn.resizehandle = function() {
      return this.each(function() {
            var me = jQuery(this);
            me.after(
                  jQuery('<div class="resize_bar" style="width:99%; background:#EFEFEF; text-align:center; padding-top:0px; border-right:#D7D7D7 1px solid; border-top:#D7D7D7 0px solid; border-left:#D7D7D7 1px solid; border-bottom:#D7D7D7 1px solid; "><img src="/_admin/images/resized.gif" border="0" /></div>')
                        .bind('mousedown', function(e) {
							  var h = me.height();
                              var y = e.clientY;
                              var movehandler = function(e) {
                                    me.height(Math.max(40, e.clientY + h - y));
                              };
                              var uphandler = function(e) {
                                    jQuery('html').unbind('mousemove',movehandler)
                                          .unbind('mouseup',uphandler);
                              };
                              jQuery('html') .bind('mousemove', movehandler)
                                    .bind('mouseup', uphandler);
                        })
            );
      });
}
$(document).ready(function(){
      $("#content").resizehandle();
}); **/

/**
 * autoTab
 */
var isNN = (navigator.appName.indexOf("Netscape")!=-1);
function autoTab(input, len, e) {
	var keyCode = (isNN) ? e.which : e.keyCode; 
	var filter = (isNN) ? [0,8,9] : [0,8,9,16,17,18,37,38,39,40,46];
	if(input.value.length >= len && !containsElement(filter,keyCode)) {
		input.value = input.value.slice(0, len);
		input.form[(getIndex(input)+1) % input.form.length].focus();
	}
	function containsElement(arr, ele) {
		var found = false, index = 0;
		while(!found && index < arr.length)
			if(arr[index] == ele)
			found = true; 
			else
			index++;
		return found;
	}
	function getIndex(input) {
		var index = -1, i = 0, found = false;
		while (i < input.form.length && index == -1)
			if (input.form[i] == input)index = i;
			else i++;
		return index;
	}
	return true;
}

/**
 * 비밀글일때 비밀번호 체크 레이어
 */
function confirm_secret(idx, layerid, inputid) {
    $(".grp_cecret").css("display", "none");
	$("#"+layerid+idx).css("display", "");
	$("#"+inputid+idx).focus();
}
function submit_secret(obj, fld) {
	if(obj.fld.value=="") {
		 alert("비밀번호를 입력해 주십시요.");
	}
}

/**
 * 센터 팝업
 */
function center_popup(url, w, h) {
	if(w=="") var w = 750;
	if(h=="") var h = 700;
	var winl = (screen.width - w) / 2;
	var wint = (screen.height - h) / 2;
	var urlPage = url;
	var windowname = "CenterPopup";
	winprops = "height="+h+", width="+w+", top="+wint+", left="+winl+", directories=no, status=no, scrollbars=yes, resize=yes, menubar=yes"
	win = window.open(urlPage , windowname , winprops)
	if(parseInt(navigator.appVersion) >= 4) {
	     win.window.focus();
    }
}