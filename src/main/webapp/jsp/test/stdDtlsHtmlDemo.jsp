<html>
<head>
    <title >Student Registration Form Using Table in HTML</title>
</head>

<body>
    <h2>Student Registration Form Using Table in HTML</h2>
    <form action="StdDetailsAdd.jsp" method="post">
        <table align="center" cellpadding="10">
            <!--------------------- First Name ------------------------------------------>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="FirstName" maxlength="50" placeholder="Learn" />
                    (Max 50 Characters Allowed)
                </td>
            </tr>
            <!------------------------ Last Name --------------------------------------->
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="LastName" maxlength="50" placeholder="Programo" />
                    (Max 50 Characters Allowed)
                </td>
            </tr>
            <!-------------------------- Email ID ------------------------------------->
            <tr>
                <td>Roll No</td>
                <td><input type="text" name="rollno"  /></td>
            </tr>
            <!-------------------------- Mobile Number ------------------------------------->
            <tr>
                <td>Mobile Number</td>
                <td>
                    <input type="text" name="MobileNumber" maxlength="10" placeholder="1234567890" />
                    (10 Digits Allowed)
                </td>
            </tr>
            <!---------------------- Gender ------------------------------------->
            <tr>
                <td>Gender</td>
                <td>
                    <input type="radio" name="Gender" value="Male" />
                    Male
                    <input type="radio" name="Gender" value="Female" />
                    Female
                </td>
            </tr>
            <!--------------------------Date Of Birth----------------------------------->
            <tr>
                <td>Date of Birth(DOB)</td>
                <td>
                    <input type="date" name = "dob">
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><input type="text" name="bloodgrp"  /></td>
            </tr>
             <tr>
                <td>Degree</td>
                <td>
                    <label for="Degree"></label>
					<select name="Degree" id="Degree">
					  <option value="be">B.E</option>
					  <option value="btech">B.Tech</option>
					</select> 
                </td>
            </tr>
            <!------------------------- Address ---------------------------------->
            <tr>
                <td>Address<br /><br /><br /></td>
                <td><textarea name="Address" rows="10" cols="50"></textarea></td>
            </tr>
            <!-------------------------- City ------------------------------------->
            <tr>
                <td>City</td>
                <td><input type="text" name="City" maxlength="50" placeholder="Pune" />
                    (Max 50 Characters Allowed)
                </td>
            </tr>
            <!----- -------------------- Pin Code-------------------------------------->
            <tr>
                <td>Pin Code</td>
                <td><input type="Number" name="PinCode" maxlength="6" placeholder="411041" />
                    (Max 6 Numbers Allowed)
                </td>
            </tr>
            <!---------------------------- State ----------------------------------->
            <tr>
                <td>State</td>
                <td><input type="text" name="State" maxlength="50" placeholder="Maharashtra" />
                    (Max 50 Characters Allowed)
                </td>
            </tr>
            <!------------------------------ Country --------------------------------->
            <tr>
                <td>Country</td>
                <td><input type="text" name="Country" placeholder="India" /></td>
            </tr>
            <tr>
                <td><label for="myfile">upload aadhar :</label></td>
				<td><input type="file" id="aadhar" name="aadhar"></td> 
            </tr>
            <tr>
                <td><label for="myfile">upload 10th Mark Sheet :</label></td>
				<td><input type="file" id="10th" name="10th"></td> 
            </tr>
            
            <tr>
                <td><label for="myfile">upload 12th certificate :</label></td>
				<td><input type="file" id="12th" name="12th"></td> 
            </tr>
            
            <tr>
                <td><label for="myfile">upload student photo :</label></td>
				<td><input type="file" id="photo" name="photo"></td> 
            </tr>
            <!------------------------- Hobbies -------------------------------------->
            <tr>
                <td>Hobbies <br /><br /><br /></td>
                <td>
                    <input type="checkbox" name="HobbyDrawing" value="Drawing" />
                    Drawing
                    <input type="checkbox" name="HobbySinging" value="Singing" />
                    Singing
                    <input type="checkbox" name="HobbyDancing" value="Dancing" />
                    Dancing
                    <input type="checkbox" name="HobbyCooking" value="Cooking" />
                    Sketching
                    <br />
                    <input type="checkbox" name="HobbyOther" value="Other">
                    Others
                    <input type="text" name="Other_Hobby" maxlength="50" placeholder="Ex- Teaching" />
                    (Max 50 Characters Allowed)
                </td>
            </tr>
           
          
            <!----------------------- Submit and Reset ------------------------------->
            <tr>
                <td colspan="2" align="center">
                    <button type="submit" >Submit</button>
  					
                </td>
            </tr>
        </table>
        </form>
</body>

</html>