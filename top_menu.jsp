<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <!-- Bootstrap JS, Popper.js, and jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>

<body>

<nav class="navbar navbar-expand navbar-white bg-white">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1236">스킨케어</a>
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1238">클렌징</a>
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1237">스킨패드</a>
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1235">선케어</a>
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1239">메이크업</a>
            <a class="dropdown-item" href="https://jsp-main--bczfi.run.goorm.site/product_detail.jsp?id=C1234">파우더</a>
        </div>
    </div>

    <div>
        <img src="../image/olivelyeon.png" class="img-fluid" alt="main_image">
    </div>

    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="../member/member_join.jsp">회원가입</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드(로그인)</a>
        </div>
    </div>
</nav>

<!-- Bootstrap JS 초기화 -->
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>

</body>

</html>
