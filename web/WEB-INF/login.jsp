<%-- 
    Document   : login
    Created on : Oct 2, 2017, 6:24:42 PM
    Author     : 729347
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sait" uri="/WEB-INF/tlds/sait.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sait:DebugTag>

            Remote Host: ${pageContext.request.remoteHost}<br />

            Session ID: ${pageContext.session.id}

        </sait:DebugTag>
        <h1>Login</h1>
    <ct:login userName="${username}"/>
${errorMessage}
<c:if test="${error}">
${logOutMessage}
</c:if>
    </body>
</html>
