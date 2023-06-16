<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%--<jsp:include page="headerlogin.jsp">--%>
<%--	<jsp:param value="Login page" name="title" />--%>
<%--</jsp:include>--%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Login page</title>
	<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<div class="relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50 py-6 sm:py-12">
	<div class="absolute inset-0 bg-[url('images/another.jpg')] bg-cover"></div>
	<div class="absolute inset-0 bg-black opacity-50"></div>

	<div class="relative border-o border-2 px-6 pt-10 pb-8 shadow-xl ring-1 ring-gray-900/5 sm:mx-auto sm:max-w-lg sm:rounded-lg sm:px-10 h-1/2 backdrop-blur-lg">
		<form action="login.php" method="post" class="flex flex-col justify-between h-64">
			<h2 class="text-2xl text-center text-white pb-2">Login Page</h2>
			<div class="text-xs self-center pb-3 text-white">Welcome to RCA Management System</div>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2">Username </span>
                <input type="text" name="username" class="border-1 border-white bg-transparent text-white focus:outline-none" style="background-color: transparent;" />
			</div>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2">Password </span>
				<input type="password" name="password" class="border-1 border-white bg-transparent text-white focus:outline-none"  />
			</div>
			<button type="submit" class="bg-transparent text-white w-48 h-14 rounded-xl self-center hover:h-16 hover:border-2">Submit</button>
			<a href="createuser.php?page=createuser" class="hover:underline flex flex-row justify-around w-2/3 mt-2 text-xs text-white">
<%--				<img src="icons/user_add.png" alt="" class="h-5">--%>
				<span>New user registration</span>
			</a>
		</form>
	</div>
</div>

<%--<%@ include file="footerlogin.jsp"%>--%>