<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmView.aspx.cs" Inherits="CareSyncRecords.frmView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- head/meta stuff up here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="PatInfoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblPatInfo]"></asp:SqlDataSource>

    <asp:Label class="SearchLabel" ID="lblSearchPatient" runat="server" Text="Search criteria:"></asp:Label>
    <asp:TextBox class="SearchTextBox" ID="txtSearchPatients" runat="server"></asp:TextBox>
    <asp:Button class="SearchButton" ID="btnSearchPatients" runat="server" Text="Search" OnClick="btnSearchPatients_Click" />
    <br />
    <br />
    <div class="datatable">
        <asp:GridView class="center" runat="server" AutoGenerateColumns="False" DataKeyNames="PatID" DataSourceID="PatInfoDataSource">
            <Columns>
                <asp:BoundField DataField="PatID" HeaderText="PatID" InsertVisible="False" ReadOnly="True" SortExpression="PatID" />
                <asp:BoundField DataField="PatName" HeaderText="PatName" SortExpression="PatName" />
                <asp:BoundField DataField="PatAge" HeaderText="PatAge" SortExpression="PatAge" />
                <asp:BoundField DataField="PatStaying" HeaderText="PatStaying" SortExpression="PatStaying" />
                <asp:BoundField DataField="PatGender" HeaderText="PatGender" SortExpression="PatGender" />
                <asp:BoundField DataField="PatRoomNum" HeaderText="PatRoomNum" SortExpression="PatRoomNum" />
            </Columns>
        </asp:GridView>
    </div>




</asp:Content>
