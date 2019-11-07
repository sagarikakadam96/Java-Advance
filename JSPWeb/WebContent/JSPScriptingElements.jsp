<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting elements</title>
</head>

<%! /* DECLARATION(done in init->done only once) */
	int count=0; /* Variables inside declaration are like class level instance variables. Values will be retained across user requests. */
	void incrementCount(){
	count++;
}
%>

<body>
<h1 style="margin-left: 25%;">Sample Page for scripting elements</h1>
<h2>
<% /* SCRIPTLET(logic)*/
	int localVar=0;
	out.print("This page is viewed "+count+" times");
	incrementCount();
%>
</h2>
The value of local variable is
<%=localVar%> <!-- EXPRESSION(for printing)-->
<%localVar++;%>  <!-- Variables inside scriptlet are like local variables. Once method execution is complete the value stored would be lost -->
<%=localVar%>
</body>
</html>