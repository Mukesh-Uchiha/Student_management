 <%@page import = "com.studentManagementSystem.AdminLogin" %>
 <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\adminstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css" integrity="sha512-xX2rYBFJSj86W54Fyv1de80DWBq7zYLn2z0I9bIhQG+rxIF6XVJUpdGnsNHWRa6AvP89vtFupEPDP8eZAtu9qA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/regular.min.css" integrity="sha512-YoxvmIzlVlt4nYJ6QwBqDzFc+2aXL7yQwkAuscf2ZAg7daNQxlgQHV+LLRHnRXFWPHRvXhJuBBjQqHAqRFkcVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/solid.min.css" integrity="sha512-qzgHTQ60z8RJitD5a28/c47in6WlHGuyRvMusdnuWWBB6fZ0DWG/KyfchGSBlLVeqAz+1LzNq+gGZkCSHnSd3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.css" integrity="sha512-1hsteeq9xTM5CX6NsXiJu3Y/g+tj+IIwtZMtTisemEv3hx+S9ngaW4nryrNcPM4xGzINcKbwUJtojslX2KG+DQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css" integrity="sha512-xX2rYBFJSj86W54Fyv1de80DWBq7zYLn2z0I9bIhQG+rxIF6XVJUpdGnsNHWRa6AvP89vtFupEPDP8eZAtu9qA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	 -->
	
</head>
<body>
	<%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
%>
	<%
		session.setAttribute("logged","true");%>
		
    <div class="container">
        <div class="navigation">
          <div class="menu-toggle"></div>
          <ul class="list">
            <li class="list-item active" style="--color:#f44336"><a href="Adminhome.jsp">
              <span class="icon">
                <ion-icon name="home-outline"></ion-icon>
              </span>
              <span class="text">Home</span>
              </a></li>	
            <li class="list-item" style="--color:#ff6801"><a href="Adminadd.jsp">
              <span class="icon">
                <ion-icon name="person-add"></ion-icon>
            </span>
              <span class="text">Add Students</span>
              </a></li>
            <li class="list-item" style="--color:#0fc70f"><a href="Adminview.jsp">
              <span class="icon">
                <ion-icon name="eye"></ion-icon>
            </span>
              <span class="text">View Students</span>
              </a></li>
            <li class="list-item" style="--color:#2196f3"><a href="AdminDetailsUpdate.jsp">
              <span class="icon">
              
                <i class="fa fa-pencil " aria-hidden="true"></i>
            </span>
              <span class="text">Update Student</span>
              </a></li>
               <li class="list-item" style="--color:#0fc70f"><a href="logout">
              <span class="icon"> 
              <i class="fa-solid fa-hand-wave" ></i>
		       <!-- <i class="fa fa-hand-wave " style="font-family:fontawesome !important;"  aria-hidden="true"></i> --> 
            </span>
              <span class="text">Log out</span>
              </a></li>
          </ul>
        </div>
        <div class="desc">
            <h2>Welcome <span style="color:#f44336;"></span>to the Admin Side</h2>
            
            <p><code><em>User name:</em></code><span style="color:#f44336;">&#9;<%=session.getAttribute("AdminUname")%></span>, </p>  
            <p><code><em>User Role:</em></code><span style="color:#f44336;">&#9;Teacher</span> </p>
          </div>
      </div>
      
      <!-- jakarta.servlet.RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminpage.jsp");
                 requestDispatcher.forward(request, response);
                  -->


<script src="${pageContext.request.contextPath}\script\admin.js"></script>
<script>$(function(){
  $("a").click(function(evt){
      var link = $(this).attr("href");
      setTimeout(function() {
          window.location.href = link;
      }, 15000);
  });
});</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/solid.min.js" integrity="sha512-C92U8X5fKxCN7C6A/AttDsqXQiB7gxwvg/9JCxcqR6KV+F0nvMBwL4wuQc+PwCfQGfazIe7Cm5g0VaHaoZ/BOQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </body>

</html>