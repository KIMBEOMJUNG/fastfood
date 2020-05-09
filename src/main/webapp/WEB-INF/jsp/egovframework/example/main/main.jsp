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
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="col-lg-10 col-lg-offset-1">
              <div class="invoice-body">
                <div class="pull-left">
                <h2>오늘의버거</h2>
                  <h1>${item.bname}</h1>
                  <address>
                <strong>${item.fran}</strong><br>
                칼로리:182kal<br>
                참깨빵,순살고기,특별한소스,양상추,치즈피클,양파<br>
                <button class="btn  btn-sm tooltips" data-original-title="good" type="button" onclick="location.href='/fastfood/main/burgergood.do?idx=${item.idx}'" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-thumbs-o-up"></i> ${item.good} </button>
                <!-- <abbr title="Phone">P:</abbr> (123) 456-7890 -->
              </address>
                </div>
                <!-- /pull-left -->
                <!-- <div class="pull-right">
                  <h2>invoice</h2>
                </div> -->
                
                <!-- /pull-right -->
                <div class="clearfix"></div>
                <br>
                <div>
                <img src="../images/빅맥.jpg" width="200" height="200">
                </div>
                <br>
                <br>
                <div class="row">
                  <!-- <div class="col-md-9">
                    <h4>Paul Smith</h4>
                    <address> 
                  <strong>Enterprise Corp.</strong><br>
                  234 Great Ave, Suite 600<br>
                  San Francisco, CA 94107<br>
                  <abbr title="Phone">P:</abbr> (123) 456-7890
                </address>
                  </div> -->
                  <!-- /col-md-9 -->
                  <div class="col-md-3">
                    <br>
                    <div>
                      <div class="pull-left">  NO : </div>
                      <div class="pull-right"> 0001 </div>
                      <div class="clearfix"></div>
                    </div>
                    <div>
                      <!-- /col-md-3 -->
                      <div class="pull-left">  DATE : </div>
                      <div class="pull-right"> 15/03/14 </div>
                      <div class="clearfix"></div>
                    </div>
                    <!-- /row -->
                    <br>
                    <div class="well well-small green">
                      <div class="pull-left"> 단품가격/세트가격 : </div>
                      <div class="pull-right"> ${item.onep}원/${item.setp}원 </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <!-- /invoice-body -->
                </div>
                <!-- /col-lg-10 -->
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:60px" class="text-center">-</th>
                      <th class="text-left">영양소</th>
                      <th style="width:140px" class="text-right">영양소기준치</th>
                      <th style="width:90px" class="text-right">함량</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="text-center">1</td>
                      <td>열량</td>
                      <td class="text-right"></td>
                      <td class="text-right">512kcal</td>
                    </tr>
                    <tr>
                      <td class="text-center">2</td>
                      <td>당</td>
                      <td class="text-right">15g</td>
                      <td class="text-right">7g</td>
                    </tr>
                    <!-- <tr>
                      <td colspan="2" rowspan="4">
                        <h4>Terms and Conditions</h4>
                        <p>Thank you for your business. We do expect payment within 21 days, so please process this invoice within that time. There will be a 1.5% interest charge per month on late invoices.</p>
                         <td class="text-right"><strong></strong></td>
                        <td class="text-right"></td>
                    </tr> -->
                    <!-- <tr>
                      <td class="text-right no-border"><strong>Shipping</strong></td>
                      <td class="text-right">$0.00</td>
                    </tr>
                    <tr>
                      <td class="text-right no-border"><strong>VAT Included in Total</strong></td>
                      <td class="text-right">$0.00</td>
                    </tr> 
                    <tr>
                      <td class="text-right no-border">
                        <div class="well well-small green"><strong>Total</strong></div>
                      </td>
                      <td class="text-right"><strong>$1029.00</strong></td>
                    </tr> -->
                  </tbody>
                </table>
                <br>
                <br> 
              </div>
              
              <div id="disqus_thread"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://daeat.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            
              
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
