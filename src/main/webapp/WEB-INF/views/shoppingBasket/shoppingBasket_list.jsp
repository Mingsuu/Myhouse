<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
</head>
<body>
<jsp:include page="../header_login.jsp" />

	<div class="commerce-cart-empty">
		<div class="commerce-cart-empty__content">
			<img class="commerce-cart-empty__content__image"
				src="http://localhost:9000/myhouse/images/BasketBanner.PNG" alt="장바구니가 비었습니다."><a
				class="button button--color-blue button--size-50 button--shape-4 commerce-cart-empty__content__button"
				href="/store">상품 담으러 가기</a>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />

</body>
</html>