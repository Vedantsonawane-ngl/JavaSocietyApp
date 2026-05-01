<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Calculator</title>

<link rel="stylesheet" href="css/style.css">
<script src="js/script.js"></script>

</head>

<body>

<div class="calculator">

<h2>JSP Calculator</h2>

<input type="text" id="result" readonly>

<div class="buttons">

<button onclick="clearDisplay()">C</button>
<button onclick="deleteLast()">DEL</button>
<button onclick="appendValue('%')">%</button>
<button onclick="appendValue('/')">/</button>

<button onclick="appendValue('7')">7</button>
<button onclick="appendValue('8')">8</button>
<button onclick="appendValue('9')">9</button>
<button onclick="appendValue('*')">*</button>

<button onclick="appendValue('4')">4</button>
<button onclick="appendValue('5')">5</button>
<button onclick="appendValue('6')">6</button>
<button onclick="appendValue('-')">-</button>

<button onclick="appendValue('1')">1</button>
<button onclick="appendValue('2')">2</button>
<button onclick="appendValue('3')">3</button>
<button onclick="appendValue('+')">+</button>

<button class="zero" onclick="appendValue('0')">0</button>
<button onclick="appendValue('.')">.</button>
<button class="equal" onclick="calculate()">=</button>

</div>

</div>

</body>
</html>