<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn" class="no-js">
<head>
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>�������뿪������Ŀ</title>
        <meta name="description" content="A responsive, magazine-like website layout with a grid item animation effect when opening the content" />
        <meta name="keywords" content="grid, layout, effect, animated, responsive, magazine, template, web design" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style4.css" />
        <script src="js/modernizr.custom.js"></script>
        <style>
* { margin: 0; padding: 0;}
body{
    background:url(../images/web_login_bg.jpg) no-repeat center;
    background-size: cover;
}
body,html{
    height:100%;
    overflow:hidden;
}
ul { list-style-type: none;}
li{float:left;}
.input_div{width:100%;}
.input_div label{width:200px;float:left;text-align:left;}
.input_div input{width:200px;float:left;}
.Header{width:100%;margin:0 auto;/*ҳ���һ����*/height:100px;background:#fff;}
#menu li{font-size:24px;float:left;list-style:none;cursor: pointer;}
#menu a{color:#000000;text-decoration:none;margin:10px;/*<!--text-decoration:noneȥ���»���-->*/padding-top:20px;/*display:block;*/display:block;padding-right:60px;padding-bottom:0px;padding-left:30px;}
#menu a:hover,a:active{color: #0000ff;}
#darkbannerwrap {
    background: url(../images/aiwrap.png);
    width: 18px;
    height: 10px;
    margin: 0 0 20px -58px;
    position: relative;
}
</style>

</head>
<body>
<div class ="Header">


<div id="menu">
                    <li style ="padding-left:20%;"><a href="index1.jsp">��Ʒ�����</a></li>
                    <li><a href="checkfirmdata">��������</a></li>
                    <s:if test="#session.username!=null" > 
                    <!--��ӭ��:<s:property value="#session.username"/>  --> 
                    <li><a href="personaldata.jsp">��������</a></li>
                    <li><a href="logout.action" >�˳�</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="login.jsp" >��¼/ע��</a></li>
                    </s:else>
                 
</div>
</div> 
  <div class="container">
            <button id="menu-toggle" class="menu-toggle"><span>Menu</span></button>
            <div id="theSidebar" class="sidebar">
                <button class="close-button fa fa-fw fa-close"></button>
                <h1><span>Explore<span> which I want</h1>
                <nav class="codrops-demos">
                    <h2><a href="Personlist">�����˲�</a></h2>
                    <h2><a class="current-demo"href="index.jsp">̽����Ŀ</a></h2>
                </nav>
            </div>

<div id="theGrid" class="main">

   <h1 style="padding-left:30%;">���ƿ���������</h1>
   <form action="completeperson">
   <div class="input_div">
   

                                <p style="padding-left:30%;"> 
                                    <label for="usercompany" class="uname" data-icon="u" >      ��˾���ƣ�</label>
                                    <input id="username" name="usercompany" required="required" type="text" placeholder="������д���������������Ĺ�˾"/>
                                </p ><br><br>
                                
                                <p style="padding-left:30%;"> 
                                    <label for="userworkexperience" class="uname" data-icon="u" > �������ޣ�</label>
                                    <input id="username" name="userworkexperience" required="required" type="text" placeholder="3��"/>
                                </p><br><br>
                                <p style="padding-left:30%;"> 
                                    <label for="useremail" class="youpasswd" data-icon="p">    ����        ��   </label>
                                    <input id="password" name="useremail" required="required" type="text" placeholder="469975732@qq��com" /> 
                                </p><br><br>
                                 <p style="padding-left:30%;"> 
                                    <label for="userposition" class="youpasswd" data-icon="p">     ��λ       �� </label>
                                    <input id="password" name="userposition" required="required" type="text" placeholder="FullStack Developer" /> 
                                </p ><br><br>
                                  <p style="padding-left:30%;"> 
                                    <label for="useraddress" class="youpasswd" data-icon="p">     ���ڵأ�  </label>
                                    <input id="password" name="useraddress" required="required" type="text" placeholder="Harbin" /> 
                                </p><br><br>
                                 <p style="padding-left:30%;"> 
                                    <label for="userprice" class="youpasswd" data-icon="p">       ��н��  </label>
                                    <input id="password" name="userprice" required="required" type="text" placeholder="for 8 hours" /> 
                                </p><br><br>
                                  <p style="padding-left:30%;"> 
                                    <label for="userskill" class="youpasswd" data-icon="p">        ���˼��ܣ� </label>
                                    <input id="password" name="userskill" required="required" type="text" placeholder="Java EE/Anroid" /> 
                                </p><br><br>
                                  <p style="padding-left:30%;"> 
                                    <label for="userdescribe" class="youpasswd" data-icon="p">  ��Ŀ���飺</label>
                                    <input id="password" name="userdescribe" required="required" type="text" placeholder="����ϸ��д���ڹ����м�ҵ��ʱ��������Ŀ���Լ�������Ŀ����ɵĹ���" /><br><br>
                                    <input type="submit" align="center" value="�ύ��Ϣ"/> 
                                </p><br><br>
                         </div>     
                                
                                    

   
  

   
    </form>
    
  </div>
<div id="footer">    
<div class="copyright">Copyright by codebeautifier</div>

</body>
</html>