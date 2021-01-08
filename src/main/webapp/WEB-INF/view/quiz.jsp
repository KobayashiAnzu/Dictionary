<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>単語クイズ</title>
</head>
<body>
<c:forEach items="${koreans}" var="korean">
<div class="article" style="width: 300px; border: 1px solid #000; padding:10px;">

　　<p><c:out value="${korean.name}" /></p>
　　
　　<div style="border:3px solid blue;">
　　<p><c:out value="${korean.mean}" /></p>

    </div>
    <button class="continue">答えを見る</button>
    <button class="close">閉じる</button>
</div>
 </c:forEach>

 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script>
 $(document).ready(function(){

	 $(".article div, .close").hide();

	 $(".continue").click(function(){
		 $(this).prev().slideDown();
		 $(this).hide();
		 $(this).next().show();
	 });

	 $(".close").click(function(){
		 $(this).prev().prev().slideUp();
		 $(this).hide();
		 $(this).prev().show();
	 });

 });

 </script>
</body>
</html>