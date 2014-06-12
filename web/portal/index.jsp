<%-- 
    Document   : index
    Created on : Jun 2, 2014, 4:08:21 AM
    Author     : chakree30584
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="model.Bicycle"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - User Page - Change Info</title>
        <%@ include file="template_head.jsp" %>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12">

                <div class="page-header">
                    <h1><span class="glyphicon glyphicon-user"></span> <small>ข้อมูลสมาชิก</small></h1>
                </div>
                <div class="container col-sm-7 col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <table style="line-height : 5em;font-size : 1em">
                                <tr>
                                    <td><p>ID : <%out.print(a.getId());%><p></td>
                                </tr>
                                <tr>
                                    <td><p>Name :<%out.print(a.getName());%> <p></td>
                                </tr>
                                <tr>
                                    <td><p>Position :<%out.print("USER");%> <p></td>
                                </tr>
                                <tr>
                                    <td><p>Mail : <%out.print(a.getMail());%><p></td>
                                </tr>
                                <tr>
                                    <td><p>Tel.	 :<%out.print(a.getTel());%> <p></td>
                                </tr>
                                <tr>
                                    <td><p>Status	 :<%if (Bicycle.isBorrow(a)) {
                                            out.print("ไม่สามารถยืม เพราะยืมจักรยานอยู่แล้ว");
                                        } else {

                                            out.print("สามารถยืมได้");

                                        }%> <p></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="container col-sm-5 col-md-5">
                    <img src="../assets/img/info2-1.png">
                </div>

                <div style="text-align : center">
                    <a href="changeinfo.jsp" style="text-decoration : none"><button class="btn btn-info" style="width : 50%"><span style="color : white"><span class="glyphicon glyphicon-pencil"></span>Change Information</span></button></a>
                </div>

            </div>

        </div>

        <%@ include file="../template_footer.jsp" %>
    </body>
</html>
