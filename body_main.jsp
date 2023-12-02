<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>

<%@ include file="db/db_conn.jsp" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "안녕하세요^^ 올리브연입니다.";
    String tagline = "올리브연 이벤트"; %>
<!DOCTYPE html>
<html>

<head>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <style>
        /* 추가적인 스타일링은 여기에 추가하세요. */
        #fixedTimer {
            position: fixed;
            bottom: 10px;
            right: 10px;
            background-color: #000;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>

<body>

    <%-- 페이지 내용은 여기에 추가하세요. --%>

    <div class="container">
        <div class="jumbotron">
            <div class="container">
                <h3 class="display-4">
                    <%= greeting %>
                </h3>
            </div>
        </div>
        <%
        ArrayList<Product> listOfProducts = productDAO.getAllProducts();
        %>
        <div class="container">
            <div class="row" align="center">
                <%
                String sql = "select * from product"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
            %>

                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <img src="image/product/<%= rs.getString("p_fileName") %>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">상품 이미지 샘플</h5>
                            <p class="card-text">출처 : 구글 검색</p>
                        </div>
                    </div>
                    <h3><%= rs.getString("p_name") %></h3>
                    <p><%= rs.getString("p_description") %>
                        <p><%= rs.getString("p_UnitPrice") %>원
                            <p><a href="product_detail.jsp?id=<%= rs.getString("p_id") %>"
                                    class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>

                </div>
                <%
                    } // 반복문 끝난 이후 db 연결 종료
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            %>

            </div>
            <hr>
        </div>
        <div class="container">
            <div class="text-center">
                <h3>
                    <%= tagline %>
                </h3>
            </div>
            <hr>
        </div>

        <div class="card bg-dark text-black">
            <img src="../image/olivepage.png" class="card-img" alt="...">
            <div class="card-img-overlay">
                <h5 class="card-title">올리브연 가을 이벤트</h5>
                <p class="card-text">기간 : 소진시까지</p>
            </div>
        </div>

        <div class="list-group">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000180235&dispCatNo=90000010002&trackingCd=Today&t_page=%EC%98%A4%ED%8A%B9&t_click=%EC%98%A4%EB%8A%98%EC%9D%98%ED%8A%B9%EA%B0%80_%EC%9D%B8%EA%B8%B0%EC%88%9C_%EC%83%81%ED%92%88%EC%83%81%EC%84%B8&t_number=3"
                class="list-group-item list-group-item-action active" aria-current="true">[특가] 달바 선크림</a>

            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191822&dispCatNo=90000010009&trackingCd=Best_Sellingbest&t_page=%EB%9E%AD%ED%82%B9&t_click=%ED%8C%90%EB%A7%A4%EB%9E%AD%ED%82%B9_%EC%A0%84%EC%B2%B4_%EC%83%81%ED%92%88%EC%83%81%EC%84%B8&t_number=8"
                class="list-group-item list-group-item-action">마녀공장 클렌징 오일</a>
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000177593&t_page=%ED%86%B5%ED%95%A9%EA%B2%80%EC%83%89%EA%B2%B0%EA%B3%BC%ED%8E%98%EC%9D%B4%EC%A7%80&t_click=%EA%B2%80%EC%83%89%EC%83%81%ED%92%88%EC%83%81%EC%84%B8&t_search_name=%EB%8D%94%EC%83%98%20%EC%BB%A8%EC%8B%A4%EB%9F%AC&t_number=1&dispCatNo=1000001000200010005&trackingCd=Result_1"
                class="list-group-item list-group-item-action">더샘 컨실러</a>
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000179969&t_page=%ED%86%B5%ED%95%A9%EA%B2%80%EC%83%89%EA%B2%B0%EA%B3%BC%ED%8E%98%EC%9D%B4%EC%A7%80&t_click=%EA%B2%80%EC%83%89%EC%83%81%ED%92%88%EC%83%81%EC%84%B8&t_search_name=%ED%8E%98%EB%A6%AC%ED%8E%98%EB%9D%BC%20%ED%8B%B4%ED%8A%B8&t_number=2&dispCatNo=1000001000200060003&trackingCd=Result_2"
                class="list-group-item list-group-item-action">페리파레 워터베어 틴트</a>
        </div>

        <!-- 고정 타이머 영역 -->
        <div id="fixedTimer"></div>

        <!-- Bootstrap JS and Popper.js CDN -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
        <script>
            // 타이머 함수
            function updateTimer() {
                var currentDate = new Date();
                var endDate = new Date("December 25, 2023 23:59:59");
                var timeRemaining = endDate - currentDate;

                if (timeRemaining <= 0) {
                    document.getElementById("fixedTimer").innerHTML = "블랙 프라이데이 세일 마감";
                } else {
                    var days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
                    var hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                    var minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
                    var seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000);

                    document.getElementById("fixedTimer").innerHTML = "블랙 프라이데이 세일 마감까지: " + days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초";
                }
            }

            // 타이머 초기화
            updateTimer();
            setInterval(updateTimer, 1000); // 1초마다 업데이트
        </script>
    </body>
</html>