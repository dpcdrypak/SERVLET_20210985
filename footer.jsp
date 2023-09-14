<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "example.*" %>
<footer class="container">
    <p>&copy;쇼핑몰 대표 : 박연우, 고유번호 : 20210985, 연락처 : dpcdrypak@naver.com <br>
        <%
            ShopTime time = new ShopTime();
        %>
        오늘 날짜와 시간 : <%=time.timenow() %>
    </p>
</footer>