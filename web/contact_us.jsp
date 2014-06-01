<%-- 
    Document   : contact_us
    Created on : Jun 2, 2014, 1:36:40 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - Contact Us </title>
        <%@ include file="template_head.jsp" %>
    </head>

    <body> 
        <%@ include file="template_navbar.jsp" %>
        <div class="container">
            <div id="logobar">
                <img src="assets/img/title2.png" height="100">
                <img src="assets/img/top_logo.gif" height="100">
            </div>
        </div>

        <div id="content2">
            <div id="map_box" class="col-sm-5 col-md-5">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d242.31855118896164!2d100.4942631!3d13.6518741!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2a25195825cdb%3A0xb16c8e1e6d264fbc!2z4Lit4Liy4LiE4Liy4Lij4LiH4Liy4LiZ4Lia4Lij4Li04LiB4Liy4Lij4LiC4LmJ4Lit4Lih4Li54Lil4LmA4LiX4LiE4LiZ4Li04LiE!5e0!3m2!1sen!2sth!4v1401591324437" width="400" height="300" frameborder="0" style="border:0">
                </iframe>
            </div>
            <div id="contact_box" class="col-sm-7 col-md-7">
                <h2>contact</h2>
                <p>
                    มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี<br/>
                    126 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพฯ 10140<br/>
                    โทรศัพท์ 0-2427-0039, 0-2470-8000 โทรสาร 0-2427-8412<br/>
                    <!-- Button trigger modal -->
                    <a  data-toggle="modal" data-target="#myModal3">การเดินทาง | แผนผังภายใน</a>
                    <!-- Modal -->
                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">แผนผังภายใน</h4>
                            </div>
                            <div class="modal-body">
                                <img src="img/bangmod-map.jpg" width="100%">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <a href="img/bangmod-map.jpg" target="_blank"><button type="button" class="btn btn-primary">Full image</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                </p>
                <span class="glyphicon glyphicon-envelope"></span> <a href="mailto:bicyclub.kmutt@gmail.com?Subject=Hello%20Admin" style="color:black"> bicyclub.kmutt@gmail.com</a> <br/>
                <span class="glyphicon glyphicon-globe"> </span><a href="https://www.facebook.com/KmuttCyclistCircle?ref=profile" style="color:black"> KmuttCyclistCircle</a>
            </div>

        </div> 
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
        <%@ include file="template_footer.jsp" %>
        
    </body>
</html>