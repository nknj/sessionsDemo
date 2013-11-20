<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        
        <!-- ALTERNATIVE SOLUTION -->
        <!--
            <c:choose>
                <c:when test="${param.next == null}">
                    <form method="post" action="/login">
                </c:when>
                <c:otherwise>
                    <form method="post" action="/login?next=${param.next}">
                </c:otherwise>
            </c:choose>
        -->
        
        <form method="post" action="/login">
    		<input type="text" name="username" placeholder="Username">
    		<input type="password" name="password" placeholder="Password">
            <c:if test="${param.next != null}">
                <input type="hidden" name="next" value="${param.next}">
            </c:if>
    		<input type="submit" value="Login">
    	</form>
    </body>
</html>