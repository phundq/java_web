<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Minh Long Book</title>
    <link rel="stylesheet" href="include/css/mdb.min.css">
    <link rel="stylesheet" href="include/owl-carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="include/css/style.css">
    <link rel="stylesheet" href="include/css/responsive.css">
    <link rel="stylesheet" href="include/Font Awesome v5.9.0 Pro - Web/css/fontawesome.css">
    <link rel="stylesheet" href="include/Font Awesome v5.9.0 Pro - Web/css/brands.css">
    <link rel="stylesheet" href="include/Font Awesome v5.9.0 Pro - Web/css/solid.css">
</head>
<style>
    * {
        padding: 0;
        margin: 0;
    }
    body{
        background: #f4f4f4;
    }
    a.head-content-item {
        color: black;
        text-decoration: none !important;
        font-size: 13px;
    }
    .owl-carousel  .card-title{
        font-size: 14px!important;
        height: 25px;
        overflow: hidden;
    }
    .owl-carousel  .card-price{
        font-size: 14px!important;
    }
    .owl-carousel  .btn{
        font-size: 10px!important;
        margin: 2px;
        padding:2px  10px ;
        text-transform: none!important;
        border-radius: 12px!important;
    }
    .card{
        border: none!important;
        border-radius: 0px!important;
        box-shadow: none!important;
    }

</style>

<body>
    <!-- header -->
    <!-- head -->
    <div class="container-fluid py-3 bg-white" style="padding-left: 104.5px!important;padding-right: 104.5px!important;">
        <div class="row align-items-center ">
            <div class="col-3 pr-4">
                <img src="imgs/logo.png" class="w-100" alt="MINHLONG">
            </div>
            <div class="col-6  align-items-center" style="height: 35px;">
                <form action="" class="form-group my-auto h-100">
                    <div class="input-group w-100 h-100">
                        <input type="text" class=" pl-5 pb-1 w-75 h-100 rounded-left border border-light-blue-dark-3"
                            placeholder="Tìm kiếm...">
                        <input type="submit"
                            class="w-25 h-100 light-blue darken-3  text-white  rounded-right border border-light-blue-dark-3"
                            value="Tìm kiếm">
                    </div>

                </form>
            </div>
            <div class="col-3">
                <div class="row ml-4">
                    <div class="col-5 text-center px-2"><img style="width: 30px; height: 30px;" src="imgs/telephone-receiver-with-circular-arrows.png"
                            alt=""><span style="font-size: 11px;" class="d-block pt-1">Tra cứu đơn hàng</span></div>
                    <div class="col text-center px-2"><img style="width: 30px; height: 30px;"
                            src="imgs/shopping-cart.png" alt=""><span style="font-size: 11px;" class="d-block pt-1">Giỏ
                            hàng</span></div>
                    <div class="col text-center px-2"><img style="width: 30px; height: 30px;" src="imgs/user.png"
                            alt=""><span style="font-size: 11px;" class="d-block pt-1">Tài khoản</span></div>
                </div>
            </div>
        </div>
    </div>
    <!-- menu -->
    <nav class=" blue-gradient " style="height: 40px;">
        <div class="container-fluid h-100 " style="padding-left: 104.5px!important;padding-right: 104.5px!important;">
            <div class="row  h-100">
                <div class="col  h-100">
                    <div class="dropdown  h-100">
                        <span class=" dropdown-toggle font-weight-bold h-100 d-inline-block pt-2" aria-haspopup="true"
                            aria-expanded="false"> <i class="fa fa-bars"></i> DANH MỤC SÁCH </span>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">TRANG CHỦ</a>
                            <!-- sub-menu -->
                            <div class="dropright w-100 dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <!-- sub-menu -->
                            <div class="dropright dropdown-item">
                                <a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown "
                                    aria-haspopup="true" aria-expanded="false"> SÁCH MẦM NON </a>
                                <div class="dropdown-menu sub-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">SÁCH 1</a>
                                    <a class="dropdown-item" href="#">SÁCH 2</a>
                                    <a class="dropdown-item" href="#">SÁCH 3</a>
                                </div>
                            </div>
                            <a class="dropdown-item" href="#">TOP BEST SELLER</a>
                            <a class="dropdown-item" href="#">Tin tức/Blog</a>
                        </div>
                    </div>
                </div>
                <div class="col my-auto"><span class="ml-3" style="font-size: 13px;">Sản phẩm đã xem</span></div>
                <div class="col-3 my-auto"><img class="mr-2" style="width: 30px;height: 30px;"
                        src="imgs/item_image_chinhsach_1.png" alt=""><span style="font-size: 13px;">Ship CODE trên toàn
                        quốc</span></div>
                <div class="col-3 my-auto"><img class="mr-2" style="width: 30px;height: 30px;"
                        src="imgs/item_image_chinhsach_2.png" alt=""><span style="font-size: 13px;">Free ship đơn hàng
                        trên 300,000đ</span></div>
                <div class="col my-auto"><img class="mr-2" style="width: 30px;height: 30px;"
                        src="imgs/item_image_chinhsach_3.png" alt=""><span style="font-size: 13px;">Hotline: 0000 000
                        000</span></div>
            </div>

        </div>
    </nav>
    <!-- carousel -->
    <div class="container-fluid">
        <div class="row">
            <div id="carouselExampleControls" class="carousel slide w-100" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="imgs/slider_item_1_image.jpg" alt="1 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_2_image.jpg" alt="2 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_3_image.jpg" alt="3 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_4_image.jpg" alt="4 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_5_image.jpg" alt="5 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_6_image.jpg" alt="6 slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imgs/slider_item_7_image.jpg" alt="7 slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


        </div>
    </div>
    <!-- content -->
    <div class="container" id="content">
        <div class="row">
            <div class="col mr-3 my-4 bg-white">
                <div class="row heading cyan py-1">
                        <span class="ml-4 font-weight-bold">...HEADING</span>
                </div>
                <div class="row p-3">
                        <h3>content</h3>
                </div>
            </div>
            <div class="col-9 ml-2 my-4 bg-white" >
                <!-- head-content -->
                <div class="row head-content d-flex justify-content-between align-items-center py-1  cyan">
                    <span class="ml-4 font-weight-bold">SÁCH MẦM NON</span>
                    <ul class="d-flex justify-content-between list-unstyled my-auto">
                        <li class="mx-3"><a class="head-content-item" href="">Mới/Nổi bật</a></li>
                        <li class="mx-3"><a class="head-content-item" href="">Bán chạy nhất</a></li>
                        <li class="mx-3"><a class="head-content-item" href="">Giảm giá nhiều</a></li>
                        <li class="mx-3"><a class="head-content-item" href="">Sắp phát hành</a></li>
                    </ul>
                </div>
                <!-- body-content -->
                <!-- owl-carousel -->
                <div class="owl-carousel owl-theme">
                    <!-- item-owl-carousel -->
                    <div class="item my-auto"> 
                        <!-- Card -->
                        <div class="card mt-2 pt-2" style="width: 200px; height: 330px;">
                            <!-- Card image -->
                            <img class="card-img-top w-100 " style="height: 200px!important;" src="imgs/bia_3258f7c8045349db82164f42faf77dcf_large.jpg"
                                alt="Card image cap">
                            <!-- Card content -->
                            <div class="card-body px-2 pb-0 text-center">
                                <!-- Title -->
                                <div class="card-title w-100">Sách: Bé tô màu công chúa</div>
                                <!-- Text -->
                                <div class="card-price w-100">15000 đ</div>
                                <!-- Button -->
                                <div class="butt w-100 mt-2">
                                        <a href="#" class=" mr-1 btn btn-outline-default btn-rounded waves-effect">Xem chi tiết</a>
                                        <a href="#" class="btn ml-1 btn-outline-default btn-rounded waves-effect">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- item-owl-carousel -->
                    <div class="item"> 
                            <!-- Card -->
                            <div class="card mt-2 pt-2" style="width: 200px; height: 330px;">
                                <!-- Card image -->
                                <img class="card-img-top w-100 " style="height: 200px!important;" src="imgs/hoa_si_ti_hon_tui_6_cuon_84724e8c6dc44dff9bdb90296196aeb0_large.jpg"
                                    alt="Card image cap">
                                <!-- Card content -->
                                <div class="card-body px-2 pb-0 text-center">
                                    <!-- Title -->
                                    <div class="card-title w-100">Sách: Bé tô màu công chúa</div>
                                    <!-- Text -->
                                    <div class="card-price w-100">15000 đ</div>
                                    <!-- Button -->
                                    <div class="butt w-100 mt-2">
                                            <a href="#" class=" mr-1 btn btn-outline-default btn-rounded waves-effect">Xem chi tiết</a>
                                            <a href="#" class="btn ml-1 btn-outline-default btn-rounded waves-effect">Thêm vào giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <!-- item-owl-carousel -->
                     <div class="item"> 
                            <!-- Card -->
                            <div class="card mt-2 pt-2" style="width: 200px; height: 330px;">
                                <!-- Card image -->
                                <img class="card-img-top w-100 " style="height: 200px!important;" src="imgs/b_a_8358ca93198d411e90d335b0f1e30aec_large.jpg"
                                    alt="Card image cap">
                                <!-- Card content -->
                                <div class="card-body px-2 pb-0 text-center">
                                    <!-- Title -->
                                    <div class="card-title w-100">Sách: Bé tô màu công chúa</div>
                                    <!-- Text -->
                                    <div class="card-price w-100">15000 đ</div>
                                    <!-- Button -->
                                    <div class="butt w-100 mt-2">
                                            <a href="#" class=" mr-1 btn btn-outline-default btn-rounded waves-effect">Xem chi tiết</a>
                                            <a href="#" class="btn ml-1 btn-outline-default btn-rounded waves-effect">Thêm vào giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <!-- item-owl-carousel -->
                     <div class="item"> 
                            <!-- Card -->
                            <div class="card mt-2 pt-2" style="width: 200px; height: 330px;">
                                <!-- Card image -->
                                <img class="card-img-top w-100 " style="height: 200px!important;" src="imgs/tui_chuan_bi_tui_5_cuon_master_47f40fbb5a2c4615a31cbee74aee2c91_large.jpg"
                                    alt="Card image cap">
                                <!-- Card content -->
                                <div class="card-body px-2 pb-0 text-center">
                                    <!-- Title -->
                                    <div class="card-title w-100">Sách: Bé tô màu công chúa</div>
                                    <!-- Text -->
                                    <div class="card-price w-100">15000 đ</div>
                                    <!-- Button -->
                                    <div class="butt w-100 mt-2">
                                            <a href="#" class=" mr-1 btn btn-outline-default btn-rounded waves-effect">Xem chi tiết</a>
                                            <a href="#" class="btn ml-1 btn-outline-default btn-rounded waves-effect">Thêm vào giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>

        </div>
    </div>
    <!-- left-block -->
    <!-- right-block -->








    <!-- include js library -->
    <script src="include/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="include/js/mdb.min.js"></script>
    <script src="include/Font Awesome v5.9.0 Pro - Web/js/all.js"></script>
    <script src="include/owl-carousel/owl.carousel.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="include/js/main.js"></script>
</body>

</html>