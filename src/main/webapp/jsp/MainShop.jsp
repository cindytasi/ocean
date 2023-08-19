<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script type="text/javascript" src="<c:url value="/js/jquery/jquery-3.7.0.min.js"/>"></script>
<title>Ocean</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicons -->
<link rel="shortcut icon" href="<c:url value="/img/favicon.ico"/>"
	type="image/x-icon">
<link rel="apple-touch-icon" href="/img/icon.png">

<!-- ************************* CSS Files ************************* -->

<!-- Vendor CSS -->

<link rel="stylesheet" href="<c:url value="/css/vendor.css"/>">

<!-- style css -->

<link rel="stylesheet" href="<c:url value="/css/main.css"/>">

<style>

#footerID {
	background: #000;
	background-image: url("./img/waves_5.jpg");
	color: #81D8D0;

}
.footer_detail li>a {
    color: #fff;
    text-decoration: none;
}

.footer_detail li>a:hover {
    color: var(--bs-blue);
}

.carousel-control-prev,
.carousel-control-next {
    width: 3%;
    background-color: #000;
}

.carousel-control-prev-icon,
.carousel-control-next-icon {
    width: 4rem;
    height: 5rem;
}

.card {
    background: transparent;
}

</style>
<style type="text/css">
.checked {
	background-color: gainsboro;
}

.selected-color {
	background-color: gainsboro; /* 设置选中标签的背景颜色为红色，你可以根据需要更改颜色 */
	color: #FFFFFF; /* 设置选中标签的文本颜色为白色，你可以根据需要更改颜色 */
}

:root {
	--bs-blue: #81D8D0;
}

/* 頁面背景色 */
.list {
	background: #000;
}

/* 清單 */
.navbar-dark .navbar-nav .nav-link:focus, .navbar-dark .navbar-nav .nav-link:hover
	{
	color: var(--bs-blue)
}

.navbar {
	background: #000;
}

/* search */
.bi {
	color: #fff;
	font-size: 25px;
}

.bi:hover {
	color: #81D8D0;
}

/* 下拉選單 */
.dropdown-item:hover {
	font-size: 20px;
	color: rgb(9, 163, 130);
}

.dropdown-menu.show {
	opacity: 65%;
}

.errMsg {
	position: absolute;
	right: 0;
	/* 使用 absolute 定位，並設定 right 為 0 */
	transform: translateX(100%);
	/* 將元素右偏移自身寬度的 100%，這將將元素移到最右邊 */
}
</style>


</head>

<body>
	<!-- Header Start -->
	<header class="header">
		<jsp:include page="/jsp/SelectBar.jsp"></jsp:include>
		<div class="header-inner fixed-header"
			style="background-color: #deefed;">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-10 col-lg-9 col-3">
						<nav class="main-navigation">
							<div class="mainmenu-nav d-none d-lg-block">
								<ul class="mainmenu">
									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=AllProduct"/>"
										class="mainmenu__link"> <span class="mm-text">所有商品</span>
									</a></li>

									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=Women"/>"
										class="mainmenu__link"> <span class="mm-text">女裝</span>
									</a>
										<ul class="sub-menu"">
											<li><a
												href="<c:url value="/ShopServlet?type=WomenTop"/>"> <span
													class="mm-text">上衣 Top</span>
											</a></li>
											<li><a
												href="<c:url value="/ShopServlet?type=WomenBottom"/>"> <span
													class="mm-text">下身 Bottom</span>
											</a></li>
										</ul></li>

									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=Men"/>"
										class="mainmenu__link"> <span class="mm-text">男裝</span>
									</a>
										<ul class="sub-menu">
											<li><a href="<c:url value="/ShopServlet?type=MenTop"/>">
													<span class="mm-text">上衣 Top</span>
											</a></li>
											<li><a
												href="<c:url value="/ShopServlet?type=MenBottom"/>"> <span
													class="mm-text">下身 Bottom</span>
											</a></li>
										</ul></li>


									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=Shoes"/>"
										class="mainmenu__link"> <span class="mm-text">鞋子</span>
									</a>
										<ul class="sub-menu">
											<li><a
												href="<c:url value="/ShopServlet?type=WomenShoes"/>"> <span
													class="mm-text">女鞋 women's shoes</span>
											</a></li>
											<li><a
												href="<c:url value="/ShopServlet?type=MenShoes"/>"> <span
													class="mm-text">男鞋 Men's shoes</span>
											</a></li>
										</ul></li>
									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=Accessories"/>"
										class="mainmenu__link"> <span class="mm-text">飾品</span>
									</a></li>
									<li class="mainmenu__item menu-item-has-children"><a
										href="<c:url value="/ShopServlet?type=Others"/>"
										class="mainmenu__link"> <span class="mm-text">其他周邊</span>
									</a></li>

									<div class="errMsg" style="display: inline-block">
										<ul class="breadcrumb">


											<li><a href="<c:url value="/MainShopServlet"/>">Home</a></li>
											<a href="<c:url value="/ShopServlet?type=AllProduct"/>">Shop</a>



										</ul>
									</div>
								</ul>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="mobile-menu"></div>
					</div>
				</div>
			</div>
		</div>

	</header>
	<!-- Header End -->
	<!-- Preloader Start -->
	<div class="zakas-preloader active">
		<div
			class="zakas-preloader-inner h-100 d-flex align-items-center justify-content-center">
			<div class="zakas-child zakas-bounce1"></div>
			<div class="zakas-child zakas-bounce2"></div>
			<div class="zakas-child zuka-bounce3"></div>
		</div>
	</div>
	<!-- Preloader End -->

	<!-- Main Wrapper Start -->
	<div class="wrapper">

		<!-- Main Content Wrapper Start -->
		<div class="main-content-wrapper">
			<!-- Slider area Start -->
			<section class="homepage-slider-wrapper mb--95">
				<div class="zakas-element-carousel homepage-slider"
					data-slick-options='{
                    "arrows": true,
                    "isCustomArrow": true,
                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-double-left" },
                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-double-right" },
                    "appendArrows": ".slick-btn-wrapper"
                }'>

					<c:forEach begin="1" end="3" var="brand" items="${main}">
						<div
							class="single-slide slider-height bg-style d-flex align-items-center"
							style="background-image: url(<c:url value="/ImageSevlet?id=${brand.productImgId}&photo_data=1"/>);">
							<div class="container">
								<div class="row">
									<div class="col-xl-6 col-md-7 col-sm-8">
										<div class="slider-content bg-shape text-center ptb--100">
											<h1 class="heading__primary mb--30">
												<span class="heading__primary--sub"
													data-animation="fadeInUp" data-duration=".4s"
													data-delay=".7s">Ocean-2023</span> <span
													class="heading__primary--main" data-animation="fadeInUp"
													data-duration=".4s" data-delay="1s">Be Shopaholic!</span>
											</h1>
											<a href="<c:url value="/ShopServlet?type=AllProduct"/>"
												class="btn" data-animation="fadeInUp" data-duration=".4s"
												data-delay="1.2s">Shop Now <i
												class="fa fa-angle-double-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<div
						class="single-slide slider-height bg-style d-flex align-items-center"
						style="background-image: url(<c:url value="/img/slider/slider-2.jpg"/>);">
						<div class="container">
							<div class="row">
								<div class="col-xl-6 col-md-7 col-sm-8">
									<div class="slider-content bg-shape text-center ptb--100">
										<h1 class="heading__primary mb--30">
											<span class="heading__primary--sub" data-animation="fadeInUp"
												data-duration=".4s" data-delay=".7s">Ocean-2023</span> <span
												class="heading__primary--main" data-animation="fadeInUp"
												data-duration=".4s" data-delay="1s">Be Shopaholic!</span>
										</h1>
										<a href="shop.html" class="btn" data-animation="fadeInUp"
											data-duration=".4s" data-delay="1.2s">Shop Now <i
											class="fa fa-angle-double-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div
						class="single-slide slider-height bg-style d-flex align-items-center"
						style="background-image: url(<c:url value="/img/slider/slider-3.jpg"/>);">
						<div class="container">
							<div class="row">
								<div class="col-xl-6 col-md-7 col-sm-8">
									<div class="slider-content bg-shape text-center ptb--100">
										<h1 class="heading__primary mb--30">
											<span class="heading__primary--sub" data-animation="fadeInUp"
												data-duration=".4s" data-delay=".7s">Ocean-2023</span> <span
												class="heading__primary--main" data-animation="fadeInUp"
												data-duration=".4s" data-delay="1s">Be Shopaholic!</span>
										</h1>
										<a href="shop.html" class="btn" data-animation="fadeInUp"
											data-duration=".4s" data-delay="1.2s">Shop Now <i
											class="fa fa-angle-double-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="slick-btn-wrapper"></div>
						</div>
					</div>
				</div>
			</section>
			<!-- Slider area End -->
			<div class="banner-area">
				<div class="container-fluid p-0">
					
				</div>
			</div>
			<!-- Product Tab area Start -->
			<section class="product-tab-area mb--50">
				<div class="container">
					<div class="row justify-content-center mb--45"></div>
					<div class="row">
						<div class="col-12">
							<div class="product-tab tab-style-1">
								<div class="tab-content" id="new-arrival-tab-content">
									<div class="tab-pane fade show active" id="new-all"
										role="tabpanel" aria-labelledby="new-all-tab">
										<div class="row">



											<c:forEach var="brand" items="${main}">
												<div class="col-xl-3 col-md-4 col-sm-6 mb--50">
													<div class="zakas-product">
														<div class="product-inner">
															<figure class="product-image">
																<a
																	href="<c:url value="/ShopDetailServlet?productName=${brand.productName}&color=${brand.colorType}"/>">
																	<img
																	src="<c:url value="/ImageSevlet?id=${brand.productImgId}&photo_data=1"/>"
																	alt="Products">
																</a>

															</figure>
															<div class="product-info">
																<h3 class="product-title mb--15">
																	<a
																		href="<c:url value="/ShopDetailServlet?productName=${brand.productName}&color=${brand.colorType}"/>">${brand.productName}</a>
																</h3>
																<div class="product-price-wrapper mb--30">
																	<span class="money">NT.${brand.price}</span>
																</div>

															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
			</section>
			<!-- Product Tab area End -->

			<!-- Banner Area Start -->
			<div class="banner-area home_01_banner_01 position-relative">
				<div class="conntainer-fluid p-0">
					<div class="row no-gutters">
						<div class="col-md-6">
							<div class="banner-box">
								<div
									class="banner-inner banner-bg-shape banner-info-over-img banner-info-center">
									<figure class="banner-image">
										<img src="<c:url value="/ImageSevlet?id=3&photo_data=2"/>"
											alt="Banner">
									</figure>
									<div class="banner-info">
										<div class="banner-info--inner text-center">
											<p class="banner-title-1 color--white">Up Coming Discount</p>
											<p class="banner-title-2 color--white mb--20 mb-lg--10">For Women</p>
											<a href="<c:url value="/ShopServlet?type=Wonmen"/>">Shop Now<i
												class="fa fa-angle-double-right"></i></a>
										</div>
									</div>
									<a href="shop.html" class="banner-link"></a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="banner-box">
								<div
									class="banner-inner banner-bg-shape banner-info-over-img banner-info-center">
									<figure class="banner-image">
										<img src="<c:url value="/ImageSevlet?id=6&photo_data=2"/>"
											alt="Banner">
									</figure>
									<div class="banner-info">
										<div class="banner-info--inner text-center">
											<p class="banner-title-1 color--white">Up Coming Discount</p>
											<p class="banner-title-2 color--white mb--20 mb-lg--10">For Men</p>
											<a href="<c:url value="/ShopServlet?type=Men"/>">Shop Now<i
												class="fa fa-angle-double-right"></i></a>
										</div>
									</div>
									<a href="shop.html" class="banner-link"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Banner Area End -->

			<!-- Method area Start -->
			<section class="method-area bg-color ptb--80 mb--95"
				data-bg-color="#f6f6f6">
				
			</section>
			<!-- Method area End -->

			<!-- Newsletter Area Start -->

			<!-- Newsletter Area End -->
		</div>
		<!-- Main Content Wrapper End -->

		<!-- Footer Start-->
		<footer class="footer" id="footerID">
			<div class="footer-bottom bg-color ptb--25">
				<div class="container">
					<div class="row align-items-center">
						<div class="container mt-5">
							<ul
								class="footer_detail d-flex justify-content-center list-unstyled">
								<li class="px-2"><a href="../index/qaIndex.html">常見問題</a></li>
								<li class="px-2"><a href="../index/copyright.html">版權聲明</a></li>
								<li class="px-2"><a href="../index/instruction.html">使用說明</a></li>
								<li class="px-2"><a href="../index/aboutUs.html">關於我們</a></li>
							</ul>
							<span class="d-flex justify-content-center">Copyright©
								2023 Ocean.All rights reserved.</span>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer End-->


		<!-- Mini Cart Start -->
		<aside class="mini-cart" id="miniCart">
			<div class="mini-cart-wrapper">
				<a href="" class="btn-close"><i class="flaticon flaticon-cross"></i></a>
				<div class="mini-cart-inner">
					<h3 class="mini-cart__heading mb--40 mb-lg--30">Shopping Cart</h3>
					<div class="mini-cart__content">
						<ul class="mini-cart__list">
							<li class="mini-cart__product"><a href="#"
								class="remove-from-cart remove"> <i
									class="flaticon flaticon-cross"></i>
							</a>
								<div class="mini-cart__product__image">
									<img src="<c:url value="/img/products/prod-1-100x100.jpg"/>"
										alt="products">
								</div>
								<div class="mini-cart__product__content">
									<a class="mini-cart__product__title"
										href="product-details.html">Chain print bermuda shorts </a> <span
										class="mini-cart__product__quantity">1 x $49.00</span>
								</div></li>
							<li class="mini-cart__product"><a href="#"
								class="remove-from-cart remove"> <i
									class="flaticon flaticon-cross"></i>
							</a>
								<div class="mini-cart__product__image">
									<img src="<c:url value="/img/products/prod-2-100x100.jpg"/>"
										alt="products">
								</div>
								<div class="mini-cart__product__content">
									<a class="mini-cart__product__title"
										href="product-details.html">Waxed-effect pleated skirt</a> <span
										class="mini-cart__product__quantity">1 x $49.00</span>
								</div></li>
							<li class="mini-cart__product"><a href="#"
								class="remove-from-cart remove"> <i
									class="flaticon flaticon-cross"></i>
							</a>
								<div class="mini-cart__product__image">
									<img src="<c:url value="/img/products/prod-5-100x100.jpg"/>"
										alt="products">
								</div>
								<div class="mini-cart__product__content">
									<a class="mini-cart__product__title"
										href="product-details.html">Waxed-effect pleated skirt</a> <span
										class="mini-cart__product__quantity">1 x $49.00</span>
								</div></li>
						</ul>
						<div class="mini-cart__total">
							<span>Subtotal</span> <span class="ammount">$98.00</span>
						</div>
						<div class="mini-cart__buttons">
							<a href="cart.html" class="btn btn-fullwidth btn-bg-sand mb--20">View
								Cart</a> <a href="checkout.html"
								class="btn btn-fullwidth btn-bg-sand">Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</aside>
		<!-- Mini Cart End -->

		<!-- Global Overlay Start -->
		<div class="zakas-global-overlay"></div>
		<!-- Global Overlay End -->

		<!-- Qicuk View Modal Start -->
		<div class="modal fade product-modal" id="productModal" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true"><i
								class="flaticon flaticon-cross"></i></span>
						</button>
						<div class="row">
							<div class="col-lg-6">
								<div class="zakas-element-carousel nav-vertical-center"
									data-slick-options='{
                            "slidesToShow": 1,
                            "slidesToScroll": 1,
                            "arrows": true,
                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-double-left" },
                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-double-right" }
                        }'>
									<div class="product-image">
										<div class="product-image--holder">
											<a href="product-details.html"> <img
												src="<c:url value="/img/products/prod-9-1.jpg"/>"
												alt="Product Image" class="primary-image">
											</a>
										</div>
										<span class="product-badge sale">sale</span>
									</div>
									<div class="product-image">
										<div class="product-image--holder">
											<a href="product-details.html"> <img
												src="<c:url value="/img/products/prod-9-1.jpg"/>"
												alt="Product Image" class="primary-image">
											</a>
										</div>
										<span class="product-badge sale">sale</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="modal-box product-summary">
									<div class="product-navigation text-right mb--20">
										<a href="#" class="prev"><i
											class="fa fa-angle-double-left"></i></a> <a href="#" class="next"><i
											class="fa fa-angle-double-right"></i></a>
									</div>
									<div class="product-rating d-flex mb--20">
										<div class="star-rating star-three">
											<span>Rated <strong class="rating">5.00</strong> out
												of 5
											</span>
										</div>
									</div>
									<h3 class="product-title mb--20">Black Blazer</h3>
									<p class="product-short-description mb--25">Donec accumsan
										auctor iaculis. Sed suscipit arcu ligula, at egestas magna
										molestie a. Proin ac ex maximus, ultrices justo eget, sodales
										orci. Aliquam egestas libero ac turpis pharetra, in vehicula
										lacus scelerisque. Vestibulum ut sem laoreet, feugiat tellus
										at, hendrerit arcu.</p>
									<div class="product-price-wrapper mb--25">
										<span class="money">$200.00</span> <span
											class="price-separator">-</span> <span class="money">$400.00</span>
									</div>
									<form action="#" class="variation-form mb--30">
										<div
											class="product-color-variations d-flex align-items-center mb--20">
											<p class="variation-label">Color:</p>
											<div class="product-color-variation variation-wrapper">
												<div class="variation">
													<a class="product-color-variation-btn red selected"
														data-toggle="tooltip" data-placement="top" title="Red">
														<span class="product-color-variation-label">Red</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-color-variation-btn black"
														data-toggle="tooltip" data-placement="top" title="Black">
														<span class="product-color-variation-label">Black</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-color-variation-btn pink"
														data-toggle="tooltip" data-placement="top" title="Pink">
														<span class="product-color-variation-label">Pink</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-color-variation-btn blue"
														data-toggle="tooltip" data-placement="top" title="Blue">
														<span class="product-color-variation-label">Blue</span>
													</a>
												</div>
											</div>
										</div>
										<div
											class="product-size-variations d-flex align-items-center mb--15">
											<p class="variation-label">Size:</p>
											<div class="product-size-variation variation-wrapper">
												<div class="variation">
													<a class="product-size-variation-btn selected"
														data-toggle="tooltip" data-placement="top" title="S">
														<span class="product-size-variation-label">S</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-size-variation-btn" data-toggle="tooltip"
														data-placement="top" title="M"> <span
														class="product-size-variation-label">M</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-size-variation-btn" data-toggle="tooltip"
														data-placement="top" title="L"> <span
														class="product-size-variation-label">L</span>
													</a>
												</div>
												<div class="variation">
													<a class="product-size-variation-btn" data-toggle="tooltip"
														data-placement="top" title="XL"> <span
														class="product-size-variation-label">XL</span>
													</a>
												</div>
											</div>
										</div>
										<a href="" class="reset_variations">Clear</a>
									</form>
									<div
										class="product-action d-flex flex-sm-row flex-column align-items-sm-center align-items-start mb--30">
										<div
											class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
											<label class="quantity-label" for="quick-qty">Quantity:</label>
											<div class="quantity">
												<input type="number" class="quantity-input" name="qty"
													id="quick-qty" value="1" min="1">
											</div>
										</div>
										<button type="button"
											class="btn btn-small btn-bg-red btn-color-white btn-hover-2"
											onclick="window.location.href='cart.html'">Add To
											Cart</button>
									</div>
									<div class="product-footer-meta">
										<p>
											<span>Category:</span> <a href="shop.html">Full Sweater</a>,
											<a href="shop.html">SweatShirt</a>, <a href="shop.html">Jacket</a>,
											<a href="shop.html">Blazer</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Qicuk View Modal End -->
	</div>
	<!-- Main Wrapper End -->


	<!-- ************************* JS Files ************************* -->

	<!-- jQuery JS -->

	<script src="<c:url value="/js/vendor.js"/>"></script>

	<!-- Main JS -->
	<script src="<c:url value="/js/main.js"/>"></script>






</body>

</html>