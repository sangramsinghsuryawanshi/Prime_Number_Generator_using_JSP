<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	/* General Styles */
body {
    font-family: 'Roboto', sans-serif;
    background: linear-gradient(135deg, #1e3c72, #2a5298, #76b2fe);
    color: #ffffff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background: rgba(255, 255, 255, 0.1);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(15px);
    -webkit-backdrop-filter: blur(15px);
    border: 1px solid rgba(255, 255, 255, 0.3);
    animation: float 6s ease-in-out infinite, glow 2s ease-in-out infinite alternate;
}

label {
    font-size: 1.2em;
    color: #76b2fe;
    text-shadow: 1px 1px 10px rgba(118, 178, 254, 0.7);
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 20px;
    border: none;
    border-radius: 5px;
    background: rgba(255, 255, 255, 0.3);
    color: #ffffff;
    font-size: 1em;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    transition: box-shadow 0.3s ease-in-out, transform 0.3s ease-in-out;
}

input[type="text"]:focus,
input[type="number"]:focus {
    outline: none;
    box-shadow: 0 4px 25px rgba(118, 178, 254, 0.8);
    transform: scale(1.05);
}

input[type="submit"] {
    background: linear-gradient(135deg, #ff5f6d, #ffc371);
    border: none;
    border-radius: 50px;
    padding: 10px 20px;
    color: #ffffff;
    font-size: 1.2em;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
    box-shadow: 0 4px 15px rgba(255, 95, 109, 0.4);
    animation: pulse 1.5s infinite;
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #ffc371, #ff5f6d);
    transform: scale(1.15);
    box-shadow: 0 6px 20px rgba(255, 95, 109, 0.6);
}

/* Floating Animation */
@keyframes float {
    0%, 100% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-10px);
    }
}

/* Glow Animation */
@keyframes glow {
    from {
        box-shadow: 0 0 10px rgba(118, 178, 254, 0.5);
    }
    to {
        box-shadow: 0 0 20px rgba(118, 178, 254, 1);
    }
}

/* Pulse Animation */
@keyframes pulse {
    0% {
        transform: scale(1);
        box-shadow: 0 0 10px rgba(255, 95, 109, 0.4);
    }
    50% {
        transform: scale(1.05);
        box-shadow: 0 0 20px rgba(255, 95, 109, 0.6);
    }
    100% {
        transform: scale(1);
        box-shadow: 0 0 10px rgba(255, 95, 109, 0.4);
    }
}

/* Responsive Design */
@media (max-width: 600px) {
    form {
        padding: 15px;
    }

    label {
        font-size: 1em;
    }

    input[type="submit"] {
        font-size: 1em;
    }
}

</style>
</head>
<body>
	<h1>
	<%--
		String name = request.getParameter("name");
		int num = Integer.parseInt(request.getParameter("no"));
		out.print("User Name is: "+name);
		out.print("<br>");
		int pal=num;
		int rec=0;
		while(num!=0)
		{
			int rem=num%10;
			rec=(rec*10)+rem;
			num=num/10;
		}
		if(rec==pal)
		{
			out.print("User Number is Palindrome:" );
		}
		else
		{
			out.print("User Number is Not Palindrome:" );
		}
	--%>
	<%
		String name = request.getParameter("name");
		int num = Integer.parseInt(request.getParameter("no"));
		int n=1;
		out.print("User Name is: "+name);
		out.print("<br>");
		out.print("Prime Series "+n+" To "+num+" is: ");
		out.print("<br>");
		for(int i=n;i<num;i++)
		{
			int c=0;
			for(int j=1;j<=i;j++)
			{
				if(i%j==0)
				{
					c++;
				}
			}
			if(c==2)
			{
				out.print(i);
				out.print("<br>");
			}
		}
	%>
	</h1>
</body>
</html>