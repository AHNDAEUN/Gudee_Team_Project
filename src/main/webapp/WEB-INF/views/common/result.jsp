<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	
	<h1>Result Page</h1>
	<script type="text/javascript">
		alert("${message}");
		location.href="${url}";
	</script>
</body>
</html>