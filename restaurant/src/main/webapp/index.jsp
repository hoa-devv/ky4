<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    int i = (int) request.getAttribute("action");
    if(i == 2){
        string action2 = active;
    } else if (i == 3){
        string action3 = active;
    } else if (i == 4){
        string action4 = active;
    } else if (i == 5){
        string action5 = active;
    } else if (i == 6){
        string action6 = active;
    } else if (i == 7){
        string action7 = active;
    }
%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="template/includes/head.jsp"></jsp:include>

<body id="page-top" class="politics_version">

<!-- LOADER -->
<div id="preloader">
    <div id="main-ld">
        <div id="loader"></div>
    </div>
</div><!-- end loader -->
<!-- END LOADER -->

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container-fluid">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <img class="img-fluid" src="images/logo.png" alt="" />
        </a>
    </div>
</nav>


<div id="menu" class="section lb">
    <div class="container-fluid">
        <div class="section-title text-center">
            <h3>Menu</h3>
            <p>"Đói thì phải ăn, khát thì phải uống, các nhà khoa học gọi đó là định luật bảo toàn tính mạng."</p>
        </div><!-- end title -->
        <div class="gallery-menu text-center row">
            <div class="col-md-12">
                <div class="button-group filter-button-group">
                    <button class="hvr-radial-in <%=action1%>" >Tất cả</button>
                    <button class="hvr-radial-in <%=action2%>" >Khai vị</button>
                    <button class="hvr-radial-in <%=action3%>" >Món Xào</button>
                    <button class="hvr-radial-in <%=action4%>" >Món Nướng</button>
                    <button class="hvr-radial-in <%=action5%>" >Món Hấp</button>
                    <button class="hvr-radial-in <%=action6%>" >Món Chay</button>
                    <button class="hvr-radial-in <%=action7%>" >Tráng Miệng</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="services-inner-box">
                <div class="ser-icon">
                    <img src="uploads/menu-img-01.jpg" class="img-fluid" alt="" />
                </div>
                <h2>Vegetable Name..</h2>
                <a class="hvr-radial-in" href="#">$ 18.00</a>
            </div>
        </div><!-- end col -->
        <div class="col-md-3">
            <div class="services-inner-box">
                <div class="ser-icon">
                    <img src="uploads/menu-img-02.jpg" class="img-fluid" alt="" />
                </div>
                <h2>Vegetable Name..</h2>
                <a class="hvr-radial-in" href="#">$ 20.00</a>
            </div>
        </div><!-- end col -->
    </div><!-- end row -->
</div><!-- end section -->

<div id="blog" class="section wb">
    <div class="container-fluid">
        <div class="section-title text-center">
            <h3>Blog</h3>
            <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus.</p>
        </div><!-- end title -->

        <div class="row">
            <div class="col-md-4 col-sm-6 col-lg-4">
                <div class="post-box">
                    <div class="post-thumb">
                        <img src="uploads/blog-01.jpg" class="img-fluid" alt="post-img" />
                        <div class="date">
                            <span>06</span>
                            <span>Aug</span>
                        </div>
                    </div>
                    <div class="post-info">
                        <h4>Quisque auctor lectus interdum nisl accumsan venenatis.</h4>
                        <p>Etiam materials ut mollis tellus, vel posuere nulla. Etiam sit amet massa sodales aliquam at eget quam. Integer ultricies et magna quis.</p>
                        <ul>
                            <li>by admin</li>
                            <li>Apr 21, 2018</li>
                            <li><a href="#"><b> Comments</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-lg-4">
                <div class="post-box">
                    <div class="post-thumb">
                        <img src="uploads/blog-02.jpg" class="img-fluid" alt="post-img" />
                        <div class="date">
                            <span>06</span>
                            <span>Aug</span>
                        </div>
                    </div>
                    <div class="post-info">
                        <h4>Quisque auctor lectus interdum nisl accumsan venenatis.</h4>
                        <p>Etiam materials ut mollis tellus, vel posuere nulla. Etiam sit amet massa sodales aliquam at eget quam. Integer ultricies et magna quis.</p>
                        <ul>
                            <li>by admin</li>
                            <li>Apr 21, 2018</li>
                            <li><a href="#"><b> Comments</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-lg-4">
                <div class="post-box">
                    <div class="post-thumb">
                        <img src="uploads/blog-03.jpg" class="img-fluid" alt="post-img" />
                        <div class="date">
                            <span>06</span>
                            <span>Aug</span>
                        </div>
                    </div>
                    <div class="post-info">
                        <h4>Quisque auctor lectus interdum nisl accumsan venenatis.</h4>
                        <p>Etiam materials ut mollis tellus, vel posuere nulla. Etiam sit amet massa sodales aliquam at eget quam. Integer ultricies et magna quis.</p>
                        <ul>
                            <li>by admin</li>
                            <li>Apr 21, 2018</li>
                            <li><a href="#"><b> Comments</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

<jsp:include page="template/includes/script.jsp"></jsp:include>

</body>
</html>