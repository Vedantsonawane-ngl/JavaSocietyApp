<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Prime Number Checker</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            width: 300px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="number"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ddd;
            border-radius: 8px;
            outline: none;
            transition: 0.3s;
        }

        input[type="number"]:focus {
            border-color: #4facfe;
        }

        input[type="submit"] {
            background: #4facfe;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #00c6ff;
        }

        .result {
            margin-top: 15px;
            font-weight: bold;
        }

        .prime {
        }

        .not-prime {
            
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Prime Number Checking</h2>

    <form method="post">
        <input type="number" name="num" placeholder="Enter number" required>
        <br>
        <input type="submit" value="Check">
    </form>

<%
    String numberStr = request.getParameter("num");

    if (numberStr != null) {
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

        if (isPrime) {
%>
        <div class="result prime">
             is a Prime Number 
        </div>
<%
        } else {
%>
        <div class="result not-prime">
             is NOT a Prime Number 
        </div>
<%
        }
    }
%>

</div>

</body>
</html>