<%@page import="com.interior.community.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.interior.community.qna.QnaDAO"%>
<%@page import="com.interior.community.qna.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	/* int num = Integer.parseInt(request.getParameter("num"));
	Connection con = null;
	QnaDAO qnaDAO = new QnaDAO();
	int result = qnaDAO.delete(num, con);
	String msg = "delete fail";
	if(result>0) {
		msg = "delete success";
	} */
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Delete Page</title>
<c:import url="../temp/bootstrap.jsp" />

<script type="text/javascript">
	<%-- alert('<%=msg%>'); --%>
	location.href="./qnaList.jsp";

</script>

</head>
<body>

</body>
</html>