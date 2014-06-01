<%-- 
    Document   : navbar
    Created on : Jun 2, 2014, 1:33:26 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="about_us.jsp">เกี่ยวกับเรา</a></li>
                <li><a href="rule.jsp">กฏการยืมจักรยาน</a></li>
                <li><a href="contact_us.jsp">ติดต่อเรา</a></li>
                <li><a href="http://www2.kmutt.ac.th/thai/con_us/index.html" target="_blank">ติดต่อมหาลัย</a></li>
                    <% if (session.getAttribute("user") != null) { %>
                <li><a href="portal/rent.jsp">ยืมจักรยาน</a></li>
                <li><a href="logout">ออกจากระบบ</a></li>
                    <% } %>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <% if (session.getAttribute("user") == null) { %>
                <button class="btn btn-lg" data-toggle="modal" data-target="#myModal"  style="margin-top:3px;">
                    <span class="glyphicon glyphicon-lock"></span> เข้าสู่ระบบ / สมัครสมาชิก
                </button>
                <% } else {
                            model.User user = (model.User) session.getAttribute("user");%>
                <a href="portal">
                <button class="btn btn-lg" style="margin-top:3px;">
                    <span class="glyphicon glyphicon-user"></span> <%=user.getName()%>
                </button>
                </a>
                <% }%>

                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h2 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-user"></span> เข้าสู่ระบบ</h2>
                            </div>
                            <div class="modal-body">
                                <form id="loginWin" class="form-horizontal" role="form" method="post" action="login">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-3 control-label">อีเมล์ : </label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email"
                                                   name="email" id="email" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-3 control-label">รหัสผ่าน : </label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password"
                                                   name="password" id="password" required>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger pull-left">ลืมรหัสผ่าน</button>				      	
                                <a href="register.jsp">
                                    <button type="button" class="btn btn-success pull-left" style="margin-left:5px;">สมัครสมาชิก</button></a>
                                <button id="loginButton" type="button" class="btn btn-primary">เข้าสู่ระบบ</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <!-- Modal -->
                <div class="modal fade" id="result" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" id="loginresult">
                                <h1><img src="assets/img/loader0.gif"> กำลังเข้าสู่ระบบ...</h1>
                            </div>
                        </div>
                    </div>
                </div>
                
                

            </ul><!--End of login-->

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>