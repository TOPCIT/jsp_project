<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
   
<% request.setCharacterEncoding("EUC-KR"); //post��Ŀ����� �ѱ�ó��
 	String name=request.getParameter("name");
 	if(name==null || name.trim().equals("")){
		response.sendRedirect("delete.jsp");
 		return;
 	} %>
 	<%
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	String url= "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "jsp";
 	String pass = "jsp"; 
 	String sql = "delete from book where name=?";
 	//joindate �ڸ��� sysdate �Լ��� ������� ���� ��¥�� �Էµǵ��� �Ѵ�.
 	Connection con = DriverManager.getConnection(url,user,pass);
 	PreparedStatement ps = con.prepareStatement(sql); //�������� ���
 	ps.setString(1,name);
 	
 	int res=ps.executeUpdate();
 	
 	if(res>0){%>
 	<script type="text/javascript">
 		alert("������������! ���������������� �̵��մϴ�.");
 		location.href="list.jsp";
 	</script>
 <%	}else{ %>
 	<script type="text/javascript">
 		alert("������������! ���������������� �̵��մϴ�.");
 		location.href="delete.jsp";
 	</script>
 <%	} 
 	ps.close();
 	con.close();
 %>
 		
 		