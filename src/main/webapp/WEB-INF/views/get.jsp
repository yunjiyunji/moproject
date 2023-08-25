<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${font.name }ㅣ모글코</title>
<link rel="stylesheet" href="/resources/css/get.css">
<link rel="stylesheet" href="/resources/css/font.css">
</head>
<%@include file="../includes/header.jsp"%>
<body>

	<div class="font-get">
		<div class="font-content-header">
		
			<div class="about-font">
				<div class="font-name"><c:out value="${font.name }" /></div>
				<div class="font-prod"><strong>제작</strong><p><c:out value="${font.production }" /></p></div>	
			</div>
			<div class="about-font-button">
				<a href="#">다운로드 페이지로 이동</a>
				<a href="#">즐겨찾기</a>
			</div>
				
		</div>
		
		<div class="font-content-body">
			<div class="font-content-body-1">
				<div class="font-preview">
					<div class="title"><strong>폰트 미리보기</strong></div>
					<p><c:out value="${font.coment }" /><p>
				</div>
				<div class="font-license">
					<div class="title-2"><strong>라이선스 본문</strong></div>
					<div class="font-license-box"><p>라이선스가 어쩌구 저쩌구 여기에 써도 되고 쓰면 안되고 어쩌구 저쩌구</p></div>
				</div>
			</div>
			
			<div class="font-content-body-2">
				<div class="font-talk">
					<div class="title"><strong>모톡</strong></div>
				</div>
			</div>
		
		</div>
	</div>
</body>
<%@include file="../includes/footer.jsp"%>
</html>