<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import="java.util.ArrayList"%> 

<% /* For forEach */ 
ArrayList<String> countryNamesList=new ArrayList<String>();
countryNamesList.add("USA");
countryNamesList.add("India");
countryNamesList.add("Australia");
request.setAttribute("countryNamesList",countryNamesList);
%>
<html>
<head>
<title>JSTL Core tag</title>
</head>
<body>

<!-- For c:set, c:if and c:out -->

<%-- <c:set var="num" value="100"></c:set>
<c:if test="${num>0}">Num=<c:out value="${num}"/>
</c:if><br>
<c:set var="website" value="www.google.com"></c:set>
<c:out value="${website}"></c:out>
<c:out value="${'Welcome'}"></c:out><br>
<c:out value="${'Welcome'}"></c:out> --%>

<!-- For forEach -->

<c:forEach items="${countryNamesList}" var="item" varStatus="status">
	${status.count}) ${item}<br/>
</c:forEach>
</body>
</html>