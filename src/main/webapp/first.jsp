<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome To JSP...........</h1>
	<p>First JSP Program</p>
	<h1>
		<%!
			int instance=11;
			int sq()
			{
				return instance*instance;
			}
		%>
		<%
			int a=10;
			int b=20;
			out.print("A Value: "+a);
			out.print("<br>");
			out.print("B Value: "+b);
			out.print("<br>");
			out.print("Addition of A And B Value is: "+(a+b));
			out.print("<br>");
			out.print("Instance Varibale Square using method: "+sq());
			out.print("<br>");
			out.print("--------------------------------------<br>");
			for(int i=1;i<=5;i++)
			{
				for(int j=1;j<=i;j++)
				{
					out.print("* ");
				}
				out.print("<br>");
			}
		%>
		<%= "Using Expression Tag Calling Method: "+sq()%>
	</h1>
</body>
</html>