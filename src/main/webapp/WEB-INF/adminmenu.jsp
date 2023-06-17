

<%--	<li>--%>
<%--		<a class="idTabs" href="#admin">--%>
<%--			<img src="icons/application_side_expand.png" /> Admin--%>
<%--		</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="createuser.php?page=createuser"><img src="icons/user_add.png" /> Create User</a></li>--%>
<%--			<li><a href="listuser.php?page=users&&action=list"><img src="icons/application_view_list.png" /> List of users</a></li>--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--	<li>--%>
<%--		<a href="#employees"><img src="icons/application_side_expand.png" /> Employees</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="listemployee.php?page=employees&&action=list"><img src="icons/application_view_list.png" /> employees</a></li>--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--	<li>--%>
<%--		<a class="idTabs" href="#students"><img src="icons/application_side_expand.png" /> Students</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="liststudent.php?page=students&&action=list"><img src="icons/application_view_list.png" /> Students</a></li>--%>
<%--			<li><a href="listparent.php?page=parents&&user_role=adm&&action=list"><img src="icons/application_view_list.png" /> Parents</a></li>--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--	<li>--%>
<%--		<a class="idTabs" href="#marks"><img src="icons/application_side_expand.png" /> Marks</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="listMarks.php?page=marks&&action=list"><img src="icons/application_view_list.png" /> Marks</a></li>--%>
<%--			<li><a href="listcourses.php?page=courses&&action=list"><img src="icons/application_view_list.png" /> Courses</a></li>--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--	<li>--%>
<%--		<a class="idTabs" href="#reports"><img src="icons/application_side_expand.png" /> Reports</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="studentReportTxt.php?page=studenttxt"><img src="icons/application_view_list.png" /> Students reports</a></li>--%>
<%--			<li><a href="courseReportTxt.php?page=coursetxt"><img src="icons/application_view_list.png" /> Courses reports</a></li>--%>
<%--			<li><a href="marksReportTxt.php?page=markstxt"><img src="icons/application_view_list.png" /> Marks Report</a></li>--%>
<%--			<li><a href="studentReportPdf.php?page=studenttxt"><img src="icons/page_white_acrobat.png" /> All Students PDF</a></li>--%>
<%--		</ul>--%>
<%--	</li>--%>

<nav>

	<ul id="main">
		<li>Admin<ul class="drop">
			<div>
				<li><a href="createuser.php?page=createuser"> Create User</a></li>
				<li><a href="listuser.php?page=users&&action=list">List of users</a></li>

			</div>
		</ul></li>
		<li>Employee <ul class="drop">
			<div>
				<li><a href="listemployee.php?page=employees&&action=list">Employees</a></li>

			</div>
		</ul></li>
		<li>Students
			<ul class="drop">
				<div>
					<li><a href="liststudent.php?page=students&&action=list">Students</a></li>
					<li><a href="listparent.php?page=parents&&user_role=adm&&action=list">Parents</a></li>
				</div>
			</ul>
		</li>
		<li>Marks<ul class="drop">
			<div>
				<li><a href="listMarks.php?page=marks&&action=list">Marks</a></li>
				<li><a href="listcourses.php?page=courses&&action=list">Courses</a></li>
			</div>
		</ul></li>
		<li>Reports<ul class="drop">
			<div>
				<li><a href="studentReportTxt.php?page=studenttxt">Student's reports</a></li>
				<li><a href="courseReportTxt.php?page=coursetxt">Course's reports</a></li>
				<li><a href="marksReportTxt.php?page=markstxt">Mark's reports</a></li>
				<li><a href="studentReportPdf.php?page=studenttxt">All students pdf</a></li>
			</div>
		</ul></li>
	</ul>
</nav>
