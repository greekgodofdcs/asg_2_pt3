<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="addEmployee.aspx.cs" Inherits="WebApplication1.addEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Employee Details</h1>
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" Text="*" ControlToValidate="txtname" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Date Of Birth</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td></td>
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
            <td>CV</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Upload CV" ControlToValidate="FileUpload1" SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
            <td></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
