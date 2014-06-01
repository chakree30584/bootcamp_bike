<%-- 
    Document   : changeinfo
    Created on : Jun 2, 2014, 4:16:13 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ include file="template_sessioncheck.jsp" %>
<!doctype html>
<html>
    <head>
        <title> KMUTT Bicycle Club - User Page - Change Info</title>
        <%@ include file="template_head.jsp" %>
        <script type="text/javascript">
            function samePass() {
                pass1 = document.getElementById("newPass1").value;
                pass2 = document.getElementById("newPass2").value;
                if (pass1 != pass2) {
                    document.getElementById("newPass1").value = "";
                    document.getElementById("newPass2").value = "";
                    document.getElementById("newPass1").focus();
                }
            }
        </script>
    </head>

    <body>
        <%@ include file="template_navbar.jsp" %>

        <div class="container">

            <%@ include file="template_sidebar.jsp" %>

            <div id="mid_menu" class="col-sm-12 col-md-12">

                <div class="page-header">
                    <h1>User <small>Information - Change Information</small></h1>
                </div>

                <div class="container col-sm-12 col-md-12" style="font-size : 0.85em">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form id="changeInfoUser" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">ID : </label>
                                    <div class="col-sm-10">

                                               <input type="text" class="form-control" id="inputPassword3" value="<% User u = (User) session.getAttribute("user");
                                                   out.print(u.getId()); %>" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Mail : </label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="position" placeholder="E-Mail" value="<%out.print(u.getMail());%>" disabled>
                                    </div>
                                </div>						  
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Old Password : </label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="oldPass" placeholder="Old Password" name="old">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">New Password : </label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="newPass1" placeholder="New Password" name="pass" onchange="
  if(this.checkValidity()) form.pass2.pattern = this.value;
">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Confirm New Password : </label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="newPass2" placeholder="New Password" name="pass2" onchange="
  this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');
">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Name : </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputPassword3" placeholder="Name" name="name" value="<%=u.getName()%>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Position : </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="position" value="User" disabled>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Tel. : </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="position" placeholder="Telephone number" name="tel" value="<%=u.getTel()%>">
                                    </div>
                                </div>
                                <div style="text-align : center">
                                    <button id="confirmChange" type="submit" class="btn btn-info"><span class="glyphicon glyphicon-ok"></span> Submit a change</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



            </div>

        </div>

        <%@ include file="../template_footer.jsp" %>


        <!-- Modal -->
        <div class="modal fade" id="userchangeresult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body" id="userchangetextresult">
                        <h1><img src="../assets/img/loader0.gif"> กำลังอัปเดทข้อมูล...</h1>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
