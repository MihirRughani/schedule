<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/datepicker3.css" rel="stylesheet"/>
<link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
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
		<form action = "" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search"/>
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index.aspx"><span class="glyphicon glyphicon-dashboard"></span> Home</a></li>
            <li><a href="Schedule.aspx"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
             <li><a href="Guest.aspx"><span class="glyphicon glyphicon-user"></span> Guest Login </a></li>
		
			
			<li role="presentation" class="divider"></li>
			<li><a href="index.aspx"><span class="glyphicon glyphicon-user"></span> Logout </a></li>
                <%--  <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Guest Login </a></li>--%><%--<li><a href="register.aspx"><span class="glyphicon glyphicon-user"></span> Register </a></li>--%>
		</ul>
		
	</div><!--/.sidebar-->

    <form id="form1" runat="server">
    <div class="container">
    <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
    <div class="mih">
				<div class="panel-heading"><center><h1>Schedule</h1></center></div>
				<div class="panel-body">
   <div><center>
        Date :
        <asp:Calendar ID="Calendar" runat="server" BackColor="White" 
            BorderColor="White" BorderWidth="0px" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" Height="150px" NextPrevFormat="FullMonth" 
            SelectedDate="12/30/2014 10:43:25" Width="240px" ValidationGroup="Register">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />

         <div>
           Class<asp:DropDownList ID="ddl_class" runat="server" Width="150px" 
                 ValidationGroup="Register" 
                 onselectedindexchanged="ddl_class_SelectedIndexChanged" 
                 AutoPostBack="True">
                <asp:ListItem>   -- Select -- </asp:ListItem>
                <asp:ListItem>A+B</asp:ListItem>
                <asp:ListItem>C+D</asp:ListItem>
                <asp:ListItem>A+C</asp:ListItem>
                <asp:ListItem>B+D</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddl_class" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            </div>
    

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center>
        <asp:Button ID="btn" runat="server" onclick="btn_Click"  Text="Show Schedule" ValidationGroup="Register"/>
        <br />
        </center>
        
        <br />
        
        <div class="neh-container">
       <font color="black" size="5"> <asp:Label ID="lbldate" runat="server"></asp:Label>
        &nbsp;&nbsp;
       &nbsp;
       <asp:Label ID="lblclass" runat="server"></asp:Label>&nbsp;&nbsp; </font>
            <asp:Label ID="lblnm" runat="server"></asp:Label>
       <br />
        </div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <div>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            AllowSorting="True" Height="108px" Width="840px" 
         onrowdatabound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                <asp:BoundField DataField="clno" HeaderText="Location" SortExpression="clno" />
                <asp:BoundField DataField="subject" HeaderText="Subject" 
                    SortExpression="subject" />

                <asp:BoundField DataField="sfac" HeaderText="Faculty" SortExpression="sfac" />
                <asp:TemplateField HeaderText="Complete?">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                       
                        <asp:ListItem Value="0">Yes</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True" >No</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        &nbsp;
        </div>
            <asp:Label ID="lblcomp" runat="server"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;<asp:Label ID="lblsub" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;<asp:Label ID="lblcom" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
                
            SelectCommand="SELECT [time], [clno], [subject], [sfac], [Complete] FROM [class] WHERE (([date] = @date) AND ([clnm] = @clnm))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbldate" Name="date" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="lblclass" Name="clnm" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
   </center>
   </div>
   </div>
   </div>
  </div>
 
    

        
    </form>
</body>
</html>
