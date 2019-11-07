<!--4.MVC Program: This is view(2) -->
<%@ page import="com.lti.LoginBean"%>

<p>Login successful</p>
<%
LoginBean bean=(LoginBean)request.getAttribute("bean");
out.print("Welcome,"+bean.getName());
%>