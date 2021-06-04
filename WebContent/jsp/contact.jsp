<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../header.html" %>
<link rel="Stylesheet" href="${pageContext.request.contextPath}/jsp/contact.css" />

<div class="container">

    <div class="top-wrapper">
    
    	<div class="img">

            <img src="image/contact2.jpeg" alt="#" class="contact-img">

        </div>

        <div class="img-text">
        
        <h1>・ContactForm・</h1>

        <!-->form action="../servlet/contact" method="post" class="form"-->
        <form action="contact-out.jsp" method="post" class="form">
		氏名(*)
		<input type = "text" class ="box" name="name" required>
		会社名
		<input type = "text" class="box" name="company">
		メールアドレス(*)
		<input type = "text" class="box" name="mail" required>
		お問い合わせ内容
		<textarea name="content" cols="30" rows="5" class="box" required></textarea>
		<p>メルマガ種類</p>
		<input type="checkbox" id="03-A" name="checkbox03" checked="checked" value="総合案内">
		<label for="03-A" class="checkbox03">総合案内</label>
		<input type="checkbox" id="03-B" name="checkbox03" value="セミナー案内">
		<label for="03-B" class="checkbox03">セミナー案内</label>
		<input type="checkbox" id="03-C" name="checkbox03" value="求人採用情報">
		<label for="03-C" class="checkbox03">求人採用情報</label>
		<br>
		<p>資料請求希望</p>
		<input type="radio" id="03-D" name="radio"value="yes">
		<label for="03-D" class="radio03">Yes</label>
		<input type="radio" id="03-E" name="radio" value="no">
		<label for="03-E" class="radio03">No</label>            
		<br>
		
		<input type ="submit" class="click" value="送信">
		</form>
            
        </div>

    </div>

 	
 </div>

<%@include file="../footer.html" %>