<%--
  Created by IntelliJ IDEA.
  User: PMLuo
  Date: 2018/8/14
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
</head>

<body>
<center>
    <h1>登陆</h1>
    <hr>
    <%
        request.setCharacterEncoding("utf-8"); //解决中文乱码问题
    %>
    <form name="regForm" action="doLogin" method="post">
        <table>
            <tr>
                <td>账号：</td>
                <td><input type="text" name="account" />
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td colspan="1"><input type="submit" value="登录" /></td>
                <td colspan="1"><input type="reset" value="重置" /></td>
            </tr>
        </table>
    </form>
    <br>还没有账号？请注册<input type="button" value="注册" onclick="window.location.href='toRegist'"/>
</center>
</body>
</html>
