<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>��������</title>
</head>
<body>
<div align="center">
<hr color="green" width="300">
	<h2>�� �� �� �� �� �� ��</h2>
	<hr color="green" width="300">
	<form name="update" method="post" action="update_ok.jsp">
		<table border="1">
			<tr>
				<td>
					<select name="search">
						<option value="name">������
						<option value="publisher">���ǻ�
						<option value="writer">������
					</select>
					<input type="text" name="searchString">
					<input type="submit" value="ã��">					
				</td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>