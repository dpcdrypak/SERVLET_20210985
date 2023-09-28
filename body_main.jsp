<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 상품 목록입니다.";
        String tagline = "하단 페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
        </h3>
    </div>
</div>
    <%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>
    <div class="container">
        <div class="row" align="center">
            <%
            for (int i = 0; i < listOfProducts.size(); i++) {
                Product product = listOfProducts.get(i);
                %>
            <div class = "col-md-4">
                <div class = "card bg-dark text-white">
                    <img src = "image/product/<%=product.getProductId()%>.png" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">상품 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
            </div>
            <%
            }
            %>
        </div>
        <hr>
    </div>
<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>

<div class="card bg-dark text-black">
    <img src="image/olivepage.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">올리브연 가을 이벤트</h5>
    <p class="card-text">기간 : 소진시까지</p>
    </div>
</div>

<div class="list-group">
    <a herf="#" class="list-group-item list-group-item-action active" aria-current="true">추석 세일 메이크업</a>
    <a herf="#" class="list-group-item list-group-item-action">바닐라코 파우더</a>
    <a herf="#" class="list-group-item list-group-item-action">더샘 컨실러</a>
    <a herf="#" class="list-group-item list-group-item-action">롬앤 물광틴트</a>


</div>