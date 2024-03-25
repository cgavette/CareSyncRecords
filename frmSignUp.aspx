<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmSignUp.aspx.cs" Inherits="CareSyncRecords.frmSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="Login">
        <h1>Sign Up</h1>
        <p>
            <asp:Label ID="lblSignUpID" runat="server" Text="ID:"></asp:Label>
            <asp:TextBox ID="txtSignUpID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSignUpPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtSignUpPassword" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSignUpReenter" runat="server" Text="Reenter Password:"></asp:Label>
            <asp:TextBox ID="txtSignUpReenter" runat="server"></asp:TextBox>
        </p>
        <asp:Button CssClass="ResetButton" ID="btnResetButton" runat="server" Text="Reset" OnClick="btnResetButton_Click" />
        <asp:Button CssClass="LoginButton" ID="btnSignUpButton" runat="server" Text="Sign Up" OnClick="btnSignUpButton_Click" />
        <br />
        <asp:Label ID="lblStatusBar" runat="server" Text=""></asp:Label> 
    </div>
</asp:Content>
