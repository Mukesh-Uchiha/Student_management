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
            <li class="list-item " style="--color:#f44336"><a href="Adminhome.jsp">
              <span class="icon">
                <ion-icon name="home-outline"></ion-icon>
              </span>
              <span class="text">Home</span>
              </a></li>
            <li class="list-item active" style="--color:#ff6801"><a href="Adminadd.jsp">
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
                <ion-icon src="http://cdn.onlinewebfonts.com/svg/img_90902.png"></ion-icon>
            </span>
              <span class="text">Log out</span>
              </a></li>
          </ul>
        </div>
        <div class="desc">
          <div class="signup-form">
            <form method="POST" class="register-form" id="register-form" action="StdDetailsAdd.jsp">
                <h2>student registration form</h2>
           
                <div class="form-row">
                  <div class="form-group">
                    <label for="name">Name :</label>
                    <input type="text" name="name" id="name" required/>
                </div>
                <div class="form-group">
                  <label for="birth_date">DOB :</label>
                  <input type="date" name="birth_date" id="birth_date" >
              </div>
                </div>
                
                  <div class="form-group">
                  <div class="form-radio">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="gender" class="radio-label">Gender :</label>
                    <div class="form-radio-item">
                        <input type="radio" name="gender" id="male" checked value="Male">
                        <label for="male">Male</label>
                        <span class="check"></span>
                    </div>
                    <div class="form-radio-item">
                        <input type="radio" name="gender" id="female" value="Female">
                        <label for="female">Female</label>
                        <span class="check"></span>
                    </div>
                </div>
              </div>
                    
                     
                    

                    
                    <div class="form-group">
                        <label for="rollno">Roll Number :</label>
                        <input type="text" name="rollno" id="rollno" required/>
                    </div>
                   
                	<div class="form-group">
                        <label for="joindate">Join date :</label>
                        <input type="date" name="joindate" id="joindate" required/>
                    </div>
                    
                <div class="form-group">
                    <label for="address">Address :</label>
                    <input type="text" name="address" id="address" required/>
                </div>
               
                <div class="form-row">
              <div class="form-group"  >
                  <label for="10">10th Mark :</label>
                  <input type="number" name="10" id="10">
              </div>
              <div class="form-group">
                <label for="12">12th Mark :</label>
                <input type="number" name="12" id="12">
            </div>

            <div class="form-group">
              <label for="Diploma">Diploma Mark:</label>
              <input type="number" name="Diploma" id="Diploma">
          </div>
         
          </div>
           <div class="form-group">
              <label for="mobile">Mobile :</label>
              <input type="text" name="mobile" id="mobile">
          </div>
               

                <div class="form-row">
                  <div class="form-group">
                      <label for="Degree">Degree :</label>
                      <div class="form-select">
                          <select name="Degree" id="Degree">
                            <option value=""></option>
                            <option value="B.Tech">B.tech</option>
                            <option value="B.E">B.E.</option>
                            <option value="M.E">M.E.</option>
                            <option value="M.Tech">M.Tech</option>
                          </select>
                          <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="Course">Course :</label>
                      <div class="form-select">
                          <select name="Course" id="Course">
                            <option value=""></option>
                            <option value="cse">Computer Science</option>
                            <option value="IT">Information technology</option>
                            <option value="AIDS">AI & DS</option>
                            <option value="mechanical">Mechanical</option>
                            <option value="EEE">EEE</option>
                            <option value="ECE">ECE</option>
                            <option value="Civil">Civil</option>
                            <option value="Automobile">Automobile</option>
                          </select>
                          <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                      </div>
                  </div>
              </div>
                
                <div class="form-group">
                    <label for="email">Email ID :</label>
                    <input type="email" name="email" id="email" />
                </div>

               
               <div class="form-group">
                      <label for="bloodgp">Blood group :</label>
                      <div class="form-select">
                          <select name="bloodgp" id="bloodgp">
                            <option value=""></option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                          </select>
                          <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                      </div>
                  </div>
                <div class="form-submit">
                    <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                    <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
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