<!DOCTYPE html>
<html >
    <head>
       
        <title>Student Details</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\stdDemo3.css">
    </head>
       
    <body>
    <form action="StdDetailsAdding" method="post"  >	<!-- enctype='multipart/form-data'> -->
        <h1>Student Details Form</h1>
        <div class="container">
            <div class="row">
                <div class="col-10">
                    <label for="fname">Full Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="fname" name="fname" placeholder="Enter your full name">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="rollno">Roll Number:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="rollno" name="rollno" placeholder="eg:20F153">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="Degree" required >Degree:</label>
                </div>
                <div class="col-90">
                    <select name="qualification" id="qualification">
                        <option value=" ">Select Degree:</option>
                        <option value="be">B.E</option>
                        <option value="btech">B.Tech</option>
                        <option value="mtech">M.Tech</option>
                    </select>
                </div>
            </div>
             <div class="row">
                <div class="col-10">
                    <label for="Dept" required >Departement:</label>
                </div>
                <div class="col-90">
                    <select name="dept" id="dept">
                        <option value=" ">Select Department:</option>
                        <option value="be">IT</option>
                        <option value="btech">CSE</option>
                        <option value="mech">MECHANICAL</option>
                        <option value="aids">AIDS</option>
                        <option value="civil">Civil</option>
                        <option value="cst">CST</option>
                        <option value="eee">EEE</option>
                        <option value="ece">ECE</option>
                        
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="joindate">Join date:</label>
                </div>
                <div class="col-90">
                    <input type="Date" id="joindate" name="joindate">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="dob">Date Of Birth:</label>
                </div>
                <div class="col-90">
                    <input type="Date" id="dob" name="dob">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="Dept" required >Blood group:</label>
                </div>
                <div class="col-90">
                    <select name="bloodgp" id="bloodgp">
                        <option value=" ">Select Blood group:</option>
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                        
                    </select>
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="mobile">Mobile:</label>
                </div>
                <div class="col-90">
                    <input type="tel" id="mobile" name="mobile" placeholder="">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="gender" required>Gender:</label>
                </div>
                <div class="col-90">
                    <input type="radio" id="male" name="gender" value="male"/>Male
                    <input type="radio" id="female" name="gender" value="female"/>Female
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="address">Address:</label>
                </div>
                <div class="col-90">
                    <textarea name="address" id="address" cols="10" rows="8" ></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="email">Email:</label>
                </div>
                <div class="col-90">
                    <input type="email" id="email" name="email" placeholder="">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="tenth">10th mark sheet:</label>
                </div>
                <div class="col-90">
                    <input type="file" id="tenth" name="tenth" >
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="twelvth">12th mark sheet:</label>
                </div>
                <div class="col-90">
                    <input type="file" id="twelvth" name="twelvth" >
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="aadhar">Aadhar:</label>
                </div>
                <div class="col-90">
                    <input type="file" id="aadhar" name="aadhar" >
                </div>
            </div>
            <br>
            <div class="row">
                <input type="submit" value="Add Student">
            </div>  
        </div>
        </form>  
    </body>
</html>