<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<body>
<section class="hero-wrap hero-wrap-2" style="background-image: url('/traders/images/bg_wave.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="mb-2 bread" style="font-size:45px;">My Account</p>
                <p class="breadcrumbs"><span class="mr-2"><a href="/main">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>My account <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
    </div>
    </div>


    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


    <script src="/traders/js/jquery.min.js"></script>
    <script src="/traders/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="/traders/js/popper.min.js"></script>
    <script src="/traders/js/bootstrap.	min.js"></script>
    <script src="/traders/js/jquery.easing.1.3.js"></script>
    <script src="/traders/js/jquery.waypoints.min.js"></script>
    <script src="/traders/js/jquery.stellar.min.js"></script>
    <script src="/traders/js/owl.carousel.min.js"></script>
    <script src="/traders/js/jquery.magnific-popup.min.js"></script>
    <script src="/traders/js/aos.js"></script>
    <script src="/traders/js/jquery.animateNumber.min.js"></script>
    <script src="/traders/js/bootstrap-datepicker.js"></script>
    <script src="/traders/js/scrollax.min.js"></script>
    <script src="/traders/js/main.js"></script>

</section>

<form action="/account/deposit" method="post" id="form">

<label>?????? ?????? ??????</label><input type="text" id="balance" name="balance" value='<c:out value="${account.balance}"/>' readonly>
<br>
<label>????????? ????????? ????????? ???????????????</label><input type="text" name="money" id="money">
<br>
<input type="hidden" name="member_id" value="${member.id}">
<br>

<button type="submit">?????? ??????</button><br>
<a href="/account/get">????????????</a>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$("#form").submit(function(e){
    e.preventDefault();

    var form = document.getElementById("form");

    var moneyChk = /^[0-9]/g;

    var money =  $('input[name="money"]').val();
    console.log(money);

    var result = money.replace(moneyChk, "");

    if(!moneyChk.test(money)){
        alert("????????? ????????? ????????? ?????????.");
        return false;
    }
   form.submit(); //??????
   alert("?????? ?????????????????????.");

   });
</script>