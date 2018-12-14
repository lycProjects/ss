<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.Sansu.model.Curio" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>测试</h1>
	<%  Curio curio=(Curio)request.getAttribute("curio"); %>
	藏品代码:<%=curio.getCurNum() %><br />
	藏品名称:<%=curio.getCurName() %><br />
	参考价格:<%=curio.getPrice() %><br />
	藏品规格:<%=curio.getModel() %><br />
	藏品款式:<%=curio.getCurYear() %><br />
	藏品类别:<%=curio.getCurType() %><br />
	图片名字:<%=curio.getImageName() %><br />
	热度:<%=curio.getCurHot() %><br />
</body>
</html>