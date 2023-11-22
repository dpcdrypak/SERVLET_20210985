<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "안녕하세요^^ 올리브연입니다.";
        String tagline = "올리브연 이벤트";%>
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
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>

            <div class = "col-md-4">
                <div class = "card bg-dark text-white">
                    <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">상품 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>

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
            <%=tagline%>
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
    <a herf="#" class="list-group-item list-group-item-action active" aria-current="true">추석 세일 메이크업</a>
    <a herf="#" class="list-group-item list-group-item-action">바닐라코 파우더</a>
    <a herf="#" class="list-group-item list-group-item-action">더샘 컨실러</a>
    <a herf="#" class="list-group-item list-group-item-action">롬앤 물광틴트</a>


</div>