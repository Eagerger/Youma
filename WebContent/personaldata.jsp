<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Login Success</title>
</head>
<body style = "background:url('images/bg.jpg');">
<%
String userPassword=(String)session.getAttribute("password"); 
String username=(String)session.getAttribute("username");

if((username==null)||username.equals("")){
%>
<%
response.setHeader("refresh","5;url=login.jsp");
%>
<h1 align="center">�Բ������¼���ٷ��ʣ�</h1>
<h1 align="center">5�����ת����¼ҳ��</span></h1>
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
<br><a href = "mypublish.action">�ҷ�������Ŀ</a></br>
<br><a href = "mybid.action">��Ͷ�����Ŀ</a></br>
<%}%>
<br></br>
���Ƹ�������

<br></br>
<a href="completefirmif.jsp">�����Ϊ������</a>
<br></br>
<a href="completepsif.jsp">�����Ϊ������</a>
<br></br>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>

</body>
</html>