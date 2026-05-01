<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% 
String result=request.getParameter("result");
if(result!=null)
{
	if(result.equals("success") )
	{
	out.println("<script> alert('data is sucessfully added') </script> ");	
}
	}

%>
<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
    width: 350px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

input[type="text"],
select,
textarea {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border-radius: 6px;
    border: 1px solid #ccc;
}

input[type="radio"],
input[type="checkbox"] {
    margin-right: 5px;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background: #4CAF50;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover {
    background: #45a049;
}

/* Labels spacing */
td {
    padding: 10px 0;
}
</style>
</head>
<body>

<form action="QualificationSave.jsp" method="post">

<table border ="1">
<tr>
<td>name<input type ="text" name="qname"></td>
</tr>

<tr>
<td><input type ="radio" name="gender" value="Male">Male</td>
<td><input type ="radio" name="gender" value="Female">Female</td>
</tr>

<tr>
<td>
<select  name="qualification">
<option value ="Bsc">Bsc</option>
<option value ="Btech">Btech</option>
<option value ="Bcom">Bcom</option>
</select>
</td>
</tr>
<tr>
<td>
<input type="checkbox" name="education" value="10th">10th
<input type="checkbox" name="education" value="12th">12th
<input type="checkbox" name="education" value="diploma">diploma
</td>
</tr>

<tr>
<td>
<textarea name ="comments"></textarea>
</td>
</tr>

<tr>
<td>
<input type="submit" value="submit">
</td>
</tr>

</table>
</form>
</body>
</html>