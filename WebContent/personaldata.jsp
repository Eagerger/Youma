<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Login Success</title>
</head>
<body style = "background:url('images/bg.jpg') no-repeat;">
<%
String userPassword=(String)session.getAttribute("password"); 
String username=(String)session.getAttribute("username");

if((username==null)||username.equals("")){
%>
<%
response.setHeader("refresh","5;url=login.jsp");
%>
<h1 align="center">�Բ������¼���ٷ��ʣ�</h1>
<h1 align="center">5�����ת��<span class="STYLE2">��¼ҳ��</span></h1>
<p align="center">&nbsp;</p>
<h2 align="center">���û����ת���밴<a href="login.jsp">����</a></h2>
<br></br>
<%
}else{
%>
<h1 align="center">��ӭ����<%=username%></h1><h3 align="center">���ĸ�����Ϣ���£�</h3>
<table align="center">
<tr><td>�û�����</td><td><%=username%></td></tr>
<tr><td>���룺</td><td><%=userPassword%></td></tr>
</table>
<%}%>
<a href="index.jsp">�ص���ҳ</a>
���Ƹ�������
<a href="completefirmif.jsp">���ǿ�����</a>
<a href="completepsif.jsp">���Ƿ�����</a>
<div class="copyright">Copyright by codebeautifier</div>
</body>
</html>