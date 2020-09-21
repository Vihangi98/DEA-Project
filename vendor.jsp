<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyWedding | Vendor</title>        
    </head>
    <body>
        <div><%@include file="vend_header.jsp" %></div>
                
        <div align="center">
            <h2>Welcome Vendor</h2>
                
            <h3>User : <%= session.getAttribute("user_vend") %></h3>
            
            <table>
                <tr>
                    <td><a class="loginbtn loginbtn2" href="vendor2.jsp">Add a Post</a></td>
                    <td><a class="loginbtn loginbtn2" href="vendor2.jsp">Delete a Post</a></td>
                    <td><a class="loginbtn loginbtn2" href="vendor2.jsp">Modify a Post</a></td>
                    <td><a class="loginbtn loginbtn2" href="vendor2.jsp">View Posts</a></td>
                </tr>
            </table>
            
        </div>
    </body>
</html>
