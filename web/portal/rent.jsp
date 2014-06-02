<%-- 
    Document   : rent
    Created on : Jun 2, 2014, 5:02:16 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Bicycle"%>
<%@page import="model.User"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - User Page - Rent page</title>
        <%@ include file="template_head.jsp" %>
        <script type="text/javascript">
            $(document).ready(function(e) {
                $("#rentSent").click(function(e) {
                    $('#rent').submit();
                });
            });
        </script>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12">

                <div class="page-header">
                    <h1>ระบบเช่ายืมจักรยาน <small></small></h1>
                </div>
                <div class="col-sm-10 col-md-10">
                    <div class="alert alert-info col-sm-4 col-md-4" style="float : left">You have <%=((User)session.getAttribute("user")).getPoint()%> points</div>
                    <div class="alert alert-warning col-sm-6 col-md-6" style="float : left">We have <%=Bicycle.count()%> available bicycle(s)</div>
                </div>
                <br><br><br><br>
                <div class="panel panel-default">
                    <div class="panel-body" style="line-height : 2em">
                        สถานะ : <%
                            if(Bicycle.isBorrow((User)session.getAttribute("user"))) 
                                out.print("ยืมจักรยานอยู่<br>Bicycle ID : "+(Bicycle.getBorrowBike((User)session.getAttribute("user")).getBid())+
                                "<br>Bicycle Model : "
                                +(Bicycle.getBorrowBike((User)session.getAttribute("user")).getModel())+"<br><br>");
                            else out.print("ไม่ได้ยืมจักรยาน<br>");
                        %>
                        Time : <br><br>
                        <u>ข้อตกลงการยืมจักรยาน</u> <br>
                        <ol>
                            <li>การรับจักรยาน จำเป็นจะต้องนำบัตรประจำตัวของ มหาวิทยาลัยมาด้วยทุกครั้ง</li>
                            <li>การยืมจักรยานสามารถยืมได้ทีละ 1 คัน ต่อ 1 คนเท่านั้น</li>
                            <li>หากผู้ยืม ไม่นำจักรยานมาคืนในเวลาที่กำหนด ทาง Admin จะทำการ ban เป็นระยะเวลาตามที่กำหนด เพื่อเป็นการเตือน</li>
                        </ol>
                    </div>
                </div>
                <form id="rentform" action="borrowbike">
                    <div style="text-align : center">
                        <button  id="rentSent" class="btn btn-info" style="width : 50%" <%if (Bicycle.count() == 0) {%>disabled <%}%>><span style="color : white"><span class="glyphicon glyphicon-tag"></span> Rent Confirm</span></button>
                    </div>
                </form>
            </div>

        </div>
        <%@ include file="../template_footer.jsp" %>
        
        
        <!-- Modal -->
        <div class="modal fade" id="borrowresult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body" id="borrowtextresult" style="text-align: center;">
                        <h1><img src="../assets/img/loader0.gif"> กำลังดำเนินการ...</h1>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
