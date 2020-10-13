<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Book Store</title>
</head>
<body style = "font-family:arial,serif;">
    <div align="center" cellpadding=10>
    
        <table  >

            <h2>Welcome to the Bookstore</h2>
 		<center>
        <h4>
         <a href="${pageContext.request.contextPath}/BookListServlet?action=list">Veiw All Books</a>
        </h4>
 		</center>
 		
 		    </table>
    </div> 

</body>

</body>
</html>