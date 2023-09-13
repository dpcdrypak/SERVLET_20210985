<%@ page contentType = "text/html; charset=utf-8" %>

<%-- CLASS는 스타일 적용시에 사용되는 이름, 중첩 가능 --%>
<%! String greeting = "올리브영에 오신것을 환영합니다.";
        String tagline = "올영세일 끝남!";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            <%=greeting%>
        </h1>
    </div>
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
    <img src="image/olivefirst.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">올리브영 가을 이벤트</h5>
    <p class="card-text">기간 : 소진시까지</p>
    </div>
</div>

<div class="list-group">
    <a herf="#" class="list-group-item list-group-item-action active" aria-current="true">추석 세일 메이크업</a>
    <a herf="#" class="list-group-item list-group-item-action">바닐라코 파우더</a>
    <a herf="#" class="list-group-item list-group-item-action">더샘 컨실러</a>
    <a herf="#" class="list-group-item list-group-item-action">롬앤 물광틴트</a>


</div>