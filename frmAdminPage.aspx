<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmAdminPage.aspx.cs" Inherits="CareSyncRecords.frmExtraPage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- head/meta stuff up here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblContact]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblPatInfo]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblLogin]"></asp:SqlDataSource>
    <section class="formtemplate">
        <div class="centered-text"><h1>Contact Forms &#8594</h1></div>
        <div class="form-text">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ContactName" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    ContactName:
                <asp:Label ID="ContactNameLabel1" runat="server" Text='<%# Eval("ContactName") %>' />
                    <br />
                    ContactEmail:
                <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                    <br />
                    ContactText:
                <asp:TextBox ID="ContactTextTextBox" runat="server" Text='<%# Bind("ContactText") %>' />
                    <br />
                    ContactDate:
                <asp:TextBox ID="ContactDateTextBox" runat="server" Text='<%# Bind("ContactDate") %>' />
                    <br />
                    ContactFileName:
                <asp:TextBox ID="ContactFileNameTextBox" runat="server" Text='<%# Bind("ContactFileName") %>' />
                    <br />
                    ContactIsUser:
                <asp:TextBox ID="ContactIsUserTextBox" runat="server" Text='<%# Bind("ContactIsUser") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ContactName:
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                    <br />
                    ContactEmail:
                <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                    <br />
                    ContactText:
                <asp:TextBox ID="ContactTextTextBox" runat="server" Text='<%# Bind("ContactText") %>' />
                    <br />
                    ContactDate:
                <asp:TextBox ID="ContactDateTextBox" runat="server" Text='<%# Bind("ContactDate") %>' />
                    <br />
                    ContactFileName:
                <asp:TextBox ID="ContactFileNameTextBox" runat="server" Text='<%# Bind("ContactFileName") %>' />
                    <br />
                    ContactIsUser:
                <asp:TextBox ID="ContactIsUserTextBox" runat="server" Text='<%# Bind("ContactIsUser") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ContactName:
                <asp:Label CssClass="form-label" ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                    <br />
                    ContactEmail:
                <asp:Label CssClass="form-label" ID="ContactEmailLabel" runat="server" Text='<%# Bind("ContactEmail") %>' />
                    <br />
                    ContactText:
                <asp:Label CssClass="form-label" ID="ContactTextLabel" runat="server" Text='<%# Bind("ContactText") %>' />
                    <br />
                    ContactDate:
                <asp:Label CssClass="form-label" ID="ContactDateLabel" runat="server" Text='<%# Bind("ContactDate") %>' />
                    <br />
                    ContactFileName:
                <asp:Label CssClass="form-label" ID="ContactFileNameLabel" runat="server" Text='<%# Bind("ContactFileName") %>' />
                    <br />
                    ContactIsUser:
                <asp:Label CssClass="form-label" ID="ContactIsUserLabel" runat="server" Text='<%# Bind("ContactIsUser") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        </div>
        <div class="centered-text"><h1>Patient Forms &#8594</h1></div>
        <div class="form-text">
            <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="PatID" DataSourceID="SqlDataSource3">
                <EditItemTemplate>
                    PatID:
                    <asp:Label ID="PatIDLabel1" runat="server" Text='<%# Eval("PatID") %>' />
                    <br />
                    PatName:
                    <asp:TextBox ID="PatNameTextBox" runat="server" Text='<%# Bind("PatName") %>' />
                    <br />
                    PatAge:
                    <asp:TextBox ID="PatAgeTextBox" runat="server" Text='<%# Bind("PatAge") %>' />
                    <br />
                    PatStaying:
                    <asp:TextBox ID="PatStayingTextBox" runat="server" Text='<%# Bind("PatStaying") %>' />
                    <br />
                    PatGender:
                    <asp:TextBox ID="PatGenderTextBox" runat="server" Text='<%# Bind("PatGender") %>' />
                    <br />
                    PatRoomNum:
                    <asp:TextBox ID="PatRoomNumTextBox" runat="server" Text='<%# Bind("PatRoomNum") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    PatName:
                    <asp:TextBox ID="PatNameTextBox" runat="server" Text='<%# Bind("PatName") %>' />
                    <br />
                    PatAge:
                    <asp:TextBox ID="PatAgeTextBox" runat="server" Text='<%# Bind("PatAge") %>' />
                    <br />
                    PatStaying:
                    <asp:TextBox ID="PatStayingTextBox" runat="server" Text='<%# Bind("PatStaying") %>' />
                    <br />
                    PatGender:
                    <asp:TextBox ID="PatGenderTextBox" runat="server" Text='<%# Bind("PatGender") %>' />
                    <br />
                    PatRoomNum:
                    <asp:TextBox ID="PatRoomNumTextBox" runat="server" Text='<%# Bind("PatRoomNum") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PatID:
                    <asp:Label CssClass="form-label" ID="PatIDLabel" runat="server" Text='<%# Eval("PatID") %>' />
                    <br />
                    PatName:
                    <asp:Label CssClass="form-label" ID="PatNameLabel" runat="server" Text='<%# Bind("PatName") %>' />
                    <br />
                    PatAge:
                    <asp:Label CssClass="form-label" ID="PatAgeLabel" runat="server" Text='<%# Bind("PatAge") %>' />
                    <br />
                    PatStaying:
                    <asp:Label CssClass="form-label" ID="PatStayingLabel" runat="server" Text='<%# Bind("PatStaying") %>' />
                    <br />
                    PatGender:
                    <asp:Label CssClass="form-label" ID="PatGenderLabel" runat="server" Text='<%# Bind("PatGender") %>' />
                    <br />
                    PatRoomNum:
                    <asp:Label CssClass="form-label" ID="PatRoomNumLabel" runat="server" Text='<%# Bind("PatRoomNum") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        </div>
        <div class="centered-text"><h1>Login Forms &#8594</h1></div>
        <div class="form-text">
            <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    PSWD:
                    <asp:TextBox ID="PSWDTextBox" runat="server" Text='<%# Bind("PSWD") %>' />
                    <br />
                    AL:
                    <asp:TextBox ID="ALTextBox" runat="server" Text='<%# Bind("AL") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    PSWD:
                    <asp:TextBox ID="PSWDTextBox" runat="server" Text='<%# Bind("PSWD") %>' />
                    <br />
                    AL:
                    <asp:TextBox ID="ALTextBox" runat="server" Text='<%# Bind("AL") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label CssClass="form-label" ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    PSWD:
                    <asp:Label CssClass="form-label" ID="PSWDLabel" runat="server" Text='<%# Bind("PSWD") %>' />
                    <br />
                    AL:
                    <asp:Label CssClass="form-label" ID="ALLabel" runat="server" Text='<%# Bind("AL") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>

    </section>
</asp:Content>
