<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="editEmployee.aspx.cs" Inherits="WebApplication1.editEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Edit Employee Details</h1>
    <table>
        <tr>
            <td>Emp No:</td>
            <td>
                <asp:TextBox ID="txtempno" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter EmpNo" Text="*" ControlToValidate="txtempno" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:Button ID="btnfind" runat="server" Text="Find" OnClick="btnfind_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td>Designation</td>
            <td>
                <asp:DropDownList ID="dldesignation" runat="server"></asp:DropDownList></td>
            <td></td>
        </tr>
        <tr>
            <td>Department</td>
            <td>
                <asp:DropDownList ID="dldepartment" runat="server"></asp:DropDownList></td>
            <td></td>
        </tr>
        <tr>
            <td>Salary</td>
            <td>
                <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ErrorMessage="Please Enter Salary" ControlToValidate="txtsalary" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="update" OnClick="btnupdate_Click"  /></td>
            <td></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
