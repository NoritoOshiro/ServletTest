<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../header.html" %>
<%@page errorPage="contact-error.jsp" %>

<%-- <%@include file="../../src/servlet/Contact.java" %> --%>

		<%request.setCharacterEncoding("UTF-8");
		String name =request.getParameter("name");
		String company =request.getParameter("company");
		String mail =request.getParameter("mail");
		String content =request.getParameter("content");
		String[] checkbox=request.getParameterValues("checkbox3");
		String yes=request.getParameter("radio03");
		%>

		<p>名前は、<%=name %>です。</p>
		<p>会社名は、<%=company %>です。</p>
		<p>メールアドレスは、<%=mail%>です。</p>
		<p>お問い合わせ内容は、<%=content %>です。</p>
		<br>
		
		<%if(checkbox!=null) {%>
			<%for(String options : checkbox) {%>
				<p>メルマガの種類は、<%=options %>です。</p>
			<% }%>
		 <%}%>
		
		<p>資料請求はしません。</p>
			
		 

<%@include file="../footer.html" %>