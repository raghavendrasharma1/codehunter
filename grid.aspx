<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="gridfinal.grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="image" HeaderText="image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" >
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="hid" HeaderText="hid" SortExpression="hid" />
                <asp:ImageField DataImageUrlField="image2" HeaderText="image2">
                </asp:ImageField>
                <asp:HyperLinkField HeaderText="booknow" NavigateUrl="https://www.google.co.in/" Text="BOOKNOW" />
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
        <asp:SqlDataSource ID="image" runat="server" ConnectionString="<%$ ConnectionStrings:hotelConnectionString %>" SelectCommand="SELECT * FROM [image2]"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
