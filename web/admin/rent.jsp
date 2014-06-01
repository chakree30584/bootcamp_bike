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
                    <div class="alert alert-info col-sm-4 col-md-4" style="float : left">You have : <% if (a.getBan() < 0) {
                                            out.print(a.getBan() * -1);
                                        } else {
                                            out.print(a.getBan());
                                        }%> points</div>
                    <div class="alert alert-warning col-sm-6 col-md-6" style="float : left">We have available bicycle : <%out.print(Bicycle.count()); %></div>
                </div>
                <br><br><br><br>
                <div class="panel panel-default">
                    <div class="panel-body" style="line-height : 2em">
                        Time : <br><br>
                        <u>ข้อตกลงการยืมจักรยาน</u> <br>
                        <ol>
                            <li>การรับจักรยาน จำเป็นจะต้องนำบัตรประจำตัวของ มหาวิทยาลัยมาด้วยทุกครั้ง</li>
                            <li>การยืมจักรยานสามารถยืมได้ทีละ 1 คัน ต่อ 1 คนเท่านั้น</li>
                            <li>เมื่อทำการยืมแล้ว คะแนนจะกลายเป็นจำนวน "ติดลบ" เพื่อป้องกันการกดยืมซ่้ำ</li>
                            <li>หากผู้ยืม ไม่นำจักรยานมาคืนในเวลาที่กำหนด ทาง Admin จะทำการ ban เป็นระยะเวลาตามที่กำหนด เพื่อเป็นการเตือน</li>
                        </ol>
                    </div>
                </div>
                <form id="rent" action="/bike/rent">
                    <div style="text-align : center">
                        <button  id="rentSent" class="btn btn-info" style="width : 50%" <%if (Bicycle.count() == 0) {%>disabled <%}%>><span style="color : white"><span class="glyphicon glyphicon-tag"></span> Rent Confirm</span></button>
                    </div>
                </form>
            </div>

        </div>

        <%@ include file="../template_footer.jsp" %>
    </body>
</html>
