<%-- 
    Document   : register
    Created on : Jun 2, 2014, 3:07:20 AM
    Author     : chakree30584
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Registeration</title>
    <%@ include file="template_head.jsp" %>
</head>
<body>
    <%@ include file="template_navbar.jsp" %>
    <div class="container">
        <div class="row animated fadeInDown">
            <div class="col-md-6">
                <form role="form" method="post" action="AddUser" id="regisform">
                    <h1>ลงทะเบียน | เช่ายืมจักรยาน</h1>
                    <p>โปรดกรอกข้อมูลพื้นฐานด้านล่าง สำหรับการสร้างผู้ใช้ใหม่</p>

                    <div class="form-group">
                        <label for="exampleInputEmail1">อีเมล์</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"
                               name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">รหัสผ่าน</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"
                               name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" style="width:300px;">ชื่อ - สกุล</label>
                        <input type="text" class="form-control" name="name" id="exampleInputName" placeholder="Name - Surname" onblur="CheckText(this.value);"
                               name="name" required>
                        <p id="error"></p>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">เบอร์โทรติดต่อ</label>
                        <input type="tel" class="form-control" id="exampleInputTel" placeholder="Mobile Phone"
                               name="tel" required>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" required> ยืนยันความถูกต้อง
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary">ยืนยันการลงทะเบียน</button>
                </form></div>
            <div class="col-md-6">
                <h3>ศูนย์รวมข้อมูลกิจกรรมสังคมจักรยานในรั้ว มจธ. KMUTT</h3><Br>
                <center><a href="https://www.facebook.com/KmuttCyclistCircle/timeline" target="_blank"><img src="assets/img/2.jpg"  height="350px"></a></center>
            </div>
            
        </div>
    </div>

    <!-- Modal -->
                <div class="modal fade" id="regisresult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" id="registextresult">
                                <h1><img src="assets/img/loader0.gif"> กำลังลงทะเบียน...</h1>
                            </div>
                        </div>
                    </div>
                </div>
    
</body>
</html>