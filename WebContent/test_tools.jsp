<%@ page contentType="text/html;charset=gb2312" import="java.util.*" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="NetObjects ScriptBuilder 3.0">
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<TITLE>Document Title</TITLE>
</HEAD>
<BODY>
<center><font color=blue size=10 face="隶书">
<%
Date today = new Date();
int hours = today.getHours();
int minute = today.getMinutes(); 
if(hours>=0 && hours<12){
out.println("早上好!");
}else{
out.println("下午好!");
}

String[] weekdays = {"日","一","二","三","四","五","六"};
out.println("\n今天是" + (today.getYear()+1900) + "年" + (today.getMonth()+1) + "月" + (today.getDate()) + "日星期" + weekdays[today.getDay()]);
//显示时间



//建立错误处理页面的范例程序
ErrorPage.jsp
<%@ page contentType="text/html;charset=GB2312" errorPage="Error.jsp" %> 
<html>
<head>
<title>CH4 - ErrorPage.jsp</title>
</head>
<body>
<h2>errorPage 的范例程序</h2>
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
您传入的两个数字为：<%= num1 %> 和 <%= num2 %><br>
两数相加为 <%= (num1+num2) %>
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
<h2>errorPage 的范例程序</h2>
<p>ErrorPage.jsp 错误产生：<I><%= exception %></I></p><br>
<pre>
问题如下：<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>
</body>
</html>


//计数器 
<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%
Integer count = null; 

//同步处理
synchronized (application) {
//从内存当中读取访问量
count = (Integer) application.getAttribute("basic.counter"); 
if (count == null) 
count = new Integer(0); 
count = new Integer(count.intValue() + 1);
//将访问量保存到内存当中
application.setAttribute("basic.counter", count);
}
%>
<html>
<head>
<title>简单计数器</title>
</head> 
<body> 
<center>
<font size=10 color=blue>简单计数器</font>
<br>
<hr>
<br>
<font size=5 color=blue>您好！您是本站的第 <%= count %> 位客人</font>
</center>
</body> 
</html>



//c:out标记输出
<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<title>CH3 - HelloJSP.jsp</title>
</head>
<body>
<h2>JSP 将会被转译为 Servlet</h2>
<%!
int k = 0;
%>

<c:out value="Hi" />
<%
String name = "browser";

out.println("大家好 !!");
%>
<%= name %>
</body>
</html>
