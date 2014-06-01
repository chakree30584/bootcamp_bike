<%-- 
    Document   : usersearch
    Created on : Jun 2, 2014, 5:21:41 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - Admin Page - User Info</title>
        <%@ include file="template_head.jsp" %>
        <script type="text/javascript">
            $(document).ready(function(e) {
                $("#confirmSearch").click(function(e) {
                    $('#search').submit();
                    $("#resultContainer").slideDown(500);
                    $("#resultViewContainer").slideUp(500);
                });
                $("#search").on("submit", function(e) {
                    var output = '<div class="emailResult animated flipInX" id="123">mono_omyim@gmail.com</div>' +
                            '<div class="emailResult animated flipInX" id="124">mono_omyim2@gmail.com</div>';
                    $("#resultContainer").html(output);
                    e.preventDefault();
                    return false;
                });

                $("#resultContainer").on("click", ".emailResult", function(e) {
                    $("#resultContainer").slideUp(500);
                    $("#resultViewContainer").html("ข้อมูลของ ID: " + this.id)
                    $("#resultViewContainer").slideDown(500);
                })
            });
        </script>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12">

                <div class="page-header">
                    <h1>User <small>Information - Search</small></h1>
                </div>

                <form id="search">
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">E-mail : </label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="search" placeholder="search by email">
                        </div>

                        <div class="col-sm-4">
                            <button id="confirmSearch" type="button" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Search</button>
                        </div>
                    </div>
                </form>
                <br><br>

                <div id="resultContainer">
                </div>
                <div id="resultViewContainer">
                </div>


            </div>

        </div>

        <%@ include file="../template_footer.jsp" %>
        
    </body>
</html>
