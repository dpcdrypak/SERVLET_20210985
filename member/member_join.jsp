<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>   
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
</head>

<body>
    <jsp:include page="../top_menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">회원 가입</h1>
        </div>
    </div>
    <div class="container mt-5">
        
        <form action="../login/login_user.jsp" method="post">
            <div class="form-group">
                <label for="userId">아이디:</label>
                <div class="col-sm-3">
                <input type="text" class="form-control" id="userId" name="userId" required>
            </div>
                </div>
            
            <div class="form-group">
                <label for="password">패스워드:</label>
                <div class="col-sm-3">
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
                </div>
            
            <div class="form-group">
                <label for="confirmPassword">패스워드 재입력:</label>
                <div class="col-sm-3">
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
            </div>
                </div>
            
            <div class="form-group">
                <label for="userName">이름:</label>
                <div class="col-sm-3">
                <input type="text" class="form-control" id="userName" name="userName" required>
            </div>
            </div>
            
            <div class="form-group">
                <label for="usergender">성별:</label>
                <div class="col-sm-1">
                    <select name="country" class="form-control">
                        <option value="Korea">남자</option>
                        <option value="China">여자</option>
                        
                    </select>
                </div>
            </div>
            
            
            <div class="form-group">
                <label for="email">이메일 주소:</label>
                <div class="col-sm-3">
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
                </div>
            
            <div class="form-group">
                <label for="phone">폰 번호:</label>
                <div class="col-sm-3">
                <input type="tel" class="form-control" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>
                <small class="form-text text-muted">폰 번호는 000-0000-0000 형식으로 입력하세요.</small>
            </div>
                </div>
            
            <div class="form-group">
                <label for="address">주소:</label>
                <div class="col-sm-3">
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
                </div>
            <br>
            <button type="submit" class="btn btn-primary">가입</button>
            <br>
            <br><br>
        </form>
    </div>

    <!-- 부트스트랩 및 jQuery, Popper.js CDN을 사용 -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <hr>
    
<jsp:include page="../footer.jsp"/>
    <br>
   
    </body>
</html>
