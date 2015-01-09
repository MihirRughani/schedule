<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Guest.aspx.cs" Inherits="Guest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/datepicker3.css" rel="stylesheet"/>
    <link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>HARVARD</span>UNIVERSITY</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>

    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form  action= "" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search"/>
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index.aspx"><span class="glyphicon glyphicon-dashboard"></span> Home</a></li>
           
            <li><a href="charts.html"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
			
            <li role="presentation" class="divider"></li>
			<li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span> Login </a></li>
            <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span> Guest Login </a></li>
            <li><a href="register.aspx"><span class="glyphicon glyphicon-user"></span> Register </a></li>
		</ul>
		
	</div><!--/.sidebar-->

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<!--<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header"><center>Welcome Guest User</center></h1>
			</div>
		</div><!--/.row-->

<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
	    $('#calendar').datepicker({
	});

	!function ($) {
	    $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
	        $(this).find('em:first').toggleClass("glyphicon-minus");
	    });
	    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	} (window.jQuery);

	$(window).on('resize', function () {
	    if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	})
	$(window).on('resize', function () {
	    if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	})
	</script>	
    </div>
    </div>
    </div>
    
    </form>
</body>
</html>
