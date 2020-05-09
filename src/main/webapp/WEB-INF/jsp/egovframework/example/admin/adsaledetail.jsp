<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="../img/favicon.png" rel="icon">
  <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

  <script type="text/javascript" src="/fastfood/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	/**
	 * 글쓰기폼
	 */
	var oEditors = [];
	$(document).ready(function() {

		/* smartEditor Option */
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "CONTENT",
			sSkinURI : "/fastfood/se2/SmartEditor2Skin.html",
			htParams : {
				fOnBeforeUnload : function() {},
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : false, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				OnBeforeUnload : function() {
				}
			/* bSkipXssFilter:true	//client-side xss filter 무시 여부 */
			//aAdditionalFontList : aAdditional FontSet,     // 추가 글꼴 목록
			},
			fCreator : "createSEditor2"
		});
		$(".content").css("overflow", "scroll");
		
		$('.section.type1  tr:eq(0)').hide();
		$('.section.type1 tr:eq(1) th:eq(0)').hide();
		
	});
	
	
	//단일업로드함수
	//부모에 와보니 pasteHTML 함수가 있어요. 우린 파일을 올리고 왔기 때문에 fname에 파일이름이 담겨있을거에요.
	//처음이페이지에 들어왔을때는 이함수를 호출하는 부분이 없기 때문에 동작을 전혀안하고, 팝업창(이미지첨부)가 닫히면서 호출될때만 작동해요.
	function pasteHTML(fname) {
			//그럼 저희는 기존에 저장될 폴더를 알고 있기 때문에 파일이름만 담아서 img태그로 표현해고
			var sHTML = '<img src="<c:url value="/fastfood/images/egovframework/example/'+fname+'"/>"/>';
			/* 이미지 파일 경로를 따로 저장하고 싶다면 요기 url */
			console.log(sHTML);
			//그걸 에디터 영역에 뿌려주면 끝입니다.
			oEditors.getById["CONTENT"].exec("PASTE_HTML", [ sHTML ]); 
	}

</script>
  
  
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start--> 
    <c:import url="/frame/top.do" />
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->

    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt">
          
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>
              <form class="form-horizontal style-form" method="post" id="frm"  role="form" action="/fastfood/admin/saleup.do" enctype="multipart/form-data">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">제목</label>
                  <div class="col-sm-10">
                    <input id="title" name="title" type="text" value="${item.title}" class="form-control">
                  </div>
                  
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">브랜드</label>
                  
                  <div class="col-sm-10">
                    <input id="bland" name="bland" type="text" value="${item.bland}" class="form-control">
                  </div>
                </div>
                
               
                
                
                
                
              
              
              
              
              
              
                                    <!-- <div>제목<input name="title" id="title"></div> -->
                                    <!-- <div>내용<textarea name="content" cols="40" rows="8" id="context"></textarea></div> -->
                                    
                                    
                                     <input type="hidden" id="content"  name="content"/>
                  	<div>
                  	<div class="contentContainer" style="width:100%;background:white">
						<div class="topT" style="top: 10px;">
							<div>
								<div id="tabs1-1">
									<div class="section type1" style="border-top: 1px solid #DDDDDD; border-radius:5px 5px 5px 5px;">
										<div>
											<table style="width:100%;">
												<colgroup>
													<col style="width: 65px;" />
													<col style="width: 120px;" />
													<col style="width: 65px;" />
													<col style="width: auto;" />
													<col style="width: 65px;" />
													<col style="width: 160px;" />
												</colgroup>
												<tbody>
													<tr>
														<th>제목</th>
														<td><input id="title" type="text" name="title" validate='required'
															style="text-align: left; width: 100%;"> <input
															type="hidden" name="NO" /></td>
														
		
													</tr>
													<tr>
														<th>내용</th>
														<td colspan="7"><textarea name="econtent"  id="CONTENT"
																style="resize: none; width: 100%; height: 500px;">${item.context}</textarea>
														</td>
													</tr>
																							</tbody>
																							
											</table>
											 <div>이미지	:
                                    <input type=file name=myfile>
                                    </div>
                                    <div>타입	:
                                    			<input type="radio" name="type" <c:if test="${item.type eq 1 }">checked="checked"</c:if> value="1">진행중
                                        		<input type="radio" name="type" <c:if test="${item.type eq 2 }">checked="checked"</c:if>value="2">중지
												<input type="radio" name="type" <c:if test="${item.type eq 3 }">checked="checked"</c:if>value="3">진행예정
												
                                        		
                                        		
                                        		
                                    </div>
                                    
                                    
                                    
                                    
                                    <button type="button" onclick="formsubmit()" class="btn btn-default">추가</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>  
					</div>
                                    
                                    
                                    <input type="hidden" id="idx" name="idx" value="${item.idx}"/>
                                   
                                  </form> 
              
              
              
              
              
              
              
              
              
              
              
            </div>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="inbox.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../lib/jquery/jquery.min.js"></script>
  <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="../lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../lib/jquery.scrollTo.min.js"></script>
  <script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <!--script for this page-->

<script>
function formsubmit(){
	var fm = document.getElementById('frm');
	var type = $('input[name="type"]:checked').val();
	var title = $("#title").val();
	
	
	console.log("type:"+type);
	//console.log("typelength:"+type.length);
	//console.log("typelength2:"+type.length);
			if(title.length<1)
			  {
				  alert("제목을 입력해주세요");
				  return;
			  }

			

			$('iframe').contents().find('.se2_to_html').trigger('click');
			var econtent = $('iframe').contents().find('.se2_input_htmlsrc').val();
			$("#content").val(econtent);
	
	if($('input[name="type"]:checked').val()==null)
	  {
		  alert("타입을 선택해주세요.");
		  return;
	  }
	
	
	
	
	fm.submit();	
}
</script>


</body>

</html>
