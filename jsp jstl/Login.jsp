<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>

<body>
<%
	String msg=null;
	if(request.getParameter("login")!=null){
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		if("tom".equals(userName)&&"jerry".equals(password)){
			response.sendRedirect("Success.jsp");
		} else{
			msg="Passwsord and Username do not match.";
		}
	}

	if(msg!=null){
		out.print("<span style='color:red'>"+msg+"</span>");
	}
%>
<form method="post">
UserName<input type="text" name="userName"/><br>
Password<input type="password" name="password"/><br>
<input type="submit" name="login" value="Login"/><br>
</form>
</body>
</html>