<%@page import="com.t_shadow.DesignerModel"%>
<%@page import="com.t_shadow.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('001.png')">
<%
DesignerModel dm = new DesignerModel();
dm=(DesignerModel)session.getAttribute("dm"); 
if(dm==null)
	response.sendRedirect("DesignerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
UserDao ud = new UserDao();
int order_id = Integer.parseInt(request.getParameter("order_id"));
String date = request.getParameter("date");
boolean result = ud.UpdateOrder(order_id,date);
if(result)
	response.sendRedirect("UpdateOrderPage.jsp");
else
	response.sendRedirect("DesignerWelcomePage");
%>
</body>
</html>