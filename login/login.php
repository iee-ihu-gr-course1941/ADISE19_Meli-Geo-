<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
	<title> Login Page </title>
	<link rel="stylesheet" type="text/css" href = "style.css">
</head>

<body>

	<div id="frm">
		<form action="./../index.php" method="GET">
			<p>
				<h1 class="text">Enter your nickname:</h1>
				<input type="text" name="nickname" required>
			</p>
			<p>
				<input type="submit" id="btn" name="Login"/>
				<input name="p" value="do_login" type="hidden">
			</p>
		</form>
	</div>
</body>

</html>