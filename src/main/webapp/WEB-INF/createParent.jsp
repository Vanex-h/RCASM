

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jazzy Bruno
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

    <h2>Create Parent</h2>
    <p>Welcome to RCA SMIS Course Creation Please Enter Details!!</p>
    <c:if test="${CreateStudenterror != null}">
        <p>
            <span style="color: red"> ${CreateParenterror}</span>
        </p>
    </c:if>
    <c:if test="${successParent != null}">
        <p>
            <span style="color: green"> ${successParent}</span>
        </p>
    </c:if>
    <form  action="createparent.php?page=createparent" method="post">
        <input type="text" placeholder="Parent's First Name" required name="firstName">
        <input type="text" placeholder="Parent's Last Name" required name="lastName">
        <input type="text" placeholder="Phone Number" required name="phoneNumber">
        <input type="text" placeholder="nationalId" required name="nationalId">
        <input type="number" placeholder="schoolFees" required name="schoolfees">
<%--        <input type="number" placeholder="studentId" required name="studentId" >--%>
        <input type="date" placeholder="dateOfBirth of child" required name="dateOfBirth of student" >
        <input type="submit" value="Create Parent">
    </form>

    <p>
        <a href="listparent.php?page=parents&&user_role=adm&&action=list">
            All Parent
        </a>
    </p>
</div>
</body>
</html>