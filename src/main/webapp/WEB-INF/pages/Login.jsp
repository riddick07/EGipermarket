<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to world of markets!</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<jsp:include page="/WEB-INF/pages/includes/css.jsp" />
<jsp:include page="/WEB-INF/pages/includes/jslib.jsp" />
<script type="text/javascript">
	$()
			.ready(
					function() {
						if ("${model.message}".trim() != ""
								&& "${model.message}" != null) {
							showErrorDialog("${model.message}");
						}

						if ("${model.message}" != ""
								&& ($("#password").val().trim() != "")
								&& ($("#login").val().trim() != "")) {
							showErrorDialog("${model.message}");
						}

						if (typeof String.prototype.trim !== 'function') {
							String.prototype.trim = function() {
								return this.replace(/^\s+|\s+$/g, '');
							};
						}

						$("#loginBtn")
								.click(
										function() {
											if (($("#password").val().trim() == "")
													&& ($("#login").val()
															.trim() == "")) {
												showErrorDialog("User name and password can't be empty!");
												return false;
											} else if ($("#login").val().trim() == "") {
												showErrorDialog("Please enter user name!");
												return false;
											} else if ($("#password").val()
													.trim() == "") {
												showErrorDialog("Please enter password!");
												return false;
											}
											$("#loginForm").submit();
											return true;
										});
						$('#carousel').carousel();
					});
	function redirectOnRegistrationPage() {
		document.location.href = "";
		document.location.href = "${pageContext.request.contextPath}/pages/Login.vw?reg=true";
	}
</script>
</head>
<body>
	<div class="navbar-wrapper">
		<div class="container">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<a class="brand" href="#">E-Gipermarket</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li class="active"><a href="${pageContext.request.contextPath}/pages/Login.vw">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/pages/About.vw">About</a></li>
							<li><a href="${pageContext.request.contextPath}/pages/Contact.vw">Contact</a></li>
						</ul>
					</div>
					<button onclick="redirectOnRegistrationPage();" class="btn btn-info m-top m-left avbar-form pull-right">Regisration</button>
					<form id="loginForm" class="navbar-form pull-right" action="${pageContext.request.contextPath}/pages/Login.vw"
						method="post">
						<input id="login" name="login" class="span2" type="text" placeholder="Login">
						<input id="password" name="password" class="span2" type="password" type="password" placeholder="Password">
						<button id="loginBtn" class="btn btn-info m-top m-left">Sign&nbspin</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="carousel" class="carousel slide">
		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/images/slide-01.jpg" alt="">

				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
							gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a href="#" class="btn btn-large btn-primary">Sign up today</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/images/slide-02.jpg" alt="">

				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>

						<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
							gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-large btn-primary" href="#">Learn more</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/images/slide-03.jpg" alt="">

				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>

						<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
							gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-large btn-primary" href="#">Browse gallery</a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#carousel" data-slide="prev">‹</a>
		<a class="right carousel-control" href="#carousel" data-slide="next">›</a>
	</div>
</body>

<hr class="login-page-footer">
<jsp:include page="/WEB-INF/pages/includes/footer.jsp" />
</body>

<style id="holderjs-style" type="text/css">
.holderjs-fluid {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	font-family: sans-serif;
	margin: 0
}
</style>
</html>