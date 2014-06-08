<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Cookie adminName = new Cookie("name", request.getParameter("name"));

	adminName.setMaxAge(60*60*24);
	
	response.addCookie(adminName);
%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>	
		<li><p>Admin Name:
		<%= request.getParameter("name") %>
		</p></li>
	</ul>
</body>
</html>