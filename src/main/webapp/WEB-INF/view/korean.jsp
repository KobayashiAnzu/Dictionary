<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>韓国語辞書</title>
<link rel="stylesheet" href="css/quiz.css">
</head>
<body>

<p><a href="home">Home</a></p>
<p><a href="wordlist/add">＋新規追加</a></p>

<form:form action="" method="post" modelAttribute="">
<p>カテゴリから探す：
<select name="category">
			<option value="挨拶">挨拶</option>
			<option value="天候">天候</option>
			<option value="食べ物">食べ物</option>
			<option value="生き物">生き物</option>
			<option value="自然">自然</option>
			<option value="家族・人">家族・人</option>
			<option value="数字">数字</option>
			<option value="色">色</option>
			<option value="季節">季節</option>
			<option value="日時・カレンダー">日時・カレンダー</option>
			<option value="職業・会社">職業・会社</option>
			<option value="趣味">趣味</option>
			<option value="家・日用品">家・日用品</option>
			<option value="病気・医療">病気・医療</option>
			<option value="医療・装飾品">衣料・装飾品</option>
			<option value="方向・位置">方向・位置</option>
			<option value="動詞（動作）">動詞（動作）</option>
			<option value="形容詞">形容詞</option>
			<option value="前置詞・副詞">前置詞・副詞</option>
			<option value="代名詞">代名詞</option>
			<option value="その他">その他</option>
		　</select>
		<input type="submit" value="調べる"/>
		</p>
</form:form>


<table border="1">

		<tr>
			<th>単語</th>
			<th>読み</th>
			<th>意味</th>
			<th>カテゴリ</th>
			<th colspan="2">操作</th>
		</tr>
<c:forEach items="${koreans}" var="korean">
		<tr>
			<td><c:out value="${korean.name}" /></td>
			<td><c:out value="${korean.reading}" /></td>
			<td><c:out value="${korean.mean}" /></td>
			<td><c:out value="${korean.category}" /></td>
			<td><a href="wordlist/update/<c:out value="${korean.id}" />">編集</a></td>
		    <td><a href="wordlist/delete/<c:out value="${korean.id}" />">削除</a></td>
		</tr>
</c:forEach>
	</table>

	<!-- ページ番号 -->
<c:choose>
	<c:when test="${page == 1}">
		| 前
	</c:when>
	<c:otherwise>
		| <a href="?page=<c:out value="${page - 1}" />">前</a>
	</c:otherwise>
</c:choose>

<c:forEach begin="1" end="${totalPages}" varStatus="vs">
	<c:choose>
		<c:when test="${page == vs.count}">
			| ${vs.count}
		</c:when>
		<c:otherwise>
			| <a href="?page=${vs.count}">${vs.count}</a>
		</c:otherwise>
	</c:choose>
</c:forEach>

<c:choose>
	<c:when test="${page == totalPages}">
		| 次
	</c:when>
	<c:otherwise>
		| <a href="?page=<c:out value="${page + 1}" />">次</a>
	</c:otherwise>
</c:choose>

<div class="container h-100">
<form:form action="" method="post" modelAttribute="diary" class="d-flex flex-row justify-content-center align-items-center">
    <div class="form-group w-50 p-3">
      <textarea id="textarea-with-border" class="form-control" rows=20 cols=80 name="contents">
      </textarea>
    </div>
    <input type="submit" value="投稿"/>
  </form:form>
</div>


</body>
</html>