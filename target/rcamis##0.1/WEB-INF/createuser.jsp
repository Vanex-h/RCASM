<%--<?xml version="1.0" encoding="UTF-8" ?>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--	pageEncoding="UTF-8"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>--%>
<%--<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>--%>
<%--<jsp:include page="headeradmin.jsp"><jsp:param--%>
<%--		name="title" value="Create User" />--%>
<%--</jsp:include>--%>
<%--<div id="middle">--%>
<%--		<h2 style="text-align: left;">--%>
<%--			<b>Enter User Details</b>--%>
<%--		</h2>--%>
<%--		<c:if test="${message != null}">--%>
<%--			<fieldset>--%>
<%--				<h3>--%>
<%--					<span style="color: red"> ${message}</span>--%>
<%--				</h3>--%>
<%--			</fieldset>--%>
<%--		</c:if>--%>
<%--		<form action="createuser.php?page=createuser" method="post">--%>
<%--			<table>--%>
<%--				<tr>--%>
<%--					<td align="right"><b><t:field mandatory="yes"--%>
<%--								text="Username"></t:field></b></td>--%>
<%--					<td align="left"><input type="text" size="25" maxlength="50"--%>
<%--						name="username" id="username" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b><t:field mandatory="yes"--%>
<%--								text="Password"></t:field></b></td>--%>
<%--					<td align="left"><input type="password" size="25"--%>
<%--						maxlength="50" name="password" id="password" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>User Full Name</b></td>--%>
<%--					<td align="left"><input type="text" size="50" maxlength="50"--%>
<%--						name="userfullname" id="userfullname" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>Email</b></td>--%>
<%--					<td align="left"><input type="text" size="50" maxlength="50"--%>
<%--						name="email" id="email" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>Role</b></td>--%>
<%--					<td><select name="userRole" id="userRole">--%>
<%--							<option value="">Select Role</option>--%>
<%--							<c:forEach items="${userRoles}" var="userrole"--%>
<%--								varStatus="userrolestatus">--%>
<%--								<option value="${userrole}">--%>
<%--									<c:out value="${userrole.getRoleDescription()}" />--%>
<%--								</option>--%>
<%--							</c:forEach>--%>
<%--					</select></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right">&nbsp;</td>--%>
<%--					<td align="left"><input type="submit" name="saveDataUser"--%>
<%--						value="Create User" /></td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</form>--%>
<%--</div>--%>
<%--<%@ include file="footer.jsp"%>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--<jsp:include page="headeradmin.jsp">
	<jsp:param name="title" value="Create User" />
</jsp:include>--%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Create User</title>
	<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<div class="relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50 py-6 sm:py-12">
	<div class="absolute inset-0 bg-[url('images/another.jpg')] bg-cover"></div>
	<div class="absolute inset-0 bg-black opacity-50"></div>

	<div class="relative border-o border-2 px-6 pt-10 pb-8 shadow-xl ring-1 ring-gray-900/5 sm:mx-auto sm:max-w-lg sm:rounded-lg sm:px-10 h-[38em] backdrop-blur-lg">
		<form action="createuser.php?page=createuser" method="post" class="flex flex-col justify-between h-64">
			<h2 class="text-2xl text-center text-white pb-2">Enter User Details</h2>
			<div class="text-xs self-center pb-3 text-white">Welcome to RCA Management System</div>
			<c:if test="${message != null}">
				<fieldset>
					<h3>
						<span style="color: lawngreen">${message}</span>
					</h3>
					<div>
						<a href="login.php?page=login" class="hover:underline flex flex-row justify-around w-2/3 mt-2 text-xs text-white">
								<%--				<img src="icons/user_add.png" alt="" class="h-5">--%>
							<span >Login</span>
						</a>
					</div>
				</fieldset>
			</c:if>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2"><b>Username</b></span>
				<input type="text" size="25" maxlength="50" name="username" id="username" class="border-1 border-white bg-transparent text-white focus:outline-none" style="background-color: transparent;" />
			</div>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2"><b>Password</b></span>
				<input type="password" size="25" maxlength="50" name="password" id="password" class="border-1 border-white bg-transparent text-white focus:outline-none" />
			</div>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2"><b>User Full Name</b></span>
				<input type="text" size="50" maxlength="50" name="userfullname" id="userfullname" class="border-1 border-white bg-transparent text-white focus:outline-none" />
			</div>
			<div class="pb-3 flex flex-col justify-between">
				<span class="text-white pb-2"><b>Email</b></span>
				<input type="text" size="50" maxlength="50" name="email" id="email" class="border-1 border-white bg-transparent text-white focus:outline-none" />
			</div>
			<div class="pb-3">
				<span class="text-white pb-2"><b>Role</b></span>
				<select name="userRole" id="userRole" class="border-1 border-white bg-transparent text-white focus:outline-none focus:text-slate-300">
					<option value="" class="border-1 border-white bg-transparent text-white focus:outline-none">Select Role</option>
					<c:forEach items="${userRoles}" var="userrole" varStatus="userrolestatus">
						<option value="${userrole}" style="background-color: transparent;">
							<c:out value="${userrole.getRoleDescription()}" />
						</option>
					</c:forEach>
				</select>

			</div>
			<div class="pb-3 flex justify-center">
				<input type="submit" name="saveDataUser" value="Create User" class="bg-transparent text-white w-48 h-14 rounded-xl hover:h-16 hover:border-2 cursor-pointer" />
			</div>
		</form>
	</div>
</div>
<%--<%@ include file="footer.jsp" %>--%>
