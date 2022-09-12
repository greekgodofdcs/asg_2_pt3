<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="findWithSalaryAndDesig.aspx.cs" Inherits="WebApplication1.findWithSalaryAndDesig" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Search Employee By Greater Than Given Salary and Designation </h1>
    <table>
        <tr>
            <td>Select Designation</td>
            <td>
                <asp:DropDownList ID="dldesig" runat="server"></asp:DropDownList></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:label runat="server" text="Salary"></asp:label>
            </td>
            <td>
                <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter salary" Text="*" ControlToValidate="txtsalary"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnfind" runat="server" Text="Find" OnClick="btnfind_Click" /></td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
