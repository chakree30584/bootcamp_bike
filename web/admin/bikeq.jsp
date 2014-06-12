<%-- 
    Document   : bikeq
    Created on : Jun 2, 2014, 10:01:57 AM
    Author     : chakree30584
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Bicycle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bike Query</h1>
       <%ArrayList<Bicycle> a = (ArrayList<Bicycle>)request.getAttribute("query");%>
       <table style="border:2px solid black">
       <% for(Bicycle b:a){
           out.print("<tr>");
           out.print("<td>ID :"+b.getBid()+"<br></td>");
           out.print("<td>Status:"+b.getBstatus()+"<br></td>");
           out.print("<td>Model:"+b.getModel()+"<br></td>");
           out.print("<td>Who rent id: "+b.getWrent()+"<br></td>");
           out.print("</tr>");
       }%> 
       </table>
    </body>
</html>
