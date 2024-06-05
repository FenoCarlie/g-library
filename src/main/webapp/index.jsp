<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Exemple de page JSP avec Tailwind CSS</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./styles/main.css" />
    <script src="./script/router.js"></script>
    <script src="./script/linkActif.js"></script>
  </head>
  <body class="w-full h-screen flex flex-col overflow-hidden">
    <jsp:include page="./components/header.jsp" />
    <div class="w-full h-full flex flex-row">
      <jsp:include page="./components/sideBar.jsp" />
      <div class="views-container bg-[#e0e0e067] w-full h-full">
        <jsp:include page="./views/dashBoard.jsp" />
        <jsp:include page="./views/book.jsp" />
        <jsp:include page="./views/member.jsp" />
        <jsp:include page="./views/lend.jsp" />
        <jsp:include page="./views/return.jsp" />
      </div>
    </div>
  </body>
</html>
