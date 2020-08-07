<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/login.css">
<style>
button {
	outline: none;
}
</style>
</head>
<body>
	<div id="login-page">
		<div class="login-container">
			<div class="closebtn-box">
				<button class="close-btn">
					<span>x</span>
				</button>
			</div>
			<div class="login-box">

				<h1 class="login-title">LOGIN</h1>

				<form class="login-form">
					<input type="text" class="input-id" placeholder="ID"> <input
						type="text" class="input-pw" placeholder="PASSWORD">
					<div class="check-box">
						<label class="saved-id"> <input type="checkbox"
							name="login" value=""> <span></span>
							<p>SAVED ID</p>
						</label>
						<div class="forgot-pw">
							<a href="">FORGOT PW</a>
						</div>
					</div>
					<button class="login-btn">
						<span>LOGIN</span>
					</button>
				</form>

				<div class="sns-btn">
					<a href="#none"> <i class="fa fa-facebook"></i>
					</a> <a href="#none"> <i class="fa fa-twitter"></i>
					</a> <a href="#none"> <i class="fa fa-google-plus"></i>
					</a> <a href="#none"> <i class="fa fa-youtube"></i>
					</a> <a href="#none"> <i class="fa fa-instagram"></i>
					</a>
				</div>

				<div class="signup">
					<a href="signup">
						<button>
							<span>CREATE NEW ACCOUNT</span>
						</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/js/login.js" charset="UTF-8"></script>
</html>