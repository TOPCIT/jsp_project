<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="obj" class="home.count.count" scope="session" />
<b>page : obj�� getCount() = </b>
<jsp:getProperty property="count" name="obj" />
<br>
<a href="test.jsp">test</a>