<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<ul id="main">
	<style>

		* {
			box-sizing: border-box;
		}

		body {
			font-family: "Open Sans", sans-serif;
			background: #374954;
			color: white;
			text-align: center;
		}

		#main {
			position: relative;
			list-style: none;
			/* background: #fff; */
			color: #fff;
			font-weight: 400;
			font-size: 0;
			/*text-transform: uppercase;*/
			display: inline-block;
			padding: 0;
		}
		#main li {
			font-size: 0.8rem;
			display: inline-block;
			position: relative;
			padding: 15px 20px;
			cursor: pointer;
			z-index: 5;
			min-width: 120px;
		}
		#main li a{
			color: #374954;
		}

		li {
			margin: 0;
		}

		.drop {
			overflow: hidden;
			list-style: none;
			position: absolute;
			padding: 0;
			width: 100%;
			left: 0;
			top: 48px;
		}
		.drop div {
			-webkit-transform: translate(0, -100%);
			-moz-transform: translate(0, -100%);
			-ms-transform: translate(0, -100%);
			transform: translate(0, -100%);
			-webkit-transition: all 0.5s 0.1s;
			-moz-transition: all 0.5s 0.1s;
			-ms-transition: all 0.5s 0.1s;
			transition: all 0.5s 0.1s;
			position: relative;
		}
		.drop li {
			display: block;
			padding: 0;
			width: 100%;

			color: #374954;

			background: #ffffff33!important;
		}
		/*.drop li a{*/
		/*	display: block;*/
		/*	padding: 0;*/
		/*	width: 100%;*/

		/*	color: #374954;*/

		/*	background: #ffffff33!important;*/
		/*}*/
		.drop li a:hover{

			text-decoration: none;
			color: white;
			background: transparent;
		}
		.drop li:hover{
			color: white;
			text-decoration: none;
			background: white;
		}


		#marker {
			height: 6px;
			background: #3E8760 !important;
			position: absolute;
			bottom: 0;
			width: 120px;
			z-index: 2;
			-webkit-transition: all 0.35s;
			-moz-transition: all 0.35s;
			-ms-transition: all 0.35s;
			transition: all 0.35s;
		}

		#main li:nth-child(1):hover ul div {
			-webkit-transform: translate(0, 0);
			-moz-transform: translate(0, 0);
			-ms-transform: translate(0, 0);
			transform: translate(0, 0);
		}
		#main li:nth-child(1):hover ~ #marker {
			-webkit-transform: translate(0px, 0);
			-moz-transform: translate(0px, 0);
			-ms-transform: translate(0px, 0);
			transform: translate(0px, 0);
		}

		#main li:nth-child(2):hover ul div {
			-webkit-transform: translate(0, 0);
			-moz-transform: translate(0, 0);
			-ms-transform: translate(0, 0);
			transform: translate(0, 0);
		}
		#main li:nth-child(2):hover ~ #marker {
			-webkit-transform: translate(120px, 0);
			-moz-transform: translate(120px, 0);
			-ms-transform: translate(120px, 0);
			transform: translate(120px, 0);
		}


		#main li:nth-child(3):hover ul div {
			-webkit-transform: translate(0, 0);
			-moz-transform: translate(0, 0);
			-ms-transform: translate(0, 0);
			transform: translate(0, 0);
		}
		#main li:nth-child(3):hover ~ #marker {
			-webkit-transform: translate(240px, 0);
			-moz-transform: translate(240px, 0);
			-ms-transform: translate(240px, 0);
			transform: translate(240px, 0);
		}

		#main li:nth-child(4):hover ul div {
			-webkit-transform: translate(0, 0);
			-moz-transform: translate(0, 0);
			-ms-transform: translate(0, 0);
			transform: translate(0, 0);
		}
		#main li:nth-child(4):hover ~ #marker {
			-webkit-transform: translate(360px, 0);
			-moz-transform: translate(360px, 0);
			-ms-transform: translate(360px, 0);
			transform: translate(360px, 0);
		}
		#main li:nth-child(5):hover ul div {
			-webkit-transform: translate(0, 0);
			-moz-transform: translate(0, 0);
			-ms-transform: translate(0, 0);
			transform: translate(0, 0);
		}
		#main li:nth-child(5):hover ~ #marker {
			-webkit-transform: translate(360px, 0);
			-moz-transform: translate(360px, 0);
			-ms-transform: translate(360px, 0);
			transform: translate(360px, 0);
		}

		#main a:hover{
			color: #fff;


		}
		#main li:hover{

			background: #374954;
		}
	</style>

	<c:choose>
		<c:when
			test="${authenticatedUser !=null && authenticatedUser.userRole eq 'ADMINISTRATOR'}">
			<%@ include file="adminmenu.jsp"%>
		</c:when>
		<c:when
			test="${authenticatedUser !=null && authenticatedUser.userRole eq 'EMPLOYEE'}">
			<%@ include file="adminmenuemployee.jsp"%>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>
</ul>