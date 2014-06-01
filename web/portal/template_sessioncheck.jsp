<%-- 
    Document   : template_sessioncheck
    Created on : Jun 2, 2014, 4:20:29 AM
    Author     : chakree30584
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    if(session.getAttribute("user") == null){ %>
    <script>document.location = "../";</script>
    <%    if(true)return;
    }else if( ((User)session.getAttribute("user")).getPosition() == 1 ){%>
        <script>document.location = "../admin";</script>
    <% 
    }else{
        User user = (User)session.getAttribute("user");
        User updateduser = User.getById(user.getId());
        session.removeAttribute("user");
        session.setAttribute("user", updateduser);
    }
%>