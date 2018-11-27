<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
    <script src="../js/layui/layui.js" charset="utf-8"></script>
    <title>Insert title here</title>
</head>
<body>
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>
<div class="layui-tab layui-tab-brief" lay-filter="demo">
    <ul class="layui-tab-title">
        <li class="layui-this">演示说明</li>
        <li>日期</li>
        <li>分页</li>
        <li>上传</li>
        <li>滑块</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">

            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div><p class="layui-bg-green demo-carousel">在这里，你将以最直观的形式体验 layui！</p></div>
                    <div><p class="layui-bg-red demo-carousel">在编辑器中可以执行 layui 相关的一切代码</p></div>
                    <div><p class="layui-bg-blue demo-carousel">你也可以点击左侧导航针对性地试验我们提供的示例</p></div>
                    <div><p class="layui-bg-orange demo-carousel">如果最左侧的导航的高度超出了你的屏幕</p></div>
                    <div><p class="layui-bg-cyan demo-carousel">你可以将鼠标移入导航区域，然后滑动鼠标滚轮即可</p></div>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div id="laydateDemo"></div>
        </div>
        <div class="layui-tab-item">
            <div id="pageDemo"></div>
        </div>
        <div class="layui-tab-item">
            <div class="layui-upload-drag" id="uploadDemo">
                <i class="layui-icon"></i>
                <p>点击上传，或将文件拖拽到此处</p>
            </div>
        </div>
        <div class="layui-tab-item">
            <div id="sliderDemo" style="margin: 50px 20px;"></div>
        </div>
    </div>
</div>

</body>

<script type="text/javascript">
    layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,carousel = layui.carousel //轮播
            ,upload = layui.upload //上传
            ,element = layui.element //元素操作
            ,slider = layui.slider //滑块
        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            , url: 'user/list'
            , cols: [[
                {checkbox: true, fixed: true}
                , {field: 'id', title: 'ID', width: 100, sort: true, fixed: true}
                , {field: 'username', title: '用户名', width: 100, fixed: true}
                , {field: 'password', title: '密码', width: 100, fixed: true}
                , {field: 'sex', title: '性别', width: 100}
                , {field: 'status', title: '状态', width: 100,totalRow: true}
                , {field: 'telephone', title: '手机号码', width: 100}
                , {field: 'email', title: '邮件地址', width: 100}
                , {field: 'company', title: '公司名称', width: 100}
                , {field: 'createTime', title: '创建时间', width: 200}
                , {field: 'updateTime', title: '更新时间', width: 200}
            ]]
            ,toolbar: 'default' //默认工具栏包含：增、删、改 筛选、导出、打印等功能
            ,totalRow: true //开启合计行
            , page: true
            , height: $(window).height()/2
        });
        //监听头工具栏事件
        table.on('toolbar(user)',function (obj) {
            var checkStatus=table.checkStatus(obj.config.id),
                data=checkStatus.data;//获取选中行的数据
            switch (obj.event){
                case 'add':
                    layer.msg('添加');
                    break;
                case 'update':
                    if(data.length==0){
                        layer.msg('请选择一行');
                    }else if(data.length>1){
                        layer.msg('同时只能编辑一行');
                    }else{
                        layer.alert('编辑[id]:'+checkStatus.data[0].id);
                    }
                    break;
                case 'delete':
                    if(data.length==0){
                        layer.msg('请选择一行');
                    }else{
                        .ajax()
                        layer.msg('已删除');
                    }
                    break;
            }
        });

        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.tips('切换了 '+ data.index +'：'+ this.innerHTML, this, {
                tips: 1
            });
        });

        //执行一个轮播实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height: 200
            ,arrow: 'none' //不显示箭头
            ,anim: 'fade' //切换动画方式
        });

        //上传
        upload.render({
            elem: '#uploadDemo'
            ,url: '' //上传接口
            ,done: function(res){
                console.log(res)
            }
        });

        //滑块
        slider.render({
            elem: '#sliderDemo'
            ,input: true //输入框
        });
    });

</script>
</html>