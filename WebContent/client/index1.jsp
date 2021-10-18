<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>bookStore首页</title>
	<%-- 导入css --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css" type="text/css" />
	<!-- 导入首页轮播图css和js脚本 -->
	<link type="text/css" href="${pageContext.request.contextPath }/client/css/autoplay.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/client/js/autoplay.js"></script>
	   <embed  src="D:\CloudMusic\Kurt Hugo Schneider,MADILYN - Señorita.mp3" loop="10" autostar="true"hidden="true"/>
</head>

<body class="main">
<div style = "background:url(../client/ad/2.jpg) ;background-size:100% 100%"> 
	<%@include file="head.jsp"%>
	<%@include file="menu_search.jsp" %>
	
	<!-- 图书商场首页轮播图  start -->
	<div id="box_autoplay">
    	<div class="list">
        	<ul>
            	<li><img src="${pageContext.request.contextPath }/client/ad/8.jpg" width="900" height="345" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/1.jpg" width="900" height="345" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/0.jpg" width="900" height="345" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/4.jpg" width="900" height="345" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/9.jpg" width="900" height="345" /></li>
        	</ul>
    	</div>
	</div>
	<!-- 图书商场首页轮播图  end -->
	
	<div id="divcontent">
		<table width="900px" border="0" cellspacing="0">
			<tr>
				<td width="497">
					<img src="${pageContext.request.contextPath}/client/images/billboard1.gif" width="497" height="38" />
					<font color="#000"><b> <br><br><br><br><br><br>尊敬的各位用户，您好！<br><br><br>
　						　好消息！各位用户，二一书城将于2019年1月9日全新上线，敬请期待!!!!!</b></font>
					<table cellspacing="0" class="ctl">
						<tr>
							<td width="485" height="29">${n.details }</td>
						</tr>
					</table>
				</td>
				<td style="padding:5px 15px 10px 40px">
					<table width="100%" border="0" cellspacing="0">
						<tr>
						
							<td>
								<img src="${pageContext.request.contextPath}/client/images/hottitle.gif" width="126" height="29" />
							<font color="#000"><b><br><br><br> 1  〈羊脂球〉 莫泊桑 <br><br>
												   2  〈魔沼〉 乔治·桑 <br><br>
                     							   3  〈死魂灵〉 果戈里 <br><br>
												   4   〈希腊棺材之谜〉 艾勒里·奎恩<br><br> 
												   5  〈母亲〉 高尔基 <br><br>
												   6   〈被背叛的医嘱〉 米兰·昆德拉<br><br>
</b></font>
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0">
						<tr>
						<c:forEach items="${pList }" var="pArray">
							<td style="width:80; text-align:center">
								<a href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">
									<img src="${pageContext.request.contextPath }${pArray[2]}" width="102" height="130" border="0" /> 
								</a>
								<br /> 
								<a href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">${pArray[1]}</a>
								
							</td>
						</c:forEach>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="foot.jsp" %>
	</div>
</body>
</html>
