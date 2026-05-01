<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

<table>
<tr>
<td><input type ="text" name="name"></td>
</tr>>

<tr>
<td><input type ="radio" name="gender" value="M"></td>
<td><input type ="radio" name="gender" value="F"></td>
</tr>>

<tr>
<td>
<select  name="Qualification">
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
</tr>
</td>

<tr>
<td>
<input type="submit" value="submit">

</tr>
</td>

</table>
</body>
</html>