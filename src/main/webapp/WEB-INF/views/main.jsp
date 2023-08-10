<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>모글코 | 코딩 글꼴 모음</title>
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/font.css">
</head>
<%@include file="../includes/header.jsp"%>
<body>
	
	<div class="list_wrap">
        <ul>
          <c:forEach items="${list}" var="font">
              <li class="item item_${font.fid }">
                  <div class="item-header">
                  		<strong><c:out value="${font.name }"/></strong>
                      <p><c:out value="${font.production }"/></p>
                  </div>
                  <div class="item-body">
                      <p><c:out value="${font.coment }"/></p>
                  </div>
                  <div class="item-footer">
                      <a href="#">좋아요 버튼</a>
                  </div>
              </li>
           </c:forEach>
		</ul>
	</div>

</body>
<%@include file="../includes/footer.jsp"%>
</html>