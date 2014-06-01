<%-- 
    Document   : index
    Created on : Jun 1, 2014, 2:20:45 AM
    Author     : chakree30584
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - Home Page </title>
        <%@ include file="template_head.jsp" %>
    </head>

    <body>

        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <div id="topLogo">
                <img src="assets/img/title2.png" height="120">
                <img src="assets/img/top_logo.gif" height="120"  class="animated bounceInLeft">
            </div>
            <br>

            <div id="content">

                <div id="carousel-example-generic" class="slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="resize" src="assets/img/4-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/5-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/6-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/7-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/8-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/9-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img class="resize" src="assets/img/10-1.png" height="400px">
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

                <div id="news">

                    <div class="page-header">
                        <h1>News & Annoucement<small> update daily</small></h1>
                    </div>

                    <div class="row">

                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <a href="#newsModal0"  data-toggle="modal" data-target="#newsModal0"><img src="assets/img/news1.png"></a>
                                <div class="caption">
                                    <h3>ชาวมจธ.รณรงค์ลดใช้พลังงาน !!</h3>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="newsModal0" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">ชาวมจธ.รณรงค์ลดใช้พลังงาน !!</h4>
                                        </div>
                                        <div class="modal-body">
                                            <img src="assets/img/12.jpg" width="100%">
                                        </div>
                                        <div class="modal-footer">
                                            <h4>News by KMUTT Cyclist Circle</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <a href="#newsModal1"  data-toggle="modal" data-target="#newsModal1"><img src="assets/img/news2.png"></a>
                                <div class="caption">
                                    <h3>10 วิธีง่ายๆ ลดโลกร้อน !!</h3>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="newsModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">10 วิธีง่ายๆ ลดโลกร้อน !!</h4>
                                        </div>
                                        <div class="modal-body">
                                            <img src="assets/img/13.jpg" width="100%">
                                        </div>
                                        <div class="modal-footer">
                                            <h4>News by KMUTT Cyclist Circle</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <a href="#newsModal2"  data-toggle="modal" data-target="#newsModal2"><img src="assets/img/news3.png"></a>
                                <div class="caption">
                                    <h3>Benefits of Cycling</h3>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="newsModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Benefits of Cycling</h4>
                                        </div>
                                        <div class="modal-body">
                                            <img src="assets/img/3.jpg" width="100%">	
                                        </div>
                                        <div class="modal-footer">
                                            <h4>News by KMUTT Cyclist Circle</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                
                
        <%@ include file="template_footer.jsp" %>
                
            </div> 
            
        </div> <!--close container-->
        
        
    </body>
</html>