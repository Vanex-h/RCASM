<%--<c:choose>--%>
<%--	<c:when--%>
<%--		test="${authenticatedUser !=null}">--%>
<%--		<li><a--%>
<%--			href="listinstructors.php?page=instructors&&user_role=empl&&action=list"><img--%>
<%--						src="icons/application_view_list.png" /> Instructors</a>--%>
<%--		</li>--%>
<%--		<li><a class="idTabs" href="#evaluations"><img--%>
<%--				src="icons/application_side_expand.png" /> Evaluation Tracking</a>--%>
<%--			<ul class="noJS">--%>
<%--				<li><a--%>
<%--					href="listevaluations.php?page=evaluations&&action=list"><img--%>
<%--						src="icons/application_view_list.png" /> Discipline status</a></li>--%>
<%--				<li><a--%>
<%--					href="listevaluations.php?page=evaluations&&action=list"><img--%>
<%--						src="icons/application_view_list.png" /> Marks records</a></li>--%>
<%--			</ul></li>--%>
<%--		--%>
<%--	</c:when>--%>
<%--	<c:otherwise>--%>

<%--	</c:otherwise>--%>
<%--</c:choose>--%>

<nav>

	<ul id="main">
		<li>Instructors<ul class="drop">
			<div>
				<li><a href="listinstructors.php?page=instructors&&user_role=empl&&action=list"> Instructors</a></li>


			</div>
		</ul></li>
		<li>Evaluation tracking <ul class="drop">
			<div>
				<li><a href="listevaluations.php?page=evaluations&&action=list">Evaluation tracking</a></li>

			</div>
		</ul></li>
		<li>Discipline status
			<ul class="drop">
				<div>
					<li><a href="#">Discipline status</a></li>
<%--					<li><a href="listparent.php?page=parents&&user_role=adm&&action=list">Parents</a></li>--%>
				</div>
			</ul>
		</li>
		<li>Mark records<ul class="drop">
			<div>
				<li><a href="listMarks.php?page=marks&&action=list">Marks</a></li>
<%--				<li><a href="listcourses.php?page=courses&&action=list">Courses</a></li>--%>
			</div>
		</ul></li>
<%--		<li>Reports<ul class="drop">--%>
<%--			<div>--%>
<%--				<li><a href="studentReportTxt.php?page=studenttxt">Student's reports</a></li>--%>
<%--				<li><a href="courseReportTxt.php?page=coursetxt">Course's reports</a></li>--%>
<%--				<li><a href="marksReportTxt.php?page=markstxt">Mark's reports</a></li>--%>
<%--				<li><a href="studentReportPdf.php?page=studenttxt">All students pdf</a></li>--%>
<%--			</div>--%>
<%--		</ul></li>--%>
	</ul>
</nav>
