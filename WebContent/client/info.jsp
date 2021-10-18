<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>电子书城</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
	<link type="text/css" href="${pageContext.request.contextPath }/client/css/autoplay.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/client/js/autoplay.js"></script>
</head>

<body class="main">
<div style = "background:url(../client/ad/2.jpg) ;background-size:100% 100%"> 
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<div id="divcontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td><div style="text-align:right; margin:5px 0px 0px 0px">
						<a href="http://localhost:8080/bookstore/client/index1.jsp">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/showProductByPage?category=${p.category}">&nbsp;${p.category}</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;${p.name}
					</div>
					<table cellspacing="0" class="infocontent">
						<tr>
							<td><img src="${pageContext.request.contextPath }/client/ad/page_ad.jpg" width="900" height="100" />
								<table width="100%%" border="0" cellspacing="0">
									<tr>
										<td width="30%">
											<div class="divbookcover">
												<p>
													<img src="${pageContext.request.contextPath}${p.imgurl}"
														width="213" height="269" border="0" />
												</p>
											</div>
											<div style="text-align:center; margin-top:25px">
												<a href="${pageContext.request.contextPath}/addCart?id=${p.id}">
													<img src="${pageContext.request.contextPath }/client/images/buybutton.gif" border="0" /> 
												</a>
											</div>
										</td>
										<td style="padding:20px 5px 20px 5px">
											<img src="${pageContext.request.contextPath }/client/images/miniicon3.gif" width="20" height="13" />
											<font class="bookname">&nbsp;&nbsp;${p.name}</font>
											<hr />售价：<font color="#FF0000">￥${p.price}</font>
											<hr /> 类别：${p.category }
											<hr />
											<p>
												<b>内容简介：</b>
											</p> ${p.description}
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="foot.jsp" />
	</div>
</body>
</html>
