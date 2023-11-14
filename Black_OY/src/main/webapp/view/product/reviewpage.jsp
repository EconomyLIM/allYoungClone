<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>

<script>
	$(function(){
		$(".pageing a").on("click",function(){
			 event.preventDefault(); // 앵커의 기본 동작을 막습니다.
			
			 let currentpage = $(this).text()
			 let pro_id = $(".prd_option_box.box_select > a").attr("id");
			 let displ = $(".pageing").attr("id");
			 let type = $("#gdasSort li.on > a").attr("data-value")
			 //alert(currentpage+"/"+pro_id+"/?"+displ+"/"+type)
			 
			 let data = {
				 currentpage: currentpage,
				 pro_id: pro_id,
				 type: type,
				 displ: displ
			    };
			 
			 $.ajax({
					url: "<%=contextPath%>/olive/reviewajax.do",
					data:data,
					cache: false,
					success:function( response ) {
			              $("#gdasList").empty();
			              $("#gdasList").append( response );
				           		              
			          }
			        , error		: function() {
			            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
			        }
				})
				
				$.ajax({
					url: "<%=contextPath%>/olive/reviewpage.do",
					data:data,
					cache: false,
					success:function( response ) {
			              $(".pageing").empty();
			              $(".pageing").append( response );
				           		              
			          }
			        , error		: function() {
			            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
			        }
				})
				
			 
		 })
	})
</script>
<c:if test="${pDto.prev }">
				<a class="prev" href="javascript:;" data-page-no="1">이전 10
				페이지</a>
			</c:if>
			<c:forEach var="i" begin="${pDto.start }" end="${pDto.end }" step="1">
				<c:choose>
					<c:when test="${i eq pDto.currentPage}">
						<strong title="현재 페이지">${i}</strong>
						<%-- <a class="active" href="#">${i }</a> --%>
					</c:when>
					<c:otherwise>
						<a
							href="javascript:;">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pDto.next }">
				<a class="next" href="javascript:;" data-page-no="21">다음 10 페이지</a>
			</c:if>
			<!-- <strong title="현재 페이지">1</strong> -->

