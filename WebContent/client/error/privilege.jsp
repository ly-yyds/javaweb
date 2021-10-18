<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
	<link rel="stylesheet" href="../css/main.css" type="text/css" />
	<script type="text/javascript" src="../js/my.js"></script>
	<script type="text/javascript">
    // 页面一加载完成，该方法就会执行
    // 读秒，一秒钟数字改变一次
    var x = 5;
    function run(){
        // 获取到的是span标签的对象
        var span = document.getElementById("spanId");
        // 获取span标签中间的文本
        span.innerHTML = x;
        x--;
        // 再让run方法执行呢，一秒钟执行一次
        window.setTimeout("run()", 1000);
    }
     </script>
	<meta http-equiv="refresh" content="5;url=http://localhost:8080/bookstore/client/login.jsp">
</head>
	
</head>

<body class="main">
	<div id="divcontent">
		<table width="850px" border="0" cellspacing="0">
			<tr>
				<td style="padding:30px; text-align:center"><table width="60%"
						border="0" cellspacing="0" style="margin-top:70px">
						<tr>
							<td style="width:98">
								<img src="../images/error.jpg" width="128" height="128" />
							</td>
							<td style="padding-top:30px"><font
								style="font-weight:bold; color:#ff0000">权限不足,请登录后操作</font><br />
								<br /> 
								<a>
									<span id="second">5</span>秒后自动为您转跳登录
								</a>
							</td>
						</tr>
					</table>
					<h1>&nbsp;</h1>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
