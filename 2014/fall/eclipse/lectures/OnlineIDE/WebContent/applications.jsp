<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.onlineide.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applications</title>
<link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
	<h1>Applications</h1>

<%	ApplicationDAO dao = new ApplicationDAO();

	List<Application> applications = dao.selectAll();
%>	<table class="table">
<%	for(Application app : applications) {
%>		<tr>
			<td><%= app.getName() %></td>
			<td>$<%= app.getPrice() %></td>
		</tr>
<%	}
%>	</table>
</div>
</body>
</html>