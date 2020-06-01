<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Registration page</title>
    </head>
    <style>
        * {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
body {
	background: #175690;
	font-family: 'open sans', sans-serif;
}
.forms {
	background: #fff;
	box-shadow: 0 0 3px #000;
	margin: 30px auto;
	max-width: 500px;
	overflow: hidden;
	position: relative;
	padding: 0;
}
.forms h1 {
	padding: 0 0 20px 0;
	font-size: 26px;
	color: #666;
	font-weight: lighter;
	text-align: center;
}
.forms form { padding: 30px; }
#signup { display: none; }
.forms .tab-group {
	list-style: none;
	padding: 0;
	margin: 0;
}
.forms .tab-group:after {
	content: "";
	display: table;
	clear: both;
}
.forms .tab-group li a {
	display: block;
	text-decoration: none;
	padding: 15px;
	background: #e5e6e7;
	color: #888;
	font-size: 20px;
	float: left;
	width: 50%;
	text-align: center;
	border-top: 3px solid transparent;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}
.forms .tab-group li a:hover {
	background: #dedfdf;
	color: #666;
}
.forms .tab-group .active a {
	background: #fff;
	color: #444;
	border-top: 3px solid #73cf41;
}
.forms input {
	font-size: 16px;
	display: block;
	width: 100%;
	padding: 10px 20px;
	border: 1px solid #ddd;
	color: #666;
	border-radius: 0;
	margin-bottom: 10px;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}
.forms input:focus {
	outline: 0;
	border-color: #2e5ed7;
}
.forms label {
	font-size: 16px;
	font-weight: normal;
	color: #666;
	margin-bottom: 5px;
	display: block;
}
.forms .button {
	border: 0;
	outline: none;
	border-radius: 0;
	padding: 10px 0;
	font-size: 18px;
	font-weight: 300;
	text-transform: uppercase;
	letter-spacing: 2px;
	background: #73cf41;
	color: #ffffff;
	cursor: pointer;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}
.forms .button:hover, .button:focus { background: #56ae26; }
.text-p { text-align: right; }
.text-p a { color: #1383ea; }
        
    </style>
    <body>

        
        
        <div class="forms">
	<ul class="tab-group">
		<li class="tab active"><a href="#login">Log In</a></li>
		<li class="tab"><a href="#signup">Sign Up</a></li>
	</ul>
	<form action="getUserDataByUserPass" method="get" id="login">
	      <h1>Login on Placement Season</h1>
	      <div class="input-field">
	        <label for="username">username</label>
	        <input type = "text" name = "username">
	        <label for="password">Password</label> 
	        <input type="password" name="password" required/>
	        <input type="submit" value="Login" class="button"/>
	      </div>
	  </form>
	  <form action="addProduct" method="post" id="signup">
	      <h1>Sign Up on w3iscool</h1>
	      <div class="input-field">
	        
                  <input type="text" name="username" placeholder="username"/>
                <input type="text" name="password" placeholder="password"/>
                <input type="text" name="dob" placeholder="date of birth"/>
                <input type="text" name="remainder_title" placeholder="remainder_title"/>
                <input type="number" name="phone_number" placeholder="phone_number"/>
                <input type="text" name="remainder_date" placeholder="remainder_date"/>
                <input type="text" name="start_date" placeholder="start_date"/>
                <input type="text" name="end_date" placeholder="end_date"/>
	        <input type="submit" value="Sign up" class="button" />
	      </div>
	  </form>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript">
$(document).ready(function(){
	  $('.tab a').on('click', function (e) {
	  e.preventDefault();
	  
	  $(this).parent().addClass('active');
	  $(this).parent().siblings().removeClass('active');
	  
	  var href = $(this).attr('href');
	  $('.forms > form').hide();
	  $(href).fadeIn(500);
	});
});
</script>
        
            </body>

</html>
