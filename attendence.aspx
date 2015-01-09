<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendence.aspx.cs" Inherits="attendence" %>

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
            
            <li><a href="attendence.aspx"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
			<li role="presentation" class="divider"></li>
			<li><a href="index.aspx"><span class="glyphicon glyphicon-user"></span> Log Out </a></li> 
            <li><a href="Guest.aspx"><span class="glyphicon glyphicon-user"></span> Guest Login </a></li>
            <li><a href="Schedule.aspx"><span class="glyphicon glyphicon-user"></span> Schedule </a></li>
		</ul>
		
	</div><!--/.sidebar-->

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<!--/.row-->
		

     <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading"><h3>Attendence</h3></div>
				<div class="panel-body">
					<%--<form action= "" role="form">--%>
						<fieldset>
    <div>
    
    <center>

    <table border="1" cellspacing= "2">

     <div class="form-group"> 
    <div align="center">
        Welcome,&nbsp<asp:Label ID="lbluser" runat="server" Text=""></asp:Label>,&nbsp<asp:Label ID="lbldate" runat="server" Text=""></asp:Label>
    </div>
    </div>
    
    <div class="form-group"> 
    <div align="center" class= "form-control">
        Your ID Is:<asp:Label ID="lblid" runat="server" Text=""></asp:Label>
    </div>
    </div>

     <div class="form-group"> 
    <div align="center" Class= "form-control">
        Your CLASS:<asp:Label ID="lblclass"  runat="server" Text=""></asp:Label>
     </div>
    </div>

     <div class="form-group"> 
    <div align="center">
        ---------- Current Day Attendance ------------
   </div>
     </div>

     <div class="form-group"> 
        <div align="center" Class= "form-control">
            <asp:Label ID="lblatt" runat="server" Text="Status:"></asp:Label>
            <asp:DropDownList ID="ddlatt"  runat="server"  AutoPostBack="True" onselectedindexchanged="ddlatt_SelectedIndexChanged">
                <asp:ListItem>--- Select ---</asp:ListItem>
                <asp:ListItem>Present</asp:ListItem>
                <asp:ListItem>Absent</asp:ListItem>
            </asp:DropDownList>
            </div>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <div class="form-group"> 
         <div align="center">
             <asp:Button ID="btnOk" CssClass="btn btn-primary" runat="server" Text="DONE" onclick="btnOk_Click" Visible="False" />
        </div></div>
    
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

     <div class="form-group"> 
    <div align="center" colspan="2">
        ---------- Previous Day Attendance ------------
    </div>
    </div>
     <div class="form-group"> 
    <div align="center" Class= "form-control">
        Month:<asp:Label ID="lblmonth" runat="server" Text=""></asp:Label>
        Year:<asp:Label ID="lblYear" runat="server" Text=""></asp:Label>
    </div>
    </div>

     <div class="form-group"> 
    <div align="center" Class= "form-control">
       Select Days:
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="6" 
            RepeatDirection="Horizontal">
        <asp:ListItem>01</asp:ListItem>
        <asp:ListItem>02</asp:ListItem>
        <asp:ListItem>03</asp:ListItem>
        <asp:ListItem>04</asp:ListItem>
        <asp:ListItem>05</asp:ListItem>
        <asp:ListItem>06</asp:ListItem>
        <asp:ListItem>07</asp:ListItem>
        <asp:ListItem>08</asp:ListItem>
        <asp:ListItem>09</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>16</asp:ListItem>
        <asp:ListItem>17</asp:ListItem>
        <asp:ListItem>18</asp:ListItem>
        <asp:ListItem>19</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>21</asp:ListItem>
        <asp:ListItem>22</asp:ListItem>
        <asp:ListItem>23</asp:ListItem>
        <asp:ListItem>24</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
        <asp:ListItem>26</asp:ListItem>
        <asp:ListItem>27</asp:ListItem>
        <asp:ListItem>28</asp:ListItem>
        <asp:ListItem>29</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        <asp:ListItem>31</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    </div>

     <div class="form-group"> 
    <div align="center" Class= "form-control">
        <asp:Label ID="Label1" runat="server" Text="Status:" ></asp:Label>
            <asp:DropDownList ID="ddlall" runat="server"  AutoPostBack="True" 
            onselectedindexchanged="ddlall_SelectedIndexChanged">
                <asp:ListItem>--- Select ---</asp:ListItem>
                <asp:ListItem>Present</asp:ListItem>
                <asp:ListItem>Absent</asp:ListItem>
            </asp:DropDownList>
    </div>
    </div>

         <div class="form-group"> 
    <div align="center">
             <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="SUBMIT" Visible="False" 
            onclick="btnSubmit_Click" />
            </div>
            </div>
     </div>
    </div>
    </table>
    </center>
    </div>
    </fieldset>
    </div>
    </div>
    </form>
</body>
</html>
