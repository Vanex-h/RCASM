<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User:  Vanessa HIRWA
  Date: 4/22/2023
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Student</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
  <style>
    body {
      background-color: #f2f2f2;
    }

    .container {
      margin: 50px auto;
      margin-top: 10%;
      width: 400px;
      background-color: #ffffff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
      position: relative;
      justify-content: center;
      display: flex;
      flex-direction: column;
    }

    .container img {
      position: absolute;
      top: -50px;
      left: 50%;
      transform: translateX(-50%);
      width: 100px;
      height: 100px;
      border-radius: 50%;
      background-color: #ffffff;
      padding: 5px;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }

    h2 {
      text-align: center;
      color: #374954;
      font-family: 'Quicksand', sans-serif;
      margin-top: 10px;
    }

    p, a {
      text-align: center;
      font-family: 'Quicksand', sans-serif;
      text-decoration: none;
    }
    input[type="text"], input[type="password"] , select , input[type="date"] , input[type="number"] {
      width: 93%;
      padding: 10px;
      margin-bottom: 20px;
      border: none;
      border-radius: 5px;
      background-color: #f2f2f2;
      color: #333333;
      font-size: 16px;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #374954;
      color: #ffffff;
      font-size: 16px;
      cursor: pointer;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }



    option {
      color: #333333;
    }

  </style>
</head>
<body>
<div class="container">

  <h2>Create Instructor</h2>
  <p>Welcome to RCA SMIS Course Creation Please Enter Details!!</p>
  <c:if test="${CreateStudenterror != null}">
  <p>
    <span style="color: red"> ${CreateCourseerror}</span>
  </p>
  </c:if>
  <c:if test="${successStudent != null}">
  <p>
    <span style="color: green"> ${successStudent}</span>
  </p>
  </c:if>
<form action="createinstructor.php?page=createinstructor" method="post" id="container">

  <input type="text" placeholder="First Name" required name="firstName">
  <input type="text" placeholder="Last Name" required name="lastName">
  <input type="number" placeholder="Phone Number" required name="phoneNumber">
  <input type="number" placeholder="Salary" required name="salary">
  <input type="email" placeholder="email" required name="email">
  <label>
    Date Of Birth<br>
    <input type="date" placeholder="Date Of Birth" required name="dateOfBirth">
  </label>
  <label>
    Remuneration Date<br>
    <input type="date" placeholder="Remuneration Date" required name="remunerationDate">
  </label>
  <input type="submit" value="Create Instructor">
  <div id="fieldset">
    <img src="icons/teachers.png" width="30px" height="30px">
    <a href="listinstructors.php?page=instructors&&action=list">All Instructors</a>
  </div>
</form>
</body>
</html>