<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="cssfile.css" type="text/css" />

	<title>${param.title}</title>

</head>

<body>
<%--<style >--%>
<%--	#layout {--%>
<%--		width: 100%;--%>
<%--		height: 10vh;--%>
<%--	}--%>
<%--	#banner {--%>
<%--		width: 100%;--%>
<%--		height: 10vh;--%>

<%--	}--%>

<%--	.container  {--%>
<%--		display: flex;--%>
<%--		flex-direction: column;--%>
<%--		justify-content: center;--%>
<%--		align-items: center;--%>

<%--	}--%>
<%--	#menu {--%>
<%--		display: flex;--%>
<%--		justify-content: center;--%>
<%--		align-items: center;--%>
<%--		gap: 30px;--%>
<%--	}--%>
<%--</style>--%>
<%--	<div id="layout">--%>
<%--		<div id="banner">--%>
<%--			<div class="bannerlogo"></div>--%>
<%--			<div class="container">--%>
<%--				<div class="text_header">RCA Management Information System</div>--%>
<%--			<div class="right" style="display: flex; flex-direction: row; justify-content: space-evenly;">--%>
<%--				<c:if test="${authenticatedUser !=null}">--%>
<%--					<b style="display: flex; flex-direction: row; justify-content: space-evenly; width:100%;"><a href="listuser.php?page=profile&&id=${authenticatedUser.id}"><button>Profile--%>
<%--					</button></a> | <div><img src="icons/user.png" /> <font color="#ffffff">${authenticatedUser.fullName}</font></div>--%>
<%--						| <a href="login.php?"><font color="#ffffff">Logout</font></a>--%>
<%--					</b>--%>
<%--				</c:if>--%>
<%--				<c:if test="${authenticatedUser ==null}">--%>
<%--					<div class="menu" >--%>
<%--						| <a href="login.php?"><font color="white">Login</font></a> |--%>
<%--					</div>--%>
<%--				</c:if>--%>
<%--			</div>--%>
<%--			</div>--%>

<%--		</div>--%>
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
		height: 32px;
		width: 10em;
	}


	.button:hover {
		color: white;
		background: transparent;
		border: white solid 1px;
		border-radius: 12px;
		height: 32px;
		width: 10em;
	}
</style>

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
						<img src="icons/user.png" />
						<font color="#ffffff">${authenticatedUser.fullName}</font>
					</div>
					<a href="login.php?"><font color="#ffffff" id="logg">Logout</font></a>
				</c:if>
				<c:if test="${authenticatedUser ==null}">
					<div class="menu">
						<a href="login.php?"><font color="white">Login</font></a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>
<%@ include file="menu.jsp"%>