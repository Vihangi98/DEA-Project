<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendor Page</title>
    </head>
    <body>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>

        <%
            if(session.getAttribute("user")==null)
            {
                response.sendRedirect("../../vend_login.jsp");
            }
        String email = String.valueOf(session.getAttribute("user"));    
        //String email=(String)session.getAttribute("user"); 
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "mywedding";
        String userId = "root";
        String password = "";

        try {
        Class.forName(driverName);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
        <h2 align="center"><font><strong>Vendors</strong></font></h2>
        
        <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String approvalCheck = "SELECT * FROM vendors WHERE email = '" + email + "'";
        
        resultSet = statement.executeQuery(approvalCheck);
        while(resultSet.next()){
        String s = String.valueOf(resultSet.getString("approval"));   
        //String s = (String)resultSet.getString("approval");
        if (s=="0")
        {
        %>

        <h2> Hello Pending</h2>
        <%=resultSet.getString("approval") %> 

            <% 
        }else{
            %>
                    
        <h2> Hello Approved</h2>
        <%=resultSet.getString("approval") %> 
                    
        <%
        } 
        } 
        }catch (Exception e) {
                e.printStackTrace();
                }
                
        %>


    </body>
</html>
