
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
