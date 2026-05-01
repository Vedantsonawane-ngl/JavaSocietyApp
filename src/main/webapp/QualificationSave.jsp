<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<script>

function displayMessage()
{
	alert("Data is successfully added");
	
	}

</script>
<meta charset="UTF-8">
<title>Form Output</title>
</head>
<body onLoad="displayMessage()"> 

<%
String name = request.getParameter("qname");
String gender = request.getParameter("gender");
String qualification = request.getParameter("qualification");
String[] educationArr = request.getParameterValues("education");
String comments = request.getParameter("comments");

String education = "";
if(educationArr != null){
    for(int i = 0; i < educationArr.length; i++){
        education += educationArr[i];
        if(i < educationArr.length - 1){
            education += ", ";
        }
    }
}

Connection con = null;
PreparedStatement ps = null;

try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/web_app",
        "root",
        "zhEsty.74mysql"
    );

    String query = "INSERT INTO student(name, gender, qualification, education, comments) VALUES (?, ?, ?, ?, ?)";

    ps = con.prepareStatement(query);

    ps.setString(1, name);
    ps.setString(2, gender);
    ps.setString(3, qualification);
    ps.setString(4, education);
    ps.setString(5, comments);

    int result = ps.executeUpdate();

    if(result > 0){
        out.println("<h3'>Data inserted successfully</h3>");
    } else {
        out.println("<h3>Insertion failed </h3>");
    }

} catch(Exception e){
    out.println("<h3 '>Error: " + e.getMessage() + "</h3>");
}

response.sendRedirect("QualificationForm.jsp?result=success");

%>

<h2>Form Details</h2>

Name: <%= name %> <br><br>
Gender: <%= gender %> <br><br>
Qualification: <%= qualification %> <br><br>
Education: <%= education %> <br><br>
Comments: <%= comments %>

<%
if(ps != null) ps.close();
if(con != null) con.close();
%>

</body>
</html>