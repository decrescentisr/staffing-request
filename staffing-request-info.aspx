﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffing-request-info.aspx.cs" Inherits="TPS_Senior_Project.staffing_request_info" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="header">
            <a href="index.aspx"><img src="Site Images/TPSHeader.png" /></a>
        </div>
        
        <div class="content-container">
            <asp:Panel ID="pnlSearch" runat="server" Visible="True">
                <br />
                <asp:TextBox ID="tbSearch" runat="server" placeholder="Enter a Request ID" CssClass="text-field" ></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="button-field" />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Maroon"></asp:Label>
            </asp:Panel>

            <br />
            <asp:Panel ID="component_listing" runat="server" Visible="False">
                <div class="grid-overwrap">
                    <asp:GridView ID="staff_grid" runat="server" CssClass="staff-request-table" OnRowCreated="RowCreated" AllowSorting="True" OnSorting="SortDataSet" OnSelectedIndexChanged="staff_grid_SelectedIndexChanged">
                    </asp:GridView>
                </div>
            
                <div class="component-list">
                    <br />
                    <asp:Label ID="StaffList" runat="server" Text="Selected Staff:"></asp:Label>
                    <asp:Label ID="Staff1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Staff2" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Staff3" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label1" runat="server" Text="Work Type:"></asp:Label>
                    <asp:DropDownList ID="ddlWork" runat="server">
                        <asp:ListItem>Temp</asp:ListItem>
                        <asp:ListItem Value="Full Time">Full Time</asp:ListItem>
                    </asp:DropDownList><br /><br />
                    <asp:Label ID="Label2" runat="server" Text="Location:"></asp:Label>
                    <asp:TextBox ID="tbLocation" runat="server" CssClass="text-field"></asp:TextBox><br />
                    <asp:Label ID="Label3" runat="server" Text="Salary Offered:"></asp:Label>
                    <asp:TextBox ID="tbSalary" runat="server" CssClass="text-field"></asp:TextBox><br />
                    <asp:Button ID="btnSubmitRequest" runat="server" Text="Update Request" OnClick="UpdateRequest_Click" CssClass="button-field" /><br />
                    <asp:Button ID="btnSubmitRequest0" runat="server" OnClick="DeleteRequest_Click" Text="Delete Request" CssClass="button-field" />
                </div>
            </asp:Panel>
        </div>

        <div class="footer">
            <p>Webpage design &#169; 2018 by <a href="mailto:spauldingwm@gmail.com">William Spaulding</a>, Khahn Nguyen, <a href="Decrescentisr@gmail.com">Robert Descrescentis</a>, <a href="nathan.strawhand@cox.net">Nathan Strawhand</a>, and <a href="Camouflaged98002@yahoo.com">Norman Brandon</a> for CIS470 at <a href="http://www.tp.devry.edu/">DeVry Institute</a>.</p>
        </div>
    </div>
    </form>
</body>
</html>