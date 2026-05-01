<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<script>
function displayMessage() {
    alert("Number stored successfully!");
}
</script>

<meta charset="UTF-8">
<title>Prime Number Result</title>
</head>

<body onload="displayMessage()">

<%
String numberStr = request.getParameter("num");

Connection con = null;
PreparedStatement ps = null;

if(numberStr != null){

    int num = Integer.parseInt(numberStr);
    boolean isPrime = true;

    if (num <= 1) {
        isPrime = false;
    } else {
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                isPrime = false;
                break;
            }
        }
    }

    String result = isPrime ? "Prime" : "Not Prime";

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/primeDB",
            "root",
            "your_password_here"
        );

        String query = "INSERT INTO numbers(number, result) VALUES (?, ?)";

        ps = con.prepareStatement(query);

        ps.setInt(1, num);
        ps.setString(2, result);

        int dbResult = ps.executeUpdate();

        if(dbResult > 0){
            out.println("<h3>Data inserted successfully</h3>");
        } else {
            out.println("<h3>Insertion failed</h3>");
        }

    } catch(Exception e){
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }

    response.sendRedirect("Prime.jsp?status=success");
%>

<h2>Result</h2>

Number: <%= num %> <br><br>

<%
if(isPrime){
%>
    Result: Prime Number
<%
}else{
%>
    Result: Not a Prime Number
<%
}
}

if(ps != null) ps.close();
if(con != null) con.close();
%>

</body>
</html>