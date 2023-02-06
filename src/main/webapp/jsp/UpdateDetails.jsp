<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\addstyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\adminstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
%>
	<%! Connection con;
		Statement stmt;
		ResultSet rs;
		static String rollno,name,degree,dept,joindate,dob,bgp,mobile,gender,address,email,tenth,twelvth,diploma;
		%>
		<% if( String.valueOf(session.getAttribute("logged")).compareTo("true")!=0){
		 response.sendRedirect("first.jsp");	
	}
	%>
	<%
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con= null;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
    PreparedStatement stmt = con.prepareStatement("select * from sms_stddatabase where RollNo=?");
    stmt.setString(1, request.getParameter("rollno"));
    ResultSet rs=stmt.executeQuery();
    while(rs.next()){
    	rollno=rs.getString("RollNo");
    	name=rs.getString("name");
    	degree=rs.getString("Degree");
    	dept=rs.getString("Dept");
    	joindate=rs.getString("joindate");
    	dob=rs.getString("dob");
    	bgp=rs.getString("bloodgp");
    	mobile=rs.getString("mobile");
    	gender=rs.getString("gender");
    	address=rs.getString("address");
    	email=rs.getString("email");
    	tenth = rs.getString("tenth");
    	twelvth=rs.getString("twelvth");
    	diploma = rs.getString("diploma");
    }
    if(rollno==null)
    	response.sendRedirect(request.getContextPath() + "/jsp/nouser.jsp");
    
	
	%>
    <div class="container">
        <div class="navigation">
          <div class="menu-toggle"></div>
          <ul class="list">
            <li class="list-item " style="--color:#f44336"><a href="StdHome.jsp">
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
            <li class="list-item " style="--color:#0fc70f"><a href="Adminview.jsp">
              <span class="icon">
                <ion-icon name="eye"></ion-icon>
            </span>
              <span class="text">View Details</span>
              </a></li>
               <li class="list-item active" style="--color:#2196f3"><a href="AdminDetailsUpdate.jsp">
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
          <div class="signup-form">
            <form method="POST" class="register-form" id="register-form" action="StdDetailsUpdate">
                <h2>Student Details</h2>
           
                <div class="form-row">
                  <div class="form-group">
                    <label for="name">Name :</label>
                    <input type="text" name="name" id="name" value = <%=name %> required/>
                </div>
                <div class="form-group">
	                  <label for="birth_date">DOB :</label>
	                  <input type="date" name="birth_date" id="birth_date" value = <%=dob %>   >
              </div>
                </div>
                
                  <div class="form-group">
                  <label for="birth_date">GENDER :</label>
	                  <input type="text" name="gender" id="gender" value = <%=gender %>   >
                  
              </div>
                    
                    <div class="form-group">
                        <label for="rollno">Roll Number :</label>
                        <input type="text" name="rollno" id="rollno" value = <%=rollno %> required   />
                    </div>
                   
                	<div class="form-group">
                        <label for="joindate">Join date :</label>
                        <input type="date" name="joindate" id="joindate" value = <%=joindate %> required   />
                    </div>
                    
                <div class="form-group">
                    <label for="address">Address :</label>
                    <input type="text" name="address" id="address" value = <%=address %> required   />
                </div>
               
                <div class="form-row">
              <div class="form-group"  >
                  <label for="10">10th Mark :</label>
                  <input type="number" name="10" id="10" value = <%=tenth %>   >
              </div>
              <div class="form-group">
                <label for="12">12th Mark :</label>
                <input type="number" name="12" id="12" value = <%=twelvth %>   >
            </div>

            <div class="form-group">
              <label for="Diploma">Diploma Mark:</label>
              <input type="number" name="Diploma" id="Diploma " value = <%=diploma %>   >
          </div>
         
          </div>
           <div class="form-group">
              <label for="mobile">Mobile :</label>
              <input type="text" name="mobile" id="mobile" value= <%=mobile %>   >
          </div>
               

                <div class="form-row">
                  <div class="form-group">
                      <label for="Degree">Degree :</label>
                       <input type="text" name="degree" id="degree" value= <%=degree%>   >
                  </div>
                  <div class="form-group">
                      <label for="Course">Course :</label>
                       <input type="text" name="dept" id="dept" value= <%=dept %>   >
                  </div>
              </div>
                
                <div class="form-group">
                    <label for="email">Email ID :</label>
                    <input type="email" name="email" id="email" value =<%=email %>    />
                </div>

               
               <div class="form-group">
                      <label for="bloodgrp">Blood group :</label>
                       <input type="text" name="bloodgrp" id="bloodgrp" value= <%=bgp %>   >
                  </div>
                <div class="form-submit">

                    <input type="submit"  class="submit" name="submit" id="submit" value="Submit"/>
                </div>

            </form>
          </div>
        </div>
      </div>
      <%session.setAttribute("uname", session.getAttribute("uname")); %>


<script src="${pageContext.request.contextPath}\script\admin.js"></script>
<script>
(function($) {

  $('#reset').on('click', function(){
      $('#register-form').reset();
  });

})(jQuery);

</script>
<script>

$(function(){
    $("a").click(function(evt){
        var link = $(this).attr("href");
        setTimeout(function() {
            window.location.href = link;
        }, 15000);
    });
});
</script>
    </body>

</html>