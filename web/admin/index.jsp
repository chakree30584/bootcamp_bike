<%-- 
    Document   : index
    Created on : Jun 2, 2014, 5:07:05 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - Admin Page - Info</title>
        <%@ include file="template_head.jsp" %>
        <script type="text/javascript">
            $(document).ready(function(e) {
                $("#loginButton").click(function(e) {
                    $('#loginWin').submit();
                });
            });

        </script>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>
        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-7 col-md-7">

                <div class="page-header">
                    <h1>Admin <small>Information</small></h1>
                </div>

                <div class="container col-sm-7 col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <table style="line-height : 5em;font-size : 1em">
                                <tr>
                                    <td><p>ID : <% out.print(u.getId()); %> <p></td>
                                </tr>
                                <tr>
                                    <td><p>Name : <% out.print(u.getName()); %><p></td>
                                </tr>
                                <tr>
                                    <td><p>Position : Admin <p></td>
                                </tr>
                                <tr>
                                    <td><p>Mail : <% out.print(u.getMail()); %> <p></td>
                                </tr>
                                <tr>
                                    <td><p>Tel.	 : <% out.print(u.getTel());%> <p></td>
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
