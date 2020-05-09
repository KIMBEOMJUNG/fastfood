<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="메뉴"></div>
      </div>
      <!--logo start-->
      <a href="/fastfood/main/main.do?nums=1" class="logo"><b><span>다</span>먹어요</b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        
        <!--  notification end -->
      </div>
      <!-- <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">Logout</a></li>
        </ul>
      </div> -->
    </header>
    
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          
         
          <li class="mt">
            <a href="main.do?nums=1">
              <i class="fa fa-trophy"></i>
              <span>오늘의 추천 버거</span>
              </a>
          </li>
          
          
          <li class="sub-menu">
            <a href="main.do">
              <i class="fa fa-thumbs-up"></i>
              <span>내 취향 버거찾기</span>
              </a>
          </li>
          
          <li class="sub-menu">
            <a href="sale.do">
              <i class="fa fa-money"></i>
              <span>버거 세일/특가</span>
              </a>
          </li>
          
          <li class="sub-menu">
            <a href="all.do">
              <i class="fa fa-money"></i>
              <span>버거 도감</span>
              </a>
          </li>
          
          
          <!-- <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>랜덤 버거</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul>
          </li> -->
          
        
         
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    
    <script>
    var now = new Date();
    date = now.getDate(); 
    console.log(date);
    </script>
    
    </body>