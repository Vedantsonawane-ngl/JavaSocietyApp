
Avinash Rathod
4:21 PM
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
body{
font-family: Arial;
background: linear-gradient(135deg,#667eea,#764ba2);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.calculator{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
width:280px;
text-align:center;
}

h2{
margin-bottom:10px;
}

#result{
width:100%;
height:50px;
font-size:22px;
text-align:right;
padding:10px;
margin-bottom:10px;
border:1px solid #ccc;
border-radius:5px;
}

.buttons{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:10px;
}

button{
height:50px;
font-size:18px;
border:none;
border-radius:5px;
background:#f2f2f2;
cursor:pointer;
transition:0.2s;
}

button:hover{
background:#ddd;
}

.equal{
background:#4CAF50;
color:white;
}

.equal:hover{
background:#45a049;
}

.zero{
grid-column: span 2;
}
</style>

<meta charset="UTF-8">
<title>JSP Calculator</title>
<script>
function appendValue(value){
	document.getElementById("result").value += value;
	}

	function clearDisplay(){
	document.getElementById("result").value = "";
	}

	function deleteLast(){
	let current = document.getElementById("result").value;
	document.getElementById("result").value = current.slice(0,-1);
	}

	function calculate(){
	try{
	let result = eval(document.getElementById("result").value);
	document.getElementById("result").value = result;
	}
	catch(e){
	alert("Invalid Expression");
	}
	}
</script>
<link rel="stylesheet" href="css/style.css">
<script src="js/script.js"></script>

</head>

<body>

<div class="calculator">

<h2>JSP Calculator</h2>

<div class="buttons">
<table>
<tr>
<td></td>
<td>
<input type="text" id="result" readonly>
</td>
<td></td>
<td></td>
</tr>
<tr> 
<td><button onclick="clearDisplay()">C</button></td>
<td><button onclick="deleteLast()">DEL</button></td>
<td><button onclick="appendValue('%')">%</button></td>
<td><button onclick="appendValue('/')">/</button></td>
</tr>
<tr>
<td><button onclick="appendValue('7')">7</button></td>
<td><button onclick="appendValue('8')">8</button></td>
<td><button onclick="appendValue('9')">9</button></td>
<td><button onclick="appendValue('*')">*</button></td>
</tr>
<tr>
<td><button onclick="appendValue('4')">4</button></td>
<td><button onclick="appendValue('5')">5</button></td>
<td><button onclick="appendValue('6')">6</button></td>
<td><button onclick="appendValue('-')">-</button></td>
</tr>
<tr>
<td><button onclick="appendValue('1')">1</button></td>
<td><button onclick="appendValue('2')">2</button></td>
<td><button onclick="appendValue('3')">3</button></td>
<td><button onclick="appendValue('+')">+</button></td>
</tr>
<tr>
<td><button onclick="appendValue('0')" class="zero">0</button></td>
<td><button onclick="appendValue('.')">.</button></td>
<td><button onclick="calculate()" class="equal">=</button></td>
<td></td>
</tr>
</table>
</div>

</div>



</body>
</html>
