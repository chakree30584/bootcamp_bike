<%-- 
    Document   : template_sidebar.jsp
    Created on : Jun 2, 2014, 4:18:45 AM
    Author     : chakree30584
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="side_menu" class="col-sm-4 col-md-4">
                <div style="text-align : center">
                    <div class="well"  style="margin-top : 1em"><h3>Welcome !!<% User a = (User) session.getAttribute("user");
                                        out.print(a.getName());%></h3></div>
                </div>

                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="text-decoration : none">
                                    Information
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ol style="text-indent : -2px">
                                    <li><a href="./" style="text-decoration : none;color : #353535"><span class="glyphicon glyphicon-user"></span> User Information</a></li>	      		
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="text-decoration : none">
                                    Rent System
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ol style="text-indent : -2px">
                                    <li><a href="rent.jsp" style="text-decoration : none;color : #353535"><span class="glyphicon glyphicon-lock"></span> Rent System</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="text-decoration : none">
                                    Report / Feedback
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ol style="text-indent : -2px">
                                    <li><span class="glyphicon glyphicon-inbox"></span> Problem Inbox</li>
                                    <li><span class="glyphicon glyphicon-bullhorn"></span> Feedback</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div> <!-- End of Panel group-->

            </div>