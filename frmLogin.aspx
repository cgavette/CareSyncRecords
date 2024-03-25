<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="CareSyncRecords.frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Login">
        <h1>Login</h1>
        <p>
            <asp:Label ID="lblLoginID" runat="server" Text="ID:"></asp:Label>
            <asp:TextBox ID="txtLoginID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblLoginPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Button CssClass="ResetButton" ID="btnResetButton" runat="server" Text="Reset" />
        <asp:Button CssClass="LoginButton" ID="btnLoginButton" runat="server" Text="Login" OnClick="btnLoginButton_Click" />
        <br />
        <asp:Label ID="lblStatusBar" runat="server" Text=""></asp:Label> 

        <p>Or <a href="frmSignUp.aspx">Sign Up</a></p>

    </div>
</asp:Content>
