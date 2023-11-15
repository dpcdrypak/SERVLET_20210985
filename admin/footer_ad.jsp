<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "example.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Date" %>
<footer class="container">
    <p>&copy;쇼핑몰 대표 : 박연우, 고유번호 : 20210985, 연락처 : dpcdrypak@naver.com <br>
        <%
            ShopTime time = new ShopTime();
            Date now = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
            String koreanTime = dateFormat.format(now);
        %>
        오늘 한국 시간: <%= koreanTime %>
    </p>
</footer>