<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="revised" content="Ningxia Seasons, 2015/8/13/" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<!-- 搜索关键字 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>有码众包</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/crowdfunding.center/messages.css" rel="stylesheet">
</head>
<body>
<!-- 开始 -->
<div class="my_info_title">发送新消息</div>
<div class="messages">
  <table class="messages_table">
    <tr>
      <td align="right" width="150">收信人：</td>
      <td width="400"><input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"></td>
      <td>&nbsp;请输入收件人姓名</td>
    </tr>
    <tr>
      <td align="right" width="150" style="vertical-align:top !important;">内容：</td>
      <td width="400"><textarea class="form-control" style="resize:vertical" rows="3"></textarea></td>
      <td style="vertical-align:top !important;">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" colspan="3"><input type="submit" class="messages_table_submit" value="立刻发送"></td>
    </tr>
  </table>
</div>

<!-- 结束 -->
</body>
</html>