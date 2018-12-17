<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%
 session.removeAttribute("admin");
 response.sendRedirect("login.jsp");
 %>
