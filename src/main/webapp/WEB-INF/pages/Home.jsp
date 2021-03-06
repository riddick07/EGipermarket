<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<title>Home page</title>
<jsp:include page="/WEB-INF/pages/includes/css.jsp" />
<jsp:include page="/WEB-INF/pages/includes/jslib.jsp" />
<jsp:include page="/WEB-INF/pages/includes/header.jsp" />
</head>
<body class="body-t">
	<div class="container">
		<!-- Main -->
		<div class="hero-unit row-fluid">
			<div class="thumbnails span9">
				<h1>Welcome!</h1>
			</div>
			<img class="span2" src="${pageContext.request.contextPath}/images/tw-logo.png">
		</div>

		<!-- Pages links-->
		<ul id="reports" class="thumbnails">
			<li class="thumbnail home-th" id="livereports"><a
					href="${pageContext.request.contextPath}/pages/ChartLayout.vw?chartType=LiveReport" class="commonLink">
					<div class="pagination-centered">
						<img class="m-height" id="repoimg" src="${pageContext.request.contextPath}/images/livereportsUp.png">
						<h2 class="m-height">Live Report</h2>
					</div>
				</a></li>
			<li class="thumbnail home-th caption" id="estimations"><a
					href="${pageContext.request.contextPath}/pages/Estimations.vw" class="commonLink">
					<div class="pagination-centered">
						<img class="m-height" id="estimg" src="${pageContext.request.contextPath}/images/estimationsUp.png">
						<h2 class="m-height">Estimation</h2>
					</div>
				</a></li>
			<li class="thumbnail home-th " id="review"><a
					href="${pageContext.request.contextPath}/pages/ChartLayout.vw?chartType=Review" class="commonLink">
					<div class="pagination-centered">
						<img class="m-height" id="revimg" src="${pageContext.request.contextPath}/images/reviewUp.png">
						<h2 class="m-height">Review</h2>
					</div>
				</a></li>
			<li class="thumbnail home-th caption" id="projections"><a
					href="${pageContext.request.contextPath}/pages/Roadmap.vw" class="commonLink">
					<div class="pagination-centered">
						<img class="m-height" id="projimg" src="${pageContext.request.contextPath}/images/projectionsUp.png">
						<h2 class="m-height">Roadmap</h2>
					</div>
				</a></li>
			<li class="thumbnail home-th caption" id="standup"><a href="${pageContext.request.contextPath}/pages/Standup.vw"
					class="commonLink">
					<div class="pagination-centered">
						<img class="m-height" id="standimg" src="${pageContext.request.contextPath}/images/standupUp.png">
						<h2 class="m-height">Standup</h2>
					</div>
				</a></li>
		</ul>
	</div>
	<jsp:include page="/WEB-INF/pages/includes/footer.jsp" />
</body>
<script type="text/javascript">
	window.onload = function() {
		var role = "${model.role}";
		if (role == "Administrator" || role == "Developer") {
			$("#rightPanel")
					.append(
							'<li><a href="${pageContext.request.contextPath}/pages/AdminPanel.vw">Admin panel</a></li>');
		}
	};
	$("#reports li").mouseover(
			function() {
				id = $(this).attr('id');
				$("#" + id + " img").attr(
						'src',
						'${pageContext.request.contextPath}/images/' + id
								+ 'Overdown.png');
				cBlue(id);
			});

	$("#reports li").mouseout(
			function() {
				id = $(this).attr('id');
				$("#" + id + " img").attr(
						'src',
						'${pageContext.request.contextPath}/images/' + id
								+ 'Up.png');
				cWhite(id);
			});

	function cBlue(id) {
		document.getElementById(id).style.backgroundColor = '#6EC4E9';
		document.getElementById(id).style.cursor = 'pointer';
	};
	function cWhite(id) {
		document.getElementById(id).style.backgroundColor = 'white';
	};
</script>

</html>