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
  
      <script>
	        function fn_egov_link_page(pageNo){
	        	document.listForm.pageIndex.value = pageNo;
	        	document.listForm.action = "<c:url value='/main/all.do'/>";
	           	document.listForm.submit();
	        }
</script>
  
<style>
.pr2-social a {
    color: #6b6b6b;
}
</style>
  
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    
    <c:import url="/frame/top.do" />
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->
            <div class="border-head">
              <h3>버거 도감</h3>
              <h3>
              <div class="btn-group">
                <button type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  정렬 <span class="caret"></span>
                  </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="">높은인기순</a></li>
                  <li><a href="">낮은인기순</a></li>
                  <li><a href="">높은가격순</a></li>
                  <li><a href="">낮은가격순</a></li>
                </ul>
              </div>
              <div class="btn-group">
                <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
                  브랜드 <span class="caret"></span>
                  </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="">맥도날드</a></li>
                  <li><a href="">롯데리아</a></li>
                  <li><a href="">맘스터치</a></li>
                  <li><a href="">버거팅</a></li>
                  <li><a href="">KFC</a></li>
                  <li><a href="">파파이스</a></li>
                  
                </ul>
              </div>
              </h3>
              
            </div>
            
            <!--custom chart end-->
            
            <!-- /row -->
            
            
            <!-- /row -->
            <div class="row">
              <!-- <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <div class="badge badge-hot">HOT</div>
                  <img src="../images/빅맥.jpg" width="200" alt="">
                  <h5 class="mt">Flat Pack Heritage</h5>
                  <h6>TOTAL SALES: 1388</h6>
                  <button class="btn btn-small btn-theme04">FULL REPORT</button>
                </div>
              </div> -->
              <!-- /col-md-4 -->
              <!--  PROFILE 02 PANEL -->
              <c:forEach var="item" items="${resultList}" varStatus="i">
              <a href="/fastfood/main/burger.do?nums=${item.idx}">
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="content-panel pn">
                  <div id="profile-02">
                    <div class="user">
                      <img src="../images/빅맥.jpg" class="img-circle" width="80">
                      <h4>${item.bname }</h4>
                      <h4>(${item.fran})</h4>
                    </div>
                  </div>
                  <div class="pr2-social centered">
                  <a href="/fastfood/main/burger.do?nums=${item.idx}"><i class="fa fa-money"> ${item.onep}원(단품) / ${item.setp}원(세트)</i></a>
                    
                  </div>
                </div>
                <!-- /panel -->
              </div>
              </a>
              </c:forEach>
              <!--/ col-md-4 -->
              
              <!-- /col-md-4 -->
            </div>
            <ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>
<form action="/fastfood/main/all.do" name="listForm" id="listForm">
	<input type="hidden" name="pageIndex" value="1"/>	
</form>
            <!-- /row -->
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          
          <!-- /col-lg-3 -->
        </div>
            
              <!--/col-lg-12 mt -->
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
        <a href="invoice.html#" class="go-top">
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

</body>

</html>
