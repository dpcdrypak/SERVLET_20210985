# 메인 페이지
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/4a323e50-de10-4b0a-8d1d-a8b99d864c1f)
[추가구현] 1. 오른쪽 밑에 블랙 프라이데이 세일 타이머 창이 스크롤을 내려도 고정적으로 뜬다 (기한:2023-12-25까지)<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/a0906b4e-ef04-4a46-ab29-d59ba999736b)
[추가구현] 2. 배너 광고 이미지(네오 쿠션&파데~~~..)를 클릭하면 실제 올리브영 페이지에 접속된다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/198278c5-06a1-4e97-8d4e-07cbfc6e7ff8)
[추가구현] 3. 카테고리를 클릭하면 다음과 같은 보기가 뜨고 예를 들어 스킨케어를 누르면 그에 해당하는 제품의 상세 페이지로 연결된다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/b4eb5f49-68d3-443f-a763-cf2b56d01db6)
[추가구현] 4. "[특가] 달바 선크림" 을 클릭하면 실제 올리브영 상품 페이지로 연결된다. 아래 있는 마녀공장, 더샘, 페리파레도 마찬가지로 실제 올리브영 상품 페이지로 연결된다. 

[연습문제] 5. 페이지 하단에는 사이트 대표자 기본정보와, 현 날짜와 시간이 뜨고, 현제 페이지 버퍼 용량과 남은 페이지 버퍼 용량이 뜬다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/216db187-4875-4018-8c20-bea7c11513fb)
6. 메인 페이지에 접속하면 포워딩된 후 팝업 페이지가 뜬다.<br/><br/>

---

# 상품 상세 정보 페이지(product_detail.jsp)
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/c65b0f93-3398-46ef-b886-7e3a78484ae4)
7. 상품 밑 상세 정보를 누르면 상품 상세 정보 페이지로 이동한다. 상품 주문 버튼을 누르면 "상품을 장바구니에 추가하시겠습니까?" 라는 알림창이 뜬다. <br/><br/>

---

# 장바구니 페이지(product_cart.jsp)
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/e9014811-7c66-439f-9b81-07a7a5298047)
8. 확인을 누르면 장바구니창으로 이동한다. 비고 밑에 있는 삭제를 누르면 상품이 삭제된다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/5b81f7f6-6bc2-4a9c-9e8f-07595936273a)
9. 쇼핑 계속하기를 누르면 메인 페이지로 돌아간다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/28013ecd-d8c9-4f2e-ab6a-5b76e4355e0b)
10. 삭제하기 버튼을 누르면 상품이 전체 삭제된다.
    
(+ 뒤로가기 후 다시 페이지 앞으로 이동했을때 비고 밑 삭제 누르면 전체 삭제 됨 에러 안남 - [연습문제] 해결 이미지로 설명 불가능 하여 텍스트로 설명 대치.)<br/><br/>

---

# 배송정보 페이지(order_info.jsp)-[11주차 연습문제]
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/e063771f-ae52-440b-b5e3-6e65fc4845d8)
11. 주문하기 버튼을 누르면 배송정보 페이지로 이동된다.<br/><br/>
    
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/01c6d67c-e21c-478b-aadf-42f255c4591a)
12. 성명은 이름을 적는 텍스트 칸이고, 배송일은 달력아이콘을 누르면 달력이 뜬다.

13. 국가명은 한국, 중국,  일본, 미국 중 선택할 수 있는 보기가 뜬다.<br/><br/>

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/221c4853-ce4d-4245-85f2-1bb62a918130)
14. 주소에 있는 우편번호 찾기칸을 누르면 daum postcode service 창이 뜬다. 우편번호나 주소를 검색하여 클릭하면 다음과 같이 주소가 자동으로 입력된다.
    상세주소는 사용자가 직접 입력하는 칸이다.<br/><br/>
    
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/628e2e43-e1e3-4018-b089-b54995e97a03)
15. 배송일을 현재 날짜보다 전으로 입력하면 다음과 같은 현재 날짜 이후로 입력하라는 알림창이 뜬다.

16. 현재 날짜 이후로 재입력 후 등록을 누르면 주문정보(order_confrim.jsp)페이지로 이동한다.<br/><br/>

---

# 주문정보 페이지(order_confirm.jsp)

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/f99225ce-deb5-42c2-b728-c4dd93efbfc0)
17. 주문완료 버튼을 누르면 주문완료(order_end.jsp)페이지로 이동하고 주문이 완료된다.
 
18. 취소 버튼을 누르면 주문취소(order_cancelled.jsp)페이지로 이동하고 주문이 취소된다.<br/><br/>

---

# 관리자모드(로그인) 페이지(index_ad.jsp)-[9주차 연습문제]

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/d1f9526b-cc7e-4b85-91c1-a7f5d0a54b8c)
19. 탑 메뉴에 있는 관리자모드(로그인)을 클릭하면 관리자 모드에 접근하기 위한 로그인 창이 뜬다. 로그인을 하게되면 관리자 모드로 연결된다.
(ID:manage, PW:020912)

---

# 상품등록 페이지(product_add.jsp)
![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/3e98bcd9-7daf-4a74-ae4f-91f759210e1f)
20. 탑 메뉴에 있는 등록을 클릭하면 상품등록(product_add.jsp)페이지로 이동한다.
    
21. 상품 등록칸에 새로 등록할 상품의 정보와 사진을 입력하고 등록을 누르면

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/0008cf92-91e6-489a-af59-39134230cd17)
22. 상품이 등록된다.

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/1877b07d-1b58-49e2-af6e-d216b86173bd)
23. 상품명, 재고수, 상품코드, 가격 입력에 대한 제한을 둔다.

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/916e86b1-b0d3-432b-80c5-7d3ee7c36a5e)

24. 로그아웃 버튼을 누르면 로그아웃이 된다.

---

# 상품수정 페이지(product_update.jsp)

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/4a4e4b11-995f-4fa7-ad89-6b970006112e)

25. 탑 메뉴에 있는 수정을 클릭하면 상품을 수정할 수 있다. 수정>> 버튼을 누르면 상품수정(product_update.jsp)로 이동한다.
이 상품수정 페이지에서는 상품 수정을 할 수 있다.

---

# 상품편집/삭제 페이지(product_edit.jsp)-[13주차 연습문제]

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/d412e35e-467a-4a04-a6f3-eee5b093203d)

26. 탑 메뉴에 있는 삭제를 클릭하면 상품을 삭제할 수 있다. 삭제 >> 버튼을 누르면 상품삭제(product_edit.jsp)로 이동한다.
상품을 삭제하면 상품이 삭제된다.

---

# 게시판(고객센터) 페이지(BoardListAction.do)

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/0d555fbb-07c4-44bc-a67f-3f7ee7236975)

27. 다시 일반모드 페이지로 돌아와 탑 메뉴에 있는 게시판을 들어가면 게시판이 뜬다.
28. 글쓰기 버튼을 누르면 로그인을 해주세요 라는 멘트가 뜬다.
    
---

# 일반 사용자 모드 로그인 페이지(login_user.jsp)-[14주차 연습문제]

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/4ca9f199-5274-452c-a591-f2517ad69767)

29. 로그인창이 뜨고 로그인 창에서 회원가입을 할 수 있다.
    (탑 메뉴에 있는 회원가입 버튼을 눌러도 같은 페이지로 연결됨)

---

# 회원가입 페이지(member_join.jsp)-[14주차 연습문제]

![image](https://github.com/dpcdrypak/SERVLET_20210985/assets/112855199/ad528319-b317-4511-aeb9-3cfc525eba77)

30. 아이디, 비밀번호 등 빈칸으로 제출하게 되면 입력란을 작성하라는 제한문구가 뜬다.
31. 폰번호는 예시로 적혀있는 양식을 지키지 않으면 제한문구가 뜬다.
32. 이메일 주소 양식인 @를 포함하지 않으면 제한문구가 뜬다.
33. @ 뒷 부분을 입력하지 않으면 제한문구가 뜬다.
34. 회원가입을 마치고 가입을 누르면 일반 사용자 모드 로그인 페이지로 이동된다.

* 연습문제 대부분 해결, 데이터 입력이나 뒤에 수정되어 정확하게 명시하기 어려운 것들 때문에 모든 주차 연습문제 해결 되었다고 작성하기 어려움.
# 하지만 14주차 로그인구현을 제외한 모든 연습문제 해결완료한 상태













