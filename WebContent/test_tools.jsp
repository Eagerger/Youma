<%@ page contentType="text/html;charset=gb2312" import="java.util.*" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="NetObjects ScriptBuilder 3.0">
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<TITLE>Document Title</TITLE>
</HEAD>
<BODY>
<center><font color=blue size=10 face="����">
<%
Date today = new Date();
int hours = today.getHours();
int minute = today.getMinutes(); 
if(hours>=0 && hours<12){
out.println("���Ϻ�!");
}else{
out.println("�����!");
}

String[] weekdays = {"��","һ","��","��","��","��","��"};
out.println("\n������" + (today.getYear()+1900) + "��" + (today.getMonth()+1) + "��" + (today.getDate()) + "������" + weekdays[today.getDay()]);
//��ʾʱ��



//����������ҳ��ķ�������
ErrorPage.jsp
<%@ page contentType="text/html;charset=GB2312" errorPage="Error.jsp" %> 
<html>
<head>
<title>CH4 - ErrorPage.jsp</title>
</head>
<body>
<h2>errorPage �ķ�������</h2>
<%! 
private double toDouble(String value) 
{ 
return(Double.valueOf(value).doubleValue()); 
}
%>

<% 
double num1 = toDouble(request.getParameter("num1")); 
double num2 = toDouble(request.getParameter("num2"));
%>
���������������Ϊ��<%= num1 %> �� <%= num2 %><br>
�������Ϊ <%= (num1+num2) %>
</body>
</html>
Error.jsp
<%@ page contentType="text/html;charset=GB2312" isErrorPage="true" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<title>CH4 - Error.jsp</title>
</head>
<body>
<h2>errorPage �ķ�������</h2>
<p>ErrorPage.jsp ���������<I><%= exception %></I></p><br>
<pre>
�������£�<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>
</body>
</html>


//������ 
<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%
Integer count = null; 

//ͬ������
synchronized (application) {
//���ڴ浱�ж�ȡ������
count = (Integer) application.getAttribute("basic.counter"); 
if (count == null) 
count = new Integer(0); 
count = new Integer(count.intValue() + 1);
//�����������浽�ڴ浱��
application.setAttribute("basic.counter", count);
}
%>
<html>
<head>
<title>�򵥼�����</title>
</head> 
<body> 
<center>
<font size=10 color=blue>�򵥼�����</font>
<br>
<hr>
<br>
<font size=5 color=blue>���ã����Ǳ�վ�ĵ� <%= count %> λ����</font>
</center>
</body> 
</html>



//c:out������
<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<title>CH3 - HelloJSP.jsp</title>
</head>
<body>
<h2>JSP ���ᱻת��Ϊ Servlet</h2>
<%!
int k = 0;
%>

<c:out value="Hi" />
<%
String name = "browser";

out.println("��Һ� !!");
%>
<%= name %>
</body>
</html>
