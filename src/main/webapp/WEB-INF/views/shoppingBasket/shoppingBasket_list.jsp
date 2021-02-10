<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.myhouse.vo.*"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<c:choose>
	<c:when test="${map.count == 0}">
	 	<div class="commerce-cart-empty">
			<div class="commerce-cart-empty__content">
				<img class="commerce-cart-empty__content__image"
					src="http://localhost:9000/myhouse/images/BasketBanner.PNG" alt="장바구니가 비었습니다."><a
					class="button button--color-blue button--size-50 button--shape-4 commerce-cart-empty__content__button"
					href="http://localhost:9000/myhouse/store_index.do?category=0">상품 담으러 가기</a>
			</div>
		</div>
	</c:when>

	<c:otherwise>
	<form class="card-collection-form container" name="basketForm" action="basket_proc.do" method="post" enctype="multipart/form-data">
	<div class="commerce-cart-wrap">
		<div class="container">
			<div class="commerce-cart row">
				<div class="commerce-cart__content-wrap col-12 col-md-7 col-lg-8">
					<div class="commerce-cart__content">
						<div data-sticky-enabled="false" data-sticky-disabled="true"
							data-sticky-always="false" data-sticky-ignore="true"
							data-direction="top" data-offset="81"
							class="sticky-container commerce-cart__header-wrap">
							<div class="sticky-child commerce-cart__header"
								style="position: relative;">
								<span class="commerce-cart__header__left"><label
									class="_3xqzr _4VN_z"><div class="_3zqA8">
											<input type="checkbox" class="_3UImz" value="" checked=""><span
												class="_2mDYR"><svg width="1em" height="1em"
													viewBox="0 0 16 16" class="_2UftR">
													<path fill="currentColor"
														d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span>
										</div>
										<span class="_1aN3J"><span
											class="commerce-cart__header__caption">모두선택</span></span></label></span><span
									class="commerce-cart__header__right"><button
										class="commerce-cart__header__delete" type="button">선택삭제</button></span>
							</div>
						</div>
						<ul class="commerce-cart__content__group-list">
							<li class="commerce-cart__content__group-item"><article
									class="commerce-cart__group">
									<h1 class="commerce-cart__group__header">코지테이블 배송</h1>
									<ul class="commerce-cart__group__item-list">
										<li class="commerce-cart__group__item"><article
												class="commerce-cart__delivery-group">
												<ul class="commerce-cart__delivery-group__product-list">
													<li class="commerce-cart__delivery-group__product-item"><article
															class="carted-product">
															<div class="carted-product__select">
																<div class="_3zqA8">
																	<input type="checkbox" class="_3UImz" value=""
																		checked=""><span class="_2mDYR"><svg
																			width="1em" height="1em" viewBox="0 0 16 16"
																			class="_2UftR">
																			<path fill="currentColor"
																				d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span>
																</div>
															</div>
															<a
																class="product-small-item product-small-item--clickable"
																href="/productions/170658/selling"><div
																	class="product-small-item__image">
																	<img alt=""
																		src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
																		srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160214145393593291.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
																</div>
																<div class="product-small-item__content">
																	<h1 class="product-small-item__title">[코지테이블] 빈티지
																		나뭇잎 브런치 플레이트 2colors</h1>
																	<p class="product-small-item__caption">50,000원 이상
																		무료배송 | 일반택배</p>
																</div></a>
															<button class="carted-product__delete" type="button"
																aria-label="삭제">
																<svg width="12" height="12" viewBox="0 0 12 12"
																	fill="currentColor" preserveAspectRatio="xMidYMid meet">
																	<path fill-rule="nonzero"
																		d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
															</button>
															<ul class="carted-product__option-list">
																<li class="carted-product__option-list__item"><article
																		class="selling-option-item">
																		<h2 class="selling-option-item__name">블루 (20cm)</h2>
																		<button class="selling-option-item__delete"
																			type="button" aria-label="삭제">
																			<svg width="12" height="12" viewBox="0 0 12 12"
																				fill="currentColor"
																				preserveAspectRatio="xMidYMid meet">
																				<path fill-rule="nonzero"
																					d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
																		</button>
																		<div class="selling-option-item__controls">
																			<div class="selling-option-item__quantity">
																				<div
																					class="input-group select-input option-count-input">
																					<select class="form-control"><option
																							value="0">1</option>
																						<option value="1">2</option>
																						<option value="2">3</option>
																						<option value="3">4</option>
																						<option value="4">5</option>
																						<option value="5">6</option>
																						<option value="6">7</option>
																						<option value="7">8</option>
																						<option value="8">9</option>
																						<option value="9">10</option></select><span
																						class="select-input__icon"><svg
																							class="icon" width="10" height="10"
																							preserveAspectRatio="xMidYMid meet"
																							style="fill: currentcolor;">
																							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
																				</div>
																			</div>
																			<p class="selling-option-item__price">
																				<span class="selling-option-item__price__number">44,500</span>원
																			</p>
																		</div>
																	</article></li>
															</ul>
															<div class="carted-product__footer">
																<span class="carted-product__footer__left"><button
																		class="carted-product__edit-btn" type="button">옵션변경</button>
																	<button class="carted-product__order-btn" type="button">바로구매</button></span><span
																	class="carted-product__subtotal"><span
																	class="carted-product__subtotal__number">44,500</span>원</span>
															</div>
														</article></li>
												</ul>
												<footer class="commerce-cart__delivery-group__footer">
													<p class="commerce-cart__delivery-group__total">배송비
														2,500원</p>
													<p class="commerce-cart__delivery-group__group-caption">묶음배송
														상품 5,500원 추가시 무료배송</p>
												</footer>
											</article></li>
									</ul>
								</article></li>
							<li class="commerce-cart__content__group-item"><article
									class="commerce-cart__group">
									<h1 class="commerce-cart__group__header">아라크네 배송</h1>
									<ul class="commerce-cart__group__item-list">
										<li class="commerce-cart__group__item"><article
												class="commerce-cart__delivery-group">
												<ul class="commerce-cart__delivery-group__product-list">
													<li class="commerce-cart__delivery-group__product-item"><article
															class="carted-product">
															<div class="carted-product__select">
																<div class="_3zqA8">
																	<input type="checkbox" class="_3UImz" value=""
																		checked=""><span class="_2mDYR"><svg
																			width="1em" height="1em" viewBox="0 0 16 16"
																			class="_2UftR">
																			<path fill="currentColor"
																				d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span>
																</div>
															</div>
															<a
																class="product-small-item product-small-item--clickable"
																href="/productions/109977/selling"><div
																	class="product-small-item__image">
																	<img alt=""
																		src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554180980540_oq.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
																		srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554180980540_oq.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554180980540_oq.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554180980540_oq.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
																</div>
																<div class="product-small-item__content">
																	<h1 class="product-small-item__title">[아라크네]
																		[오늘의딜] 1+1 우드블라인드 오동나무 원목 38colors</h1>
																	<p class="product-small-item__caption">무료배송 | 일반택배</p>
																</div></a>
															<button class="carted-product__delete" type="button"
																aria-label="삭제">
																<svg width="12" height="12" viewBox="0 0 12 12"
																	fill="currentColor" preserveAspectRatio="xMidYMid meet">
																	<path fill-rule="nonzero"
																		d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
															</button>
															<ul class="carted-product__option-list">
																<li class="carted-product__option-list__item"><article
																		class="selling-option-item">
																		<h2 class="selling-option-item__name">①제품선택:
																			오동나무(크롬사각손잡이) / ②사이즈선택: 1+1 (가로90 x 세로160 2개)</h2>
																		<button class="selling-option-item__delete"
																			type="button" aria-label="삭제">
																			<svg width="12" height="12" viewBox="0 0 12 12"
																				fill="currentColor"
																				preserveAspectRatio="xMidYMid meet">
																				<path fill-rule="nonzero"
																					d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
																		</button>
																		<div class="selling-option-item__controls">
																			<div class="selling-option-item__quantity">
																				<div
																					class="input-group select-input option-count-input">
																					<select class="form-control"><option
																							value="0">1</option>
																						<option value="1">2</option>
																						<option value="2">3</option>
																						<option value="3">4</option>
																						<option value="4">5</option>
																						<option value="5">6</option>
																						<option value="6">7</option>
																						<option value="7">8</option>
																						<option value="8">9</option>
																						<option value="9">10+</option></select><span
																						class="select-input__icon"><svg
																							class="icon" width="10" height="10"
																							preserveAspectRatio="xMidYMid meet"
																							style="fill: currentcolor;">
																							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
																				</div>
																			</div>
																			<p class="selling-option-item__price">
																				<span class="selling-option-item__price__number">64,800</span>원
																			</p>
																		</div>
																		<label class="selling-option-item__memo"><p
																				class="selling-option-item__memo__text">색상번호를
																				입력해주세요. (필수)</p>
																			<textarea placeholder="주문에 필요한 내용을 적어주세요"
																				class="form-control text-area-input selling-option-item__memo__input"
																				style="height: 40px;">fdsa</textarea></label>
																	</article></li>
															</ul>
															<div class="carted-product__footer">
																<span class="carted-product__footer__left"><button
																		class="carted-product__edit-btn" type="button">옵션변경</button>
																	<button class="carted-product__order-btn" type="button">바로구매</button></span><span
																	class="carted-product__subtotal"><span
																	class="carted-product__subtotal__number">64,800</span>원</span>
															</div>
														</article></li>
												</ul>
												<footer class="commerce-cart__delivery-group__footer">
													<p class="commerce-cart__delivery-group__total">배송비 무료</p>
												</footer>
											</article></li>
									</ul>
								</article></li>
						</ul>
						<dl class="commerce-cart__summary commerce-cart__content__summary">
							<div class="commerce-cart__summary__row">
								<dt>총 상품금액</dt>
								<dd>
									<span class="number">213,400</span>원
								</dd>
							</div>
							<div class="commerce-cart__summary__row">
								<dt>총 배송비</dt>
								<dd>
									+ <span class="number">2,500</span>원
								</dd>
							</div>
							<div class="commerce-cart__summary__row">
								<dt>총 할인금액</dt>
								<dd>
									- <span class="number">104,100</span>원
								</dd>
							</div>
							<div
								class="commerce-cart__summary__row commerce-cart__summary__row--total">
								<dt>결제금액</dt>
								<dd>
									<span class="number">111,800</span>원
								</dd>
							</div>
						</dl>
					</div>
				</div>
				<div class="commerce-cart__side-bar-wrap col-12 col-md-5 col-lg-4">
					<div data-sticky-enabled="false" data-sticky-disabled="false"
						data-sticky-always="false" data-sticky-ignore="false"
						data-direction="top" data-offset="81"
						class="sticky-container commerce-cart__side-bar-container"
						style="position: sticky; top: 81px;">
						<div class="sticky-child commerce-cart__side-bar"
							style="position: relative;">
							<dl
								class="commerce-cart__summary commerce-cart__side-bar__summary">
								<div class="commerce-cart__summary__row">
									<dt>총 상품금액</dt>
									<dd>
										<span class="number">213,400</span>원
									</dd>
								</div>
							<!-- 	<div class="commerce-cart__summary__row">
									<dt>총 배송비</dt>
									<dd>
										+ <span class="number">2,500</span>원
									</dd>
								</div> -->
								<!-- <div class="commerce-cart__summary__row">
									<dt>총 할인금액</dt>
									<dd>
										- <span class="number">104,100</span>원
									</dd>
								</div> -->
								<div
									class="commerce-cart__summary__row commerce-cart__summary__row--total">
									<dt>결제금액</dt>
									<dd>
										<span class="number">111,800</span>원
									</dd>
								</div>
							</dl>
							<div class="commerce-cart__side-bar__order">
								<button
									class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn"
									type="button">2개 상품 구매하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div data-sticky-enabled="false" data-sticky-disabled="false"
			data-sticky-always="false" data-sticky-ignore="false"
			data-direction="bottom" data-offset="0"
			class="sticky-container commerce-cart__footer-wrap"
			style="position: sticky; bottom: 0px;">
			<div class="sticky-child commerce-cart__footer"
				style="position: relative;">
				<div class="commerce-cart__footer__total">
					<span class="count">2개 </span><span class="cost">111,800원</span>
				</div>
				<button class="_1eWD8 _3SroY _16Bs1 commerce-cart__footer__order"
					type="button">바로구매</button>
			</div>
		</div>
	</div>
	</form>
	</c:otherwise>
</c:choose>

	<%-- <jsp:include page="../footer.jsp" /> --%>
</body>
</html>