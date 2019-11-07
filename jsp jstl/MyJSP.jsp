<%@ page language="java"%> <!-- special to jsp -->
<!DOCTYPE html>
<html>
<body>
<h1>This is a JSP page</h1>
<%
	int i=5;
	int j=30;
	int sum=i+j;
	out.print("sum="+sum);
%>
<br>
<%= sum %>
<hr>
<h6>This was a JSP page</h6>

</body>
</html>