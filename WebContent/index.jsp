<%@ page language="java" import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.Cookie" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login - Gift Crowd Fund</title>
    <!-- Bootstrap core CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-login">
        <h2 class="form-login-heading">Please login</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" name="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me" name="remember-me"> Remember me
          </label>
        </div>
        <input type="submit" class="btn btn-lg btn-primary btn-block" value="Login">
        <input type="button" class="btn btn-lg btn-primary btn-block"  value="Register" onclick="window.location.href='register.jsp'">
      </form>

    </div> <!-- /container -->

	<%
		Cookie allCookie[]=request.getCookies();
        for(int n=0;n<allCookie.length;n++)
        {
        	if (allCookie[n].getName().equals("username"))
        	{ 
        		%>
				<script>
				window.location.href='homepage.jsp';
				</script>
				<%
        	}
        			
        }
	
		
		String inputEmail=null;
		String inputPassword=null;
		
		if (request.getParameter("inputEmail")!=null)
		{
			inputEmail=request.getParameter("inputEmail");
			inputPassword=request.getParameter("inputPassword");
			
			ResultSet resultset=null;
	        String RdsUrl="jdbc:mysql://cs6998.cxjfpz461m3o.us-east-1.rds.amazonaws.com:3306/CS6998_project";
	        String RdsUsername="cs6998";
	        String RdsPassword="columbia";	
			Connection connection = DriverManager.getConnection(RdsUrl, RdsUsername, RdsPassword); 
			Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			resultset = statement.executeQuery("SELECT * FROM User WHERE username='"+inputEmail+"' AND password='"+inputPassword+"'");
			
			if (resultset.next()==true)
			{
				Cookie usernameCookie =new Cookie("username",resultset.getString(1));
				if (Integer.parseInt(request.getParameter("remember-me"))==1)
				{
					usernameCookie.setMaxAge(-1);
				}
				else
				{
					usernameCookie.setMaxAge(2592000);
				}
				response.addCookie(usernameCookie);
				%>
				<script>
				window.location.href='homepage.jsp';
				</script>
				<%
			}
			else
			{
				%>
				<script>alert("Incorrect username or password!");</script>
				<%
			}
			
			
		}


	%>
    
    

    
  </body>
</html>