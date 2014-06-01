<%-- 
    Document   : bikeinfo
    Created on : Jun 2, 2014, 5:23:50 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - User Page - Rent Manage System</title>
        <%@ include file="template_head.jsp" %>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12">

                <div class="page-header">
                    <h3>Rent management system<small> - bike search</small></h3>
                </div>

                <form role="form" action="/bike/bquery" method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Bike ID : </label>
                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Bike ID" name="sub">
                    </div>
                    <button type="submit" class="btn btn-warning" >Submit</button>
                </form>

                <div class="page-header">
                    <h3>Rent management system<small> - bike return manager</small></h3>
                </div>

                <form role="form" action="/bike/end">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Rent's ID : </label>
                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter ID" name="id">
                    </div>
                    <button type="submit" class="btn btn-warning">Submit</button>
                </form>

                <div class="page-header">
                    <h3>Rent management system<small> - point manager</small></h3>
                </div>

                <form role="form" action="/bike/plus">
                    <div class="form-group col-sm-6 col-md-6">
                        <label for="exampleInputEmail1">ID  : </label>
                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter ID" name="id">
                    </div>
                    <div class="form-group col-sm-6 col-md-6">
                        <label for="exampleInputPassword1">Increment amount : </label>
                        <input type="text"= class="form-control" id="exampleInputEmail1" placeholder="Enter amount" name="plus" >
                    </div>
                    <button type="submit" class="btn btn-warning">Submit</button>
                </form>

            </div>

        </div>

        <%@ include file="../template_footer.jsp" %>
    </body>
</html>
