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

                $('#search').on("submit", function(e) {
                    $.ajax({
                        type: 'POST',
                        data: $('#search').serialize(),
                        url: 'search1',
                        dataType: 'html',
                        success: function(result) {
                            $("#resultContainer").html(result);
                        }
                    });
                    return false;
                    e.preventDefault();
                });

                $("#resultContainer").on("click", ".emailResult", function(e) {
                    $.ajax({
                        type: 'POST',
                        data: {"id": this.id},
                        url: 'search2',
                        dataType: 'html',
                        success: function(result) {
                            $("#resultContainer").slideUp(500);
                            $("#resultViewContainer").slideDown(500);
                            $("#resultViewContainer").html(result);
                        }
                    });
                })
            });
        </script>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12" style="height:auto; padding-bottom:40px;">

                <div class="page-header">
                    <h1>User <small>Information - Search</small></h1>
                </div>

                <form id="search">
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">E-mail : </label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="searchbox" name="email" placeholder="search by email">
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
