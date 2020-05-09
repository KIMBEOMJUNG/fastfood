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
	        	document.listForm.action = "<c:url value='/admin/salelist.do'/>";
	           	document.listForm.submit();
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
          
          <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading wht-bg">
                <h4 class="gen-case">
                   	관리자 버거세일/특가<p>
                    <form action="#" class="pull-right mail-src-position">
                      
                    </form>
                  </h4>
              </header>
              <div class="panel-body minimal">
                <div class="mail-option">
                  <div class="chk-all">
                    
                   

                    
                     <div class="input-append">
                        <input type="text" class="form-control " placeholder="Search Mail">
                      </div>
                    
                  </div>
                  <div class="btn-group">
                    <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#" class="btn mini tooltips">
                      <i class="fa fa-search"></i>
                      </a>
                  </div>
                  
                  
                  <!-- <ul class="unstyled inbox-pagination">
                    <li><span>1-50 of 99</span></li>
                    <li>
                      <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                    </li>
                    <li>
                      <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                    </li>
                  </ul> -->
                </div>
                <div class="table-inbox-wrap ">
                  <table class="table table-inbox table-hover">
                    <tbody>
                    <c:forEach var="item" items="${resultList}" varStatus="i">
                    
                      <tr class="">
                        <td class="inbox-small-cells">
                          ${item.idx}
                        </td>
                        <td class="inbox-small-cells"><!-- <i class="fa fa-star"></i> --></td>
                        <td class="view-message  dont-show"><a href="/fastfood/admin/adsaledetail.do?idx=${item.idx}">${item.bland}</a></td>
                        <td class="view-message "><a href="/fastfood/admin/adsaledetail.do?idx=${item.idx}">${item.title}</a></td>
                        <td class="view-message  inbox-small-cells">
                        <c:if test="${item.type eq 2 }">
                        	<span class="label label-danger pull-right">종료</span>
                        </c:if>
                        <c:if test="${item.type eq 1 }">
                        	<span class="label label-success pull-right">진행중</span>
                        </c:if>
                        <c:if test="${item.type eq 3 }">
                        	<span class="label label-info pull-right">진행예정</span>
                        </c:if>
                        </td>
                        <td class="view-message  text-right">${item.date}</td>
                      </tr>
                    </c:forEach>
                      
                      
                      <!--회색 글 기본-->
                      <!-- <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Wonder Corp.</a></td>
                        <td class="view-message"><a href="mail_view.html">Thanks for your registration</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 15</td>
                      </tr> -->
                      

                      
                    </tbody>
                  </table>
                </div>
              </div>
                                    <ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>
<form action="/fastfood/admin/salelist.do" name="listForm" id="listForm">
	<input type="hidden" name="pageIndex" value="1"/>	
</form>
          <button type="button" onclick="location.href='/fastfood/admin/adsaleadd.do'" class="btn btn-default">추가</button>    
            </section>
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

</body>

</html>
