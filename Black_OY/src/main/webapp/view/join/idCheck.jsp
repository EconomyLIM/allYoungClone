<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="com.util.ConnectionProvider"%>
<%@page import="com.util.JDBCUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
      String user_id = request.getParameter("user_id");
      String sql = " select count(*) cnt " + 
                      " from o_user  " + 
                      " where user_id =  ?";
   	  
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null; 
      
      String jsonResult = "";
      
      try{
         conn = ConnectionProvider.getConnection();
         pstmt = conn.prepareStatement(sql);
          pstmt.setString(1, user_id);
          rs = pstmt.executeQuery();
          rs.next();
          int cnt = rs.getInt("cnt");
          jsonResult += cnt;  
      }catch(Exception e){
         e.printStackTrace();
      }finally{
         JDBCUtil.close(pstmt);
         JDBCUtil.close(rs);
         JDBCUtil.close(conn);
      }
      System.out.print(jsonResult);
%>
<%= jsonResult %> 