<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
    	<form method="post" action="/login">
    		<input type="text" name="username" placeholder="Username">
    		<input type="password" name="password" placeholder="Password">
    		<input type="submit" value="Login">
    	</form>
    </body>
</html>