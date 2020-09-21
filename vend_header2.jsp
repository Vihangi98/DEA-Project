<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../css/loggedstyle.css"/>
    </head>
    <body>
        <%
            if(session.getAttribute("user_vend")==null)
            {
                response.sendRedirect("../../vend_login.jsp");
            }
            
        %>
        <div class="site-logo">
            <h1>My<span>Wedding</span>.</h1>
	</div>
        <div align="right">
            <form action="../../VendLogoutServlet" method="POST">
                <a class="loginbtn loginbtn2" href="vendor.jsp">&lt&ltGo Back to Menu</a>
                <input type="submit" value="Logout" class="loginbtn loginbtn1">
            </form>
        </div><br>
    </body>
</html>
