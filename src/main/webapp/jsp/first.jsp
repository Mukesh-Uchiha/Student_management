<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\style.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\homestyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}\css\signup.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&family=Roboto&display=swap" rel="stylesheet">
    <title>Homepage</title>
    
</head>
<body>

    <div id="pages">
		
        <section id="homepage">
            
        <div class="flexbox">
        <div id ="container">
            <div id = "Heading"> Student Management System</div><br>
            <div class="btn-group">
            <button class="btn" onclick="document.getElementById('Alogin').style.display='block'; bg() " style="width:auto;">Admin Login</button><br>
            <button class="btn" onclick="document.getElementById('Slogin').style.display='block'; bg()" style="width:auto;">Student Login</button><br>
            </div>
        </div>
        <div id="homeback">
            <div class="login-box" id="Alogin">
                <span onclick="document.getElementById('Alogin').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h2 class="adminHead">Admin Login</h2>
                <form action="admLog" method="post">
                    <div class="user-box">
                        <input type="text" name="uname" required>
                        <label for="uname"><b>Username</b></label>
                        
                    </div>
        
                  <div class="user-box">
                      
                    <input type="password" name="pass" required /> 
                    <label for="psw"><b>Password</b></span></label> 
                
                  </div>
                  <div class="foot">
                  	
                    <div class="subsignup"><a href="#AdminSignup">sign up</a></div>
              
                    <div class="sublogin">
                        <button>Login</button>
                    </div>
             
                  </div>
                </form>
              </div>
              <div class="login-box" id="Slogin">
                <span onclick="document.getElementById('Slogin').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h2 class="adminHead">Student Login</h2>
                <form action="stdLog" method="post">
                    <div class="user-box">
                        <input type="text" name="uname" required>
                        <label for="uname"><b>Username</b></label>
                    </div>
        
                  <div class="user-box">
                    <input type="password" name="pass" required> 
                    <label for="pass"><b>Password</b> </label>
                    
                  </div>
                    <div class="foot">
                    <!-- <div class="subsignup"><a href="#studentSignup">sign up</a></div> -->
                    <div class="sublogin">
                        <button>Login</button>
                    </div>
                  </div>
                </form>
              </div>
            <img src="../image/name.jpg" class="logo" >
        </div>
    </div>
        </section>

        <section id="studentSignup">
            <div class="flexbox">
               <div class="homeback">
                <img src="../image/text.jpg" class="logo">
               </div> 
               <div class="container">
                <div class="signup-box" style="margin-left: 200px;">
                    <h2 class="adminHead1">Student signup</h2>
                    <form action="StdSignup" method="post">
                        <div class="user-box1">
                            
                          <input type="text" name="uname" required />
                            <label for="uname">
                                <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                <b>Username</b>
                            </label>
                        </div>
            
                      <div class="user-box1">
                        <input type="email" name="email"  required />
                        <label for="email"><span><i aria-hidden="true" class="fa fa-envelope"></i></span> <b>Email</b></label>
                      </div>
    
                      <div class="user-box1">
                      <input type="password" name="pass" required />    
                        <label for="pass"><span><i aria-hidden="true" class="fa fa-lock"></i></span> <b>Password</b></label>
                      </div>
    
                      <div class="foot1">
                        <div class="sublogin1"><a href="#homepage">Login</a></div>
                        <div class="subsignup1">
                            <button>Sign up</button>
                        </div>
                      </div>
                    </form>
                  </div>
               </div>
            </div>
            
        </section>

        <section id="AdminSignup">
            <div  class="bgsign"  >
            </div>
            <div class="flexbox">
            <div id ="container">
                    <div class="signup-box" style="margin-left: 200px;">
                        <h2 class="adminHead1">Admin signup</h2>
                        <form action="admAcc" method="post">
                            <div class="user-box1">
                                
                              <input type="text" name="uname" required />
                                <label for="uname">
                                    <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                    <b>Username</b>
                                </label>
                            </div>
                
                          <div class="user-box1">
                            <input type="email" name="email"  required />
                            <label for="email"><span><i aria-hidden="true" class="fa fa-envelope"></i></span> <b>Email</b></label>
                          </div>
        
                          <div class="user-box1">
                          <input type="password" name="pass" required />    
                            <label for="pass"><span><i aria-hidden="true" class="fa fa-lock"></i></span> <b>Password</b></label>
                          </div>
        
                          <div class="foot1">
                            <div class="sublogin1"><a href="#homepage">Login</a></div>
                            <div class="subsignup1">
                                <button>Sign up</button>
                            </div>
                          </div>
                        </form>
                      </div>
                   </div>
                   <div class="homeback">
                    
                      </div>
                </div>

            </div>
           
        </section>
</div>
<script>
   
    function bg() {
    document.getElementById("body").classList.add("filter");
    }

  
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}\script\skrollr.js"></script>
	<script type="text/javascript">
	var s = skrollr.init();
	</script>
</body>
</html>