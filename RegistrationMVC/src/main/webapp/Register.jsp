<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
     var fullname = document.form.fullname.value;
     var fatherName = document.form.fatherName.value;
     var gender = document.form.gender.value;
     var email = document.form.email.value; 
     var address = document.form.address.value;
     var phone = document.form.phone.value;
     var hostelRequired= document.form.hostelRequired.value;
     
     if (fullname==null || fullname=="")
     { 
     alert("Full Name can't be blank"); 
     return false; 
     }
     else if (fatherName==null || fatherName=="")
     { 
     alert("FatherName can't be blank"); 
     return false; 
     }
     
     }
     else if (email==null || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (address==null || address=="")
     { 
     alert("Address can't be blank"); 
     return false; 
     } 
     else if (phone==null || phone=="")
     { 
     alert("Phone can't be blank"); 
     return false; 
     }
     else if (hostelRequired=='no')
     { 
     alert("HostelRequired can't be blank"); 
     return false;  
     } 
     
 } 
</script> 
</head>
<body>
<center><h2>HOSTEL MANAGEMENT</h2></center>
<div>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
        <table align="center">
         <tr>
         <td>Full Name</td>
         <td><input type="text" name="fullname" /></td>
         </tr>
         <tr>
         <td>Father Name</td>
         <td><input type="text" name="fatherName" /></td>
         </tr>
        <tr>
         <td>Gender</td>
         <td><input type="text" name="gender" /></td>
         </tr>
         
         <tr>
         <td>Email</td>
         <td><input type="text" name="email" /></td>
         </tr>
         <tr>
         <td>Address</td>
         <td><input type="text" name="address" /></td>
         </tr>
         <tr>
         <td>Phone</td>
         <td><input type="text" name="phone" /></td>
         </tr>
         
         <tr>
         <td>Hostel Required (yes/no)</td>
         <td><input type="text" name="hostelRequired" /></td>
         </tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" value="Register"></input>
         <input
         type="reset" value="Reset"></input></td>
         </tr>
        </table>
    </form>
    </div>
</body>
</html>
