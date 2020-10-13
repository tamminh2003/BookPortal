<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bookstore"
user="root" password="mysql"/>

<%
//Getting Request parameters
%>
<c:set var = "booktitle" scope = "session" value="${param.booktitle}"/>
<% //STEP 3: Open a connection
//STEP 4: Execute a query%>
<sql:query dataSource="${snapshot}" var="result">
select count(*) as kount from books
where booktitle = ?
<sql:param value="${booktitle}" />
</sql:query>
<%//STEP 5: Extract data from result set%>
<c:forEach items="${result.rows}" var="r">
<c:choose>
<c:when test="${r.kount > 0}">
<a href="${pageContext.request.contextPath}/SearchBookServlet?action=search&id"/></a>
</c:when>
<c:otherwise>
<c:out value="${booktitle} does not exists"/>
</c:otherwise>
</c:choose>
</c:forEach>
<br>
<a href="${pageContext.request.contextPath}/BookListServlet?action=insert">Back</a>

</body>
</html>