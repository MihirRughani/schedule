<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Date :
        <asp:Calendar ID="Calendar1" runat="server" Height="161px" Width="222px">
        </asp:Calendar>
        <br />
    
        Time:&nbsp;
        <asp:TextBox ID="txttime1" runat="server" ValidationGroup="ab"></asp:TextBox>
&nbsp;to
        <asp:TextBox ID="txttime2" runat="server" ValidationGroup="ab"></asp:TextBox>
        <br />
        Section :
        <asp:TextBox ID="txtsection" runat="server" ValidationGroup="ab"></asp:TextBox>
        <br />
        Class Name :
        <asp:DropDownList ID="ddlclassnm" runat="server" ValidationGroup="ab" 
            onselectedindexchanged="ddlclassnm_SelectedIndexChanged">
            <asp:ListItem>A+B</asp:ListItem>
            <asp:ListItem>C+D</asp:ListItem>
            <asp:ListItem>A+C</asp:ListItem>
            <asp:ListItem>B+D</asp:ListItem>
        </asp:DropDownList>
        <br />
        Class No. :
        <asp:DropDownList ID="ddlclassno" runat="server" ValidationGroup="ab">
            <asp:ListItem Value="McCollum 101">McCollum 101</asp:ListItem>
            <asp:ListItem>McCollum102</asp:ListItem>
            <asp:ListItem>Crimson Common</asp:ListItem>
            <asp:ListItem>McArthur Living Group</asp:ListItem>
            <asp:ListItem>Aldrich 112</asp:ListItem>
            <asp:ListItem>McArthur Hall</asp:ListItem>
            <asp:ListItem>Aldrich 111, 110, 109</asp:ListItem>
            <asp:ListItem>Spangler Williams Room</asp:ListItem>
            <asp:ListItem>Living Groups</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>McArthur Lounge</asp:ListItem>
            <asp:ListItem>Baker Library Steps</asp:ListItem>
            <asp:ListItem>Blazing Paddles</asp:ListItem>
            <asp:ListItem>Spangler Grille</asp:ListItem>
            <asp:ListItem>Harvard Club of Boston</asp:ListItem>
        </asp:DropDownList>
        <br />
        Subject : 
        <asp:TextBox ID="txtsub" runat="server" ValidationGroup="ab"></asp:TextBox>
        <br />
        Faculty :
        <asp:TextBox ID="txtfaculty" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn" runat="server" Text="Submit" ValidationGroup="ab" 
            onclick="btn_Click" />
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="clno" HeaderText="clno" SortExpression="clno" />
                <asp:BoundField DataField="subject" HeaderText="subject" 
                    SortExpression="subject" />
                <asp:BoundField DataField="sfac" HeaderText="sfac" 
                    SortExpression="sfac" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [time], [clnm], [clno], [subject], [sfac] FROM [class] WHERE ([date] = @date)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txttime1" Name="date" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
