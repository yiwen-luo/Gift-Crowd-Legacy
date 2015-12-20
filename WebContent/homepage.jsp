<%@ page language="java" import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.Cookie" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%-- <%@ page import="org.json.simple.JSONObject"%> --%>
<%@ page import="org.json.simple.JSONArray"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="dashboard.css">

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

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Gift Crowd Fund</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Message</a></li>
            <li><a href="#">Log out</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active" id = "clickhome"><a href="#">Home</a></li>
            <li id = "clickmywish"><a href="#">Wish</a></li>
            <li id = "clickmysupport"><a href="#">Support</a></li>
            <li id = "clickfriends"><a href="#">Friends</a></li>
            <li id = "clicksearch"><a href="#">Search</a></li>
            <li id = "clicksettings"><a href="#">Settings</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id = "homepage">
          <h2 class="page-header">My Home</h2>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Name</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <br>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </div>

          <h2 class="sub-header">Activity History</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,003</td>
                  <td>libero</td>
                  <td>Sed</td>
                  <td>cursus</td>
                  <td>ante</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>dapibus</td>
                  <td>diam</td>
                  <td>Sed</td>
                  <td>nisi</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id = "friendpage">
          <ul class="list-group" id="friend_list">
            <li class="list-group-item" style="cursor:pointer;">friend 1</li>
            <li class="list-group-item" style="cursor:pointer;">friend 2</li>
            <li class="list-group-item" style="cursor:pointer;">friend 3</li>
            <li class="list-group-item" style="cursor:pointer;">friend 4</li>
            <li class="list-group-item" style="cursor:pointer;">Vestibulum at eros</li>
            <li class="list-group-item" style="cursor:pointer;">Cras justo odio</li>
            <li class="list-group-item" style="cursor:pointer;">Dapibus ac facilisis in</li>
            <li class="list-group-item" style="cursor:pointer;">Morbi leo risus</li>
            <li class="list-group-item" style="cursor:pointer;">Porta ac consectetur ac</li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id = "wishpage">
          <ul class="list-group">
            <li class="list-group-item" style="cursor:pointer;">wish 1</li>
            <li class="list-group-item" style="cursor:pointer;">wish 2</li>
            <li class="list-group-item" style="cursor:pointer;">wish 3</li>
            <li class="list-group-item" style="cursor:pointer;">wish 4</li>
            <li class="list-group-item" style="cursor:pointer;">wish 5</li>
            <li class="list-group-item" style="cursor:pointer;">Cras justo odio</li>
            <li class="list-group-item" style="cursor:pointer;">Dapibus ac facilisis in</li>
            <li class="list-group-item" style="cursor:pointer;">Morbi leo risus</li>
            <li class="list-group-item" style="cursor:pointer;">Porta ac consectetur ac</li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id = "supportpage">
          <ul class="list-group">
            <li class="list-group-item" style="cursor:pointer;">support 1</li>
            <li class="list-group-item" style="cursor:pointer;">support 2</li>
            <li class="list-group-item" style="cursor:pointer;">support 3</li>
            <li class="list-group-item" style="cursor:pointer;">support 4</li>
            <li class="list-group-item" style="cursor:pointer;">Vestibulum at eros</li>
            <li class="list-group-item" style="cursor:pointer;">Cras justo odio</li>
            <li class="list-group-item" style="cursor:pointer;">Dapibus ac facilisis in</li>
            <li class="list-group-item" style="cursor:pointer;">Morbi leo risus</li>
            <li class="list-group-item" style="cursor:pointer;">Porta ac consectetur ac</li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id = "searchpage">
          <div class="col-lg">
            <form>
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button">Search</button>
                </span>
              </div><!-- /input-group -->
            </form>
            <br>
            <ul class="list-group">
              <li class="list-group-item" style="cursor:pointer;">Cras justo odio</li>
              <li class="list-group-item" style="cursor:pointer;">Dapibus ac facilisis in</li>
              <li class="list-group-item" style="cursor:pointer;">Morbi leo risus</li>
              <li class="list-group-item" style="cursor:pointer;">Porta ac consectetur ac</li>
              <li class="list-group-item" style="cursor:pointer;">Vestibulum at eros</li>
            </ul>
          </div><!-- /.col-lg-6 -->
        </div>
      </div>
    </div>
  </body>
  
 
 <% 
 	String username=null;
	Cookie allCookie[]=request.getCookies();
	for(int n=0;n<allCookie.length;n++)
	{
		if (allCookie[n].getName().equals("username"))
	 	{ 
	 		username=allCookie[n].getValue();
	 	}
	 			
	}
	if (username.equals(null))
	{ 
		%>
		<script>
		window.location.href='index.jsp';
		</script>
		<%
	}
	
 	ResultSet resultset=null;
 	String RdsUrl="jdbc:mysql://cs6998.cxjfpz461m3o.us-east-1.rds.amazonaws.com:3306/CS6998_project";
 	String RdsUsername="cs6998";
 	String RdsPassword="columbia";	
	Connection connection = DriverManager.getConnection(RdsUrl, RdsUsername, RdsPassword); 
	Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet friendSet=statement.executeQuery("SELECT friendUsername FROM Friends WHERE username='"+username+"' AND confirmation='1'");
	
	JSONArray friendArray = new JSONArray();  	
	while (friendSet.next()==true)
	{
		friendArray.add(friendSet.getString(1));
	}
	friendArray.add("1");
	friendArray.add("2");
	String friendArrayjson = friendArray.toString();
 
 %>
  <script type="text/javascript">

  showitem('#homepage');

  $( "#clickhome" ).click(function() {
    activeitem("#clickhome");
    showitem('#homepage');
  });

  $( "#clickmywish" ).click(function() {
    activeitem("#clickmywish");
    showitem('#wishpage');
  });

  $( "#clickmysupport" ).click(function() {
    activeitem("#clickmysupport");
    showitem('#supportpage');
  });

  $( "#clickfriends" ).click(function() {
    activeitem("#clickfriends");
    showitem('#friendpage');
    $("#friend_list").html("");
    var friends = <%=friendArrayjson%>;
    for(var i = 0; i < friends.length; i++)
    {
    	$("#friend_list").append(
    		"<li class='list-group-item' style='cursor:pointer;'>" + friends[i] + "</li>"
    	);
    }
	console.log(friends);
  });

  $( "#clicksearch" ).click(function() {
    activeitem("#clicksearch");
    showitem('#searchpage');
  });

  $( "#clicksettings" ).click(function() {
    activeitem("#clicksettings");

  });

  function activeitem(itemid) {
    var ids = ["#clickhome", "#clickmywish", "#clickmysupport", "#clickfriends", "#clicksettings", "#clicksearch"];
    for (var i = 0; i < ids.length; i++) {
      if(itemid == ids[i]) {
        $(itemid).attr('class', 'active');
      }
      else {
        $(ids[i]).attr('class', '');
      }
    }
  }

  function showitem(itemid) {
    var ids = ["#homepage", "#friendpage", "#searchpage", "#wishpage", "#supportpage"];
    for (var i = 0; i < ids.length; i++) {
      if(itemid == ids[i]) {
        $(itemid).show();
      }
      else {
        $(ids[i]).hide();
      }
    }
  }

  </script>
</html>
