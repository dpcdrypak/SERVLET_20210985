<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="javax.servlet.http.Cookie"%>

<%
   request.setCharacterEncoding("UTF-8");

   String zipCodeParam = request.getParameter("sample6_postcode");
   String addressNameParam = request.getParameter("sample6_address");
   String detailAddressParam = request.getParameter("sample6_detailAddress");
   String extraAddressParam = request.getParameter("sample6_extraAddress");

   String zipCodeValue = (zipCodeParam != null) ? URLEncoder.encode(zipCodeParam, "utf-8") : "";
   String addressNameValue = (addressNameParam != null) ? URLEncoder.encode(addressNameParam, "utf-8") : "";
   String detailAddressValue = (detailAddressParam != null) ? URLEncoder.encode(detailAddressParam, "utf-8") : "";
   String extraAddressValue = (extraAddressParam != null) ? URLEncoder.encode(extraAddressParam, "utf-8") : "";

   Cookie zipCode = new Cookie("Shipping_zipCode", zipCodeValue);
   Cookie addressName = new Cookie("Shipping_addressName", addressNameValue);
   Cookie detailAddress = new Cookie("Shipping_detailAddress", detailAddressValue);
   Cookie extraAddress = new Cookie("Shipping_extraAddress", extraAddressValue);

   zipCode.setMaxAge(24 * 60 * 60);
   addressName.setMaxAge(24 * 60 * 60);
   detailAddress.setMaxAge(24 * 60 * 60);
   extraAddress.setMaxAge(24 * 60 * 60);

   response.addCookie(zipCode);
   response.addCookie(addressName);
   response.addCookie(detailAddress);
   response.addCookie(extraAddress);

   response.sendRedirect("order_confirm.jsp?addressName=" + addressNameValue +
                          "&detailAddress=" + detailAddressValue +
                          "&extraAddress=" + extraAddressValue);
%>
