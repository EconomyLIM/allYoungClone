<%@page import="com.util.JDBCUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
%>
<%

String u_tel = request.getParameter("u_tel");
String sql = " select count(*) cnt " + 
                " from o_user  " + 
                " where u_tel =  ?";
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null; 

String jsonResult = "{ \"count\":";

try{
   conn = ConnectionProvider.getConnection();
   pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, u_tel);
    rs = pstmt.executeQuery();
    rs.next();
    int cnt = rs.getInt("cnt");  // 1      0
    jsonResult += cnt;  
    jsonResult += " }";
}catch(Exception e){
   e.printStackTrace();
}finally{
   JDBCUtil.close(pstmt);
   JDBCUtil.close(rs);
   JDBCUtil.close(conn);
}
%>
<%= jsonResult %> 
%>


</body>
</html>