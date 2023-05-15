<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Create Student" />
</jsp:include>
<div id="middle">
    <h2 style="text-align: left;">
        <b>Enter Student Details</b>
    </h2>
    <c:if test="${message != null}">
        <fieldset>
            <h3>
                <span style="color: red"> ${message}</span>
            </h3>
        </fieldset>
    </c:if>
    <form action="createstudent.php?page=createstudent" method="post">
        <table>
            <tr>
                <td align="right"><b>Student First Name</b></td>
                <td align="left"><input type="text" size="50" maxlength="50"
                                        name="firstName" id="firstName" /></td>
            </tr>
            <tr>
                <td align="right"><b>Student Last Name</b></td>
                <td align="left"><input type="text" size="50" maxlength="50"
                                        name="firstName" id="lastName" /></td>
            </tr>
<%--            <tr>--%>
<%--            <tr>--%>
<%--                <td align="right"><b><t:field mandatory="yes"--%>
<%--                                              text="Username"></t:field></b></td>--%>
<%--                <td align="left"><input type="text" size="25" maxlength="50"--%>
<%--                                        name="username" id="username" /></td>--%>
<%--            </tr>--%>
            <tr>
            <tr>
                <td align="right"><b>Birth Date</b></td>
                <td align="left"><input type="date" size="50" maxlength="50"
                                        name="dateOfBirth" id="start" /></td>
            </tr>
            <tr>
                <td><b>Telephone Number</b></td>
                <td><input type="text" size="60" maxlength="13" name="phoneNumber" id="phoneNumber" ></td>



                <td align="right"><b>Email</b></td>
                <td align="left"><input type="text" size="50" maxlength="50"
                                        name="email" id="email" /></td>
            </tr>

            <tr>
                <td align="right">&nbsp;</td>
                <td align="left"><input type="submit" name="saveDataUser"
                                        value="Create Student" /></td>
            </tr>
        </table>
    </form>
</div>
<a href="liststudent.php?page=students&&action=list">All students </a>
<%@ include file="footer.jsp"%>