<%-- 
    Document   : Dashboard
    Created on : 29/09/2014, 7:36:49 PM
    Author     : Tyler 2
--%>

<%@page import="rgms.infrastructure.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="user" class="rgms.model.User" scope="session" />

<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
        <link rel="stylesheet" type="text/css" href="../References/Styles.css" />
    </head>
    <body>
        <div class="wrapper">
            
            <div class="header">
                
            </div>
            
            <!-- http://line25.com/tutorials/how-to-create-a-pure-css-dropdown-menu -->
            <div id="dashboard">
                <ul>
                    <li>
                        My Research Groups
                        <ul>
                            <li>Group 1</li>
                            <li>Group 2</li>
                        </ul>
                    </li>
                    
                    <li>Discussion Board</li>
                    <li>
                        <%
                            Session s = (Session)request.getSession().getAttribute("session");
                            out.print(s.getUser().getFullName());
                        %>
                        
                        <jsp:getProperty name="user" property="firstName" /> <!-- Dynamically generate this-->
                        <ul>
                            <li>View Profile</li>
                            <li>Log Out</li>
                        </ul>
                    </li>
                </ul>
            </div>
            
            <div class="main">
                
            </div>
                
            <div class="footer">
                
            </div>
            
        </div>
    </body>
</html>
