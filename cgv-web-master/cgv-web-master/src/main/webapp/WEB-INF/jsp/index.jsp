
<%-- 
    Document   : person-form
    Created on : Jun 23, 2021, 9:39:44 AM
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    	 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	  
 	 <script src="https://kit.fontawesome.com/a076d05399.js"></script>
     <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Trang Chủ</title>
    </head>
    <body>
	<div style="background: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg_c_bricks.png)">
		<div class="container" style="background: white" >
			<div class="row">
				<div class="col-md-12 navbar" style="background-color: #1f1f24">
                    <a  class="logo navbar-brand text-white offset-md-2" href="/" style="width: 174px;
										text-align: left;
										margin-left: 0;"><img src="https://i.imgur.com/0B9AHrg.png" style="width: 100%;"/></a>
                    <nav class="navbar navbar-light bg-dark">
                    <form class="form-inline" action="/timPhim" method="get">
	                    <input class="form-control mr-sm-2" name="tenPhim" type="search" placeholder="Nhập tên phim..."
	                        aria-label="Tìm tên phim">
	                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Tìm kiếm</button>
	                </form>
                    </nav>
                    <ul class="nav">
                
                        <c:choose>
						    <c:when test="${sessionScope.username==null}">
						        <li class="nav-item"><a href="/login" class="nav-link">Đăng Nhập</a></li>

                        		<li class="nav-item"><a href="/showdangki" class="nav-link">Đăng Ký</a></li>
						    </c:when>    
						    <c:otherwise>
						    <li class="nav-item"><a href="/thongtinNd" class="nav-link">${sessionScope.username}</a></li>
						    <li class="nav-item"><a href="/lichSuDatVe" class="nav-link">Lịch Sử Đặt Vé</a></li>
						    <c:choose>
							    <c:when test="${sessionScope.role==2}">
							     	<li class="nav-item"><a href="/admin/phim" class="nav-link">Quản Lý</a></li>
							    </c:when>    
							</c:choose>
						    	
						        <li class="nav-item"><a href="/logout" class="nav-link">Đăng Xuất</a></li>
						       
						    </c:otherwise>
						</c:choose>
						
                        
                        
                        

                    </ul>
                </div>
				
				<!-- slider banner	 -->

				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"
					style="min-height: 450px;">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="info">
								<!-- Chèn nooik dung slide 1 -->

							</div>
						</div>
						<div class="carousel-item">
							<div class="info">
								<!-- Chèn nooik dung slide 1 -->

							</div>
						</div>
						<div class="carousel-item">
							<div class="info">
								<!-- Chèn nooik dung slide 1 -->

							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>

				</div>
			</div>




			<!-- Danh Sách Phim -->
			<div class="m-3">
				<div class="row">
					<div><a href="/"><h2 style="color: blue; font-weight: bold;">Phim Đang Chiếu</h2></a></div>
					<div><a href="/phimsapchieu"><h2 style="color: blue; font-weight: bold;margin-left: 60px">Phim Sắp chiếu</h2></a></div>
					<div><a href="/datve/lichrap"><h2 style="color: blue; font-weight: bold;margin-left: 60px">Phim Theo Rap</h2></a></div>
				</div>
				
				<div class="row">
		 			<c:forEach items="${pdc}" var="pdc">

							<div class="col-lg-3 col-md-6 col-sm-6" style="font-weight: bold; cursor: pointer;margin-top: 15px">
								<div class="card" style="width: 100%;background-color: antiquewhite;">
									<a href="/kiemtrasuat?idPhim=${pdc.id}"><img class="card-img-top"
										src="${pdc.hinhAnh}"
										alt="Card image cap" style="height: 400px;"></a>
									<div class="card-body">
										<p class="card-text">${pdc.tenPhim}</p>
									</div>
								</div>
							</div>
							
						
						</c:forEach>
				</div>
			</div>

			<div class="product-collateral toggle-content tabs home-event" style="text-align: center;">
				<div class="home-title">
					<h2 style="    background: url(https://www.CGGV.vn/skin/frontend/CGGV/default/images/h3_event.gif) no-repeat scroll center center / 142px 41px #FDFCF0;
					display: inline-block;
					width: 18%; text-indent: -99999px">event</h2>
				</div>
				
				<dl id="collateral-tabs" class="collateral-tabs">
										<dt class="tab current"><span>Thành Viên CGGV</span></dt>
						<dd class="tab-container current">
							<div class="tab-content">
								<div class="home-show-event">
									<ul class="slide_home_event thnhvinCGGV" style="position: relative; overflow: hidden;"><li class="cycle-slide active cycle-sentinel" style="position: static; top: 0px; left: 0px;right: 0; z-index: 100; opacity: 1; display: block; visibility: hidden;">
												<a href="https://www.CGGV.vn/default/newsoffer/birthday-promo/" style="visibility: hidden;">
													<img src="https://i.imgur.com/4aVei1Q.png" style="visibility: hidden;">
												</a>
											</li><div class="cycle-carousel-wrap" style="margin: 0px; padding: 0px; top: 0px; left: 0px;right: 0; position: absolute; white-space: nowrap;"><li class="cycle-slide active" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: inline-block; visibility: visible;">
												<a href="https://www.CGGV.vn/default/newsoffer/birthday-promo/">
													<img src="https://i.imgur.com/iyRWpfQ.jpg">
												</a>
											</li><li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
												<a href="https://www.CGGV.vn/default/newsoffer/u22-vn/">
													<img src="https://i.imgur.com/4aVei1Q.png">
												</a>
											</li><li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 97; display: inline-block;">
												<a href="https://www.CGGV.vn/default/newsoffer/happy-wednesday/">
													<img src="https://i.imgur.com/8MXWE1V.jpg">
												</a>
											</li><li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 96; display: inline-block;">
												<a href="https://www.CGGV.vn/default/newsoffer/CGGV-culture-day/">
													<img src="https://i.imgur.com/ebiY9zL.png">
												</a>
											</li></div>				
									</ul>
								</div>
							</div>
						</dd>			
										<dt class="tab last"><span>Tin Mới &amp; Ưu Đãi</span></dt>
						<dd class="tab-container last">
							<div class="tab-content">
								<div class="home-show-event">
									<ul class="slide_home_event tinmiui" style="position: relative; overflow: hidden;">
										<li class="cycle-slide active cycle-sentinel" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: block; visibility: hidden;">
												<a href="https://www.CGGV.vn/default/newsoffer/CGGV-shopeepay-promo-t9/" style="visibility: hidden;">
													<img src="https://i.imgur.com/iVYeW5u.jpg" style="visibility: hidden;">
												</a>
											</li>
											<div class="cycle-carousel-wrap" style="margin: 0px; padding: 0px; top: 0px; left: 0px;right: 0; position: absolute; white-space: nowrap;">
												<li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
													<a href="https://www.CGGV.vn/default/newsoffer/CGGV-momo-promo-t10/">
														<img src="https://i.imgur.com/iVYeW5u.jpg">
													</a>
												</li>
												<li class="cycle-slide active" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: inline-block; visibility: visible;">
													<a href="https://www.CGGV.vn/default/newsoffer/CGGV-shopeepay-promo-t9/">
														<img src="https://i.imgur.com/YDUCMWx.jpg">
													</a>
												</li>
												<li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
													<a href="https://www.CGGV.vn/default/newsoffer/CGGV-momo-promo-t10/">
														<img src="https://i.imgur.com/wYYeC6j.png">
													</a>
												</li>
										</div>					
									</ul>
								</div>
							</div>
						</dd>			
							
					
					<script type="text/javascript">
						$j(window).bind("load", function() {
							var width = $j(window).width();
							if(width >= 979){
								reinitCycle2(4);
							}
							else if(width >= 770) {
								reinitCycle2(3);
							}
							else if(width >= 479) {
								reinitCycle2(2);
							}
							else {
								reinitCycle2(1);
							}
						});
						
						$j(window).on('resize',function () {
							var width = $j(window).width();
							if(width >= 979){						
								reinitCycle2(4);
							}
							else if(width >= 770) {
								reinitCycle2(3);
							}
							else if(width >= 479) {
								reinitCycle2(2);
							}
							else {
								reinitCycle2(1);
							}
						});
						
						function reinitCycle2(visibleSlides) {
							try {
													$j('.thnhvinCGGV').cycle('destroy');
								$j('.thnhvinCGGV').cycle({
									"carouselSlideDimension" : "240px",
									"carouselVisible" : visibleSlides,
									"fx" : "carousel",
									"timeout" : 0,
									"next" : ".thnhvinCGGV_next",
									"prev" : ".thnhvinCGGV_prev",
									"slideActiveClass" : "active",
									"slides" : "li",
									"allowWrap" : false,
								});
													$j('.tinmiui').cycle('destroy');
								$j('.tinmiui').cycle({
									"carouselSlideDimension" : "240px",
									"carouselVisible" : visibleSlides,
									"fx" : "carousel",
									"timeout" : 0,
									"next" : ".tinmiui_next",
									"prev" : ".tinmiui_prev",
									"slideActiveClass" : "active",
									"slides" : "li",
									"allowWrap" : false,
								});
												}
							catch(err) {
								console.log(err.message);
							}	
						}
					</script>
				</dl>
			</div>
		</div>
		<!-- Phần footer -->
		<footer id="dk-footer" class="dk-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-4">
						<div class="dk-footer-box-info">
							<a href="index.html" class="footer-logo">
								<img src="https://i.imgur.com/0B9AHrg.png" alt="footer_logo" class="img-fluid">
							</a>
							<p class="footer-info-text">

							</p>
							<div class="footer-social-link">
								<h3>Theo dõi CGGV</h3>
								<ul>
									<li>
										<a href="#">
											<i class="fab fa-facebook"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fab fa-twitter"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fab fa-google-plus"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fab fa-linkedin"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fab fa-instagram"></i>
										</a>
									</li>
								</ul>
							</div>
							<!-- End Social link -->
						</div>
						<!-- End Footer info -->
						<div class="footer-awarad">
							<img src="images/icon/best.png" alt="">
							<p>Rạp chiếu phim hàng đầu VN</p>
						</div>
					</div>
					<!-- End Col -->
					<div class="col-md-12 col-lg-8">
						<div class="row">
							<div class="col-md-6">
								<div class="contact-us">
									<div class="contact-icon">
										<i class="fa fa-map-o" aria-hidden="true"></i>
									</div>
									<!-- End contact Icon -->
									<div class="contact-info">
										<h3>Địa chỉ</h3>
										<p>Hapulico 85 Vũ Trọng Phụng, Thanh Xuân, Hà Nội</p>
									</div>
									<!-- End Contact Info -->
								</div>
								<!-- End Contact Us -->
							</div>
							<!-- End Col -->
							<div class="col-md-6">
								<div class="contact-us contact-us-last">
									<div class="contact-icon">
										<i class="fa fa-volume-control-phone" aria-hidden="true"></i>
									</div>
									<!-- End contact Icon -->
									<div class="contact-info">
										<h3>Liên hệ</h3>
										<p>0877.169.594</p>
									</div>
									<!-- End Contact Info -->
								</div>
								<!-- End Contact Us -->
							</div>
							<!-- End Col -->
						</div>
						<!-- End Contact Row -->
						<div class="row">
							<div class="col-md-12 col-lg-12">
								<div class="footer-widget footer-left-widget">
									<div class="section-heading">
										<h3>Useful Links</h3>
										<span class="animate-border border-black"></span>
									</div>
									<ul>
										<li>
											<a href="https://www.cgv.vn/default/about-cgv/">Về CGGV</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/cinemas/sale">Dịch vụ</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/online-store/movie-voucher.html">Tiện ích online</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/careers/">Tuyển dụng</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="https://www.cgv.vn/default/terms-conditions/">Điều khoản sử dụng</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/payment-policy/">Chính sách thanh toán</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/privacy-policy/">Chính sách sử dụng</a>
										</li>
										<li>
											<a href="https://www.cgv.vn/default/faq/">Câu hỏi</a>
										</li>
									</ul>
								</div>
								<!-- End Footer Widget -->
							</div>
							<!-- End col -->
						</div>
						<!-- End Row -->
					</div>
					<!-- End Col -->
				</div>
				<!-- End Widget Row -->
			</div>
			<!-- End Contact Container -->

			<!-- Back to top -->
			<div id="back-to-top" class="back-to-top">
				<button class="btn btn-dark" title="Back to Top" style="display: block;">
					<i class="fa fa-angle-up"></i>
				</button>
			</div>
			<!-- End Back to top -->
		</footer>

	</div>
       
    </body>
</html>
