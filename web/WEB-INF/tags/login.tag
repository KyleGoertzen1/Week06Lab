<%-- 
    Document   : form.tag
    Created on : Oct 17, 2017, 1:20:10 PM
    Author     : 729347
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="userName"%>

<form action="login" method="POST">
        Username: <input type="text" name="uname" value="${username}"><br>
        Password: <input type="password" name="pword" value="${password}"><br>
        <input type="submit" value="Login"><br>
        <input type="checkbox" name="remember"> Remember me
</form>