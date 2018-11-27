<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
    <script src="../js/layui/layui.js" charset="utf-8"></script>
    <title>Title</title>
</head>
<body>
<button class="layui-btn layui-btn-normal" id="btn_Search">查询所有用户信息</button>
<script>
    layui.use('layer', function () {
        var $ = layui.jquery, layer = layui.layer;

        function show() {
            layer.open({
                area: ['800px', '600px'],
                type: 2,
                content: ['<%=basePath%>jsp/UserList.jsp', 'no'], //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
            });
        }
        $("#btn_Search").on('click', function () {
            show();
        });
    });
</script>
</body>
</html>
