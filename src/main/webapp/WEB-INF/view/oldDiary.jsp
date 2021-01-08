<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>過去の日記</title>
</head>
<body>
<table border="1">

		<tr>
			<th>本文</th>
			<th>日付</th>
			<th colspan="2">操作</th>
		</tr>
<c:forEach items="${diaries}" var="diary">
		<tr>
			<td><c:out value="${diary.contents}" /></td>
			<td><fmt:formatDate value="${diary.created}" pattern="y/M/d" /></td>

			<td><a href="wordlist/update/<c:out value="${diary.id}" />">編集</a></td>
		    <td><a href="wordlist/delete/<c:out value="${diary.id}" />">削除</a></td>
		</tr>
</c:forEach>
	</table>
</body>
</html>