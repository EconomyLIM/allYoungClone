<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%
	session.removeAttribute("logOn");
	response.sendRedirect(request.getContextPath() + "/view/mainPage/main.jsp");
	System.out.println("logout");
%>
