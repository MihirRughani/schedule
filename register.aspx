<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
            
            <li><a href="register.aspx"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
			<!--<li><a href="widgets.html"><span class="glyphicon glyphicon-th"></span> Widgets</a></li>
			<li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
			<li><a href="forms.html"><span class="glyphicon glyphicon-pencil"></span> Forms</a></li>
			<li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>-->
			
			
			<li role="presentation" class="divider"></li>
			<li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span> Login </a></li>
            <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span> Guest Login </a></li>
            <li><a href="Schedule.aspx"><span class="glyphicon glyphicon-user"></span> Schedule </a></li>
		</ul>
		
	</div><!--/.sidebar-->
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
     <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading"><h1>Register</h1></div>
				<div class="panel-body">&nbsp&nbsp&nbsp&nbsp
					<%--<form action= "" role="form">--%>
						
                    <!--/.row-->

		<fieldset>
        <div class="form-group">  
              <asp:TextBox ID="txt_name" CssClass= "form-control" runat="server" Width="300px" placeholder="Your Name" ValidationGroup="Register"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_name" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
         </div>
    
        <div class="form-group">
          <asp:DropDownList ID="ddl_class" CssClass= "form-control" runat="server" Width="300px" placeholder="Select Class" ValidationGroup="Register">
                <asp:ListItem> Select Class </asp:ListItem>
                <asp:ListItem>A+B</asp:ListItem>
                <asp:ListItem>C+D</asp:ListItem>
                <asp:ListItem>A+C</asp:ListItem>
                <asp:ListItem>B+D</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddl_class" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            </div>
    
  
        
        <div class="form-group">
         
            <asp:TextBox ID="txt_email" CssClass= "form-control" runat="server" Width="300px" placeholder="Email" ValidationGroup="Register"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txt_email" ErrorMessage="Invalid Email Id" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Register"></asp:RegularExpressionValidator>
            </div>
             

        <div class="form-group">
       
            <asp:TextBox ID="txt_pass" CssClass= "form-control" runat="server" TextMode="Password" Width="300px" placeholder="Password" ValidationGroup="Register"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            </div>
           

       
        <div class="form-group">
        
            <asp:TextBox ID="txt_conPass" CssClass= "form-control" runat="server" TextMode="Password" Width="300px" placeholder="Confirm Password" ValidationGroup="Register"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txt_pass" ControlToValidate="txt_conPass" 
                ErrorMessage="Must be same" ForeColor="Red" ValidationGroup="Register"></asp:CompareValidator>
            </div>
             

     
        <div class="form-group">
       
          Student Photo <div> <asp:FileUpload ID="FileUpload1" Width="300px" runat="server" ValidationGroup="Register" /> </div>
      </div>
    
       
        
        <div class="form-group">
        
          <center><asp:Button ID="btn_reg" CssClass="btn btn-primary" runat="server" Width="300px" Text="Register"  
                ValidationGroup="Register" CausesValidation="true" onclick="btn_reg_Click" /> </center> 
                </div>
       
        </fieldset>
        </div>
        </div>
        </div>
        </div>
        </div>
        
       
    </div>
    </form>
</body>
</html>
