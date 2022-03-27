<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sample_App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td colspan="2" style="font-family: Calibri; font-size: x-large; font-weight: bold">CRUD App in ASP.NET with SQL</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Employee ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtempID" runat="server" Width="200px"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="btnGet" runat="server" OnClick="btnGet_Click" Text="Get" Width="50px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtempName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="drpDwncity" runat="server" Width="200px">
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>Chicago</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>Settle</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <asp:Label ID="Label7" runat="server" Text="Age"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtAge" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <asp:Label ID="Label4" runat="server" Text="Sex"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:RadioButtonList ID="radLstSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">
                    <asp:Label ID="Label5" runat="server" Text="Joined Date"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtJoinDate" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Contact"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" BackColor="#666666" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="100px" />
                &nbsp;
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="100px" />
&nbsp;
                    <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" Text="Delete" Width="100px" />
&nbsp;
                    <asp:Button ID="btnLoad" runat="server" OnClick="btnLoad_Click" Text="Load" Width="100px" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" ForeColor="Black" Width="1033px">
                        <HeaderStyle BackColor="#666666" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
