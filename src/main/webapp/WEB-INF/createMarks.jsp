<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
        body {
            background-color: #F2F2F2;
        }
        .container {
            margin: 10% auto 50px;
            width: 400px;
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
            justify-content: center;
            display: flex;
            flex-direction: column;
        }
        .container img {
            position: absolute;
            top: -75px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #FFFFFF;
            padding: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }
        h2 {
            text-align: center;
            color: #374954;
            margin-top: 10px;
        }
        p, a {
            text-align: center;
            text-decoration: none;
        }
        input[type="text"], input[type="password"] , input[type="date"] , input[type="number"] {
            width: 93%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #F2F2F2;
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
            color: #FFFFFF;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }
        select {
            width: 98%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #F2F2F2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }
        option {
            color: #333333;
        }
    </style>
</head>
<body>
<div class="container">

    <h2>Create Marks</h2>
    <p>Welcome to RCA SMIS Marks Creation Please Enter Details!!</p>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <form  action="createmarks.php?page=createmarks" method="post">
        <input type="text" placeholder="Student Name" required name="studentName">
        <input type="text" placeholder="Course Name" required name="courseName">
        <input type="number" placeholder="Score" required name="score">
        <input type="submit" value="Create Marks">
    </form>
    <p>
        <a href="listMarks.php?page=marks&&action=list">
            All Marks
        </a>
    </p>
</div>
</body>
</html>