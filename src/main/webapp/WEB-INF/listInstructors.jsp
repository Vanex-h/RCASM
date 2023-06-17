<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" href="cssfile.css" type="text/css"/>
  <link rel="stylesheet" href="css/displaytag.css" type="text/css"/>
  <link rel="stylesheet" href="css/screen.css" type="text/css"/>
  <link rel="stylesheet" href="css/site.css" type="text/css"/>
  <title>Marks Registrations</title>
  <style>
    #layout {
      background: #374954;
      color: white;
      width: 100%;
    }

    #banner {
      display: flex;
      align-items: center;
      /*padding: 20px;*/
      width: 100%;
    }



    .container {
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .text_header {
      font-size: 24px;
      font-weight: bold;
      transform: translateX(-146px);
    }

    .right {
      border-width: 2px;
      background: #374954;
      color: #6c66e3;
      border-radius: 8px;
      border-color: #6c66e3;
      height: 3em;
      display: flex;
      align-items: center;
      width: 52em;
    }


    .menu {
      margin-left: 10px;
    }

    .menu a {
      text-decoration: none;
      color: white;
      margin: 0 5px;
    }

    .menu a:hover {
      color: #3E8760;
    }

    .button {
      display: flex;
      align-items: center;
      justify-content: center;
      background: none;
      border: none;
      color: white;
      cursor: pointer;
      margin: 0 5px;
    }

    .button img {
      margin-right: 5px;
    }
    #logg:hover{
      color: #fff;
      background: transparent;
      border: white solid 1px;
      border-radius: 12px;
      text-decoration: none;
      height: 32px;
      width: 10em;
      line-height: 32px;
    }


    .button:hover {
      color: white;
      background: transparent;
      border: white solid 1px;
      border-radius: 12px;
      height: 32px;
      width: 10em;
    }
    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }

    td, th {
      border: 1px solid #dddd;
      text-align: left;
      color: #374954;
      padding: 8px;
    }

    thead tr td{
      background-color: #374954;
      color: white;
      font-family: 'Quicksand', sans-serif;
      font-weight: bold;
    }
  </style>
</head>
<body>
<div id="layout">
  <div id="banner">
    <div class="bannerlogo"></div>
    <div class="container">
      <div class="text_header"> RCA Management Information System</div>
      <div class="right">
        <c:if test="${authenticatedUser !=null}">
          <button class="button" onclick="location.href='listuser.php?page=profile&&id=${authenticatedUser.id}'">
            <img src="icons/user.png" />
            Profile
          </button>
          <div>
              <%--                        <img src="icons/user.png" />--%>
            <font color="#ffffff">${authenticatedUser.fullName}</font>
          </div>
          <a href="login.php?" id="logg"><font color="#ffffff" >Logout</font></a>
        </c:if>
        <c:if test="${authenticatedUser ==null}">
          <div class="menu">
            <a href="login.php?"><font color="white">Login</font></a>
          </div>
        </c:if>
      </div>
    </div>
  </div>
  <div>
    <%@ include file="menu.jsp"%>
  </div>
  <div id="middle">
    <c:if test="${authenticatedUser !=null}">
      <div class="options">
        <c:out value="${emptyM}"/>
        <a href="createmarks.php?page=createmarks">
          <button>
            <img src="icons/user_add.png"/> Create New Marks
          </button>
        </a>
      </div>
      <div class="search">
        <form action="listuser.php" method="get">
          <table>
            <tr>
              <td style="color: #000000;">Enter User ID</td>
              <td><input type="text" name="id" id="id"/></td>
              <td><input type='submit' name="userregistrationsearch"
                         value='search'/></td>
            </tr>
          </table>
        </form>
      </div>
      <hr/>
      <table style="border: 0;">
        <td align="left"><input type="text" size="15"
                                maxlength="50" readonly="readonly" name="savedBy" id="savedBy"
                                hidden="hidden" value="${authenticatedUser.id}"/></td>
        <table>
          <thead>
          <tr>
            <td>Instructor Id</td>
            <td>FirstName</td>
            <td>LastName</td>
            <td>Date Of Birth</td>
            <td>Telephone Number</td>
            <td>Salary</td>
            <td>Email</td>
            <td>Enumeration Date</td>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${instructors}" var="student" varStatus="usrstatus">
            <tr>
              <td>${student.id}</td>
              <td>${student.firstName}</td>
              <td>${student.lastName}</td>
              <td>${student.dateOfBirth}</td>
              <td>${student.phoneNumber}</td>
              <td>${student.salary}</td>
              <td>${student.email}</td>
              <td>${student.remunerationDate}</td>


                <%--                <td>${csr.isCancelled}</td>--%>
              <td><input type="checkbox" name="usrIds"
                         value="${usr.id}" /></td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </table>
    </c:if>
  </div>
  <%@ include file="footer.jsp" %>
</div>
</body>
</html>