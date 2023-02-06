 
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

</head>
<body>
	
    <% if( String.valueOf(session.getAttribute("logged")).compareTo("true")!=0){
		 response.sendRedirect("first.jsp");	
	}
	%>
	<%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
%>
    <div class="container">
        <div class="navigation">
          <div class="menu-toggle"></div>
          <ul class="list">
            <li class="list-item" style="--color:#f44336"><a href="Adminhome.jsp">
              <span class="icon">
                <ion-icon name="home-outline"></ion-icon>
              </span>
              <span class="text">Home</span>
              </a></li>
            <li class="list-item active" style="--color:#ff6801"><a href="Adminadd.jsp">
              <span class="icon">
                <ion-icon name="person-add"></ion-icon>
            </span>
              <span class="text active">Add Students</span>
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
                <ion-icon src="http://cdn.onlinewebfonts.com/svg/img_90902.png"></ion-icon>
            </span>
              <span class="text">Log out</span>
              </a></li>
          </ul>
        </div>
        <div class="desc">
        	
            <h2>Student <span style="color:#f44336;"></span>details added successfully !</h2>
            
            <!-- <p><code><em>User ID:</em></code><span style="color:#f44336;">&#9; </span>, </p> -->
            <!-- <p><code><em>User Role:</em></code><span style="color:#f44336;">&#9;Teacher</span> </p>-->
          </div>
      </div>
      
		

<script src="${pageContext.request.contextPath}\script\admin.js"></script>
<script>$(function(){
  $("a").click(function(evt){
      var link = $(this).attr("href");
      setTimeout(function() {
          window.location.href = link;
      }, 15000);
  });
});</script>
    </body>

</html>