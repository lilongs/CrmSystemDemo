<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
<script src="../js/layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery-3.3.1.min.js" charset="utf-8"></script>
<meta charset="UTF-8">
<title>欢迎登陆</title>
</head>
<body style="display: flex;justify-content: center;">
	<form class="layui-form" action="" style="width: 25%;margin-top: 20%;">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" name="username" lay-verify="required"
					autocomplete="off" placeholder="请输入用户名" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-block">
				<input type="text" name="password" lay-verify="required"
					placeholder="请输入密码" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
    		<div class="layui-input-block">
      			<button id="btn_Search" class="layui-btn" lay-submit="" lay-filter="formDemo">立即提交</button>
      			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
    		</div>
  		</div>
	</form>
	<script type="text/javascript">
        //Demo
        layui.use('form', function() {
            var form = layui.form;     //监听提交
            form.on('submit(formDemo)', function(data) {
                var url="<%=basePath%>user/login";
                var datas=data.field;
				$.ajax({
                    url:url,
                    data:datas,
                    type:'GET',
					dataType:'json',
                    async: false,
                    success:function (res) {
                        if(res.success){
                            layer.msg("登录成功");
                            window.location.href = "<%=basePath%>jsp/layer.jsp";
                        }
                        else{
                            layer.msg("登录失败，请确认账号密码");
						}
                    }, error: function(error) {
                        layer.msg("尚未发布任何信息！");
                    }
				});
                return false;
            });
        });
	</script>
</body>
</html>