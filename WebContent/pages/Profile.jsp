<%-- 
    Document   : Profile
    Created on : 29/09/2014, 7:37:31 PM
    Author     : Tyler 2
--%>

<%@page import="rgms.infrastructure.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty userSession}">
	<c:redirect url="Login.jsp" />
</c:if>

<!DOCTYPE html>
<html>
    <head>
        <title>My Profile</title>
        <link rel="stylesheet" type="text/css" href="../References/Styles.css" />
        <link rel="stylesheet" type="text/css" href="../References/bootstrap/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="../References/bootstrap/css/bootstrap-theme.css" />
        <script src="../References/jquery.js"></script> 
        <script src="../References/Scripts.js"></script> 
    </head>
    <body>
        <div class="wrapper">
            <div class="header">
            	<div class="headerNav"></div>
            </div>
            
            <div class="details">
                <div id="image">
                    <c:out value="${userSession.user.imageReference}"></c:out>
                </div>
                
                <div id="aboutMe">
                    <c:out value="${userSession.user.fullName}"></c:out>
                </div>
                
            </div>
            
            <div class="researchGroups">
            	
            </div>
            
            <div class="footer">
            	
            </div>
            
        </div>
    </body>
</html>
