<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmEdit.aspx.cs" Inherits="CareSyncRecords.frmEditDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- head/meta stuff up here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="PatInfoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [tblPatInfo]" ConflictDetection="CompareAllValues"
        DeleteCommand="DELETE FROM [tblPatInfo] WHERE [PatID] = ? AND (([PatName] = ?) OR ([PatName] IS NULL AND ? IS NULL)) AND (([PatAge] = ?) OR ([PatAge] IS NULL AND ? IS NULL)) AND (([PatStaying] = ?) OR ([PatStaying] IS NULL AND ? IS NULL)) AND (([PatGender] = ?) OR ([PatGender] IS NULL AND ? IS NULL)) AND (([PatRoomNum] = ?) OR ([PatRoomNum] IS NULL AND ? IS NULL))"
        InsertCommand="INSERT INTO [tblPatInfo] ([PatID], [PatName], [PatAge], [PatStaying], [PatGender], [PatRoomNum]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}"
        UpdateCommand="UPDATE [tblPatInfo] SET [PatName] = ?, [PatAge] = ?, [PatStaying] = ?, [PatGender] = ?, [PatRoomNum] = ? WHERE [PatID] = ? AND (([PatName] = ?) OR ([PatName] IS NULL AND ? IS NULL)) AND (([PatAge] = ?) OR ([PatAge] IS NULL AND ? IS NULL)) AND (([PatStaying] = ?) OR ([PatStaying] IS NULL AND ? IS NULL)) AND (([PatGender] = ?) OR ([PatGender] IS NULL AND ? IS NULL)) AND (([PatRoomNum] = ?) OR ([PatRoomNum] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PatID" Type="Int32" />
            <asp:Parameter Name="original_PatName" Type="String" />
            <asp:Parameter Name="original_PatName" Type="String" />
            <asp:Parameter Name="original_PatAge" Type="String" />
            <asp:Parameter Name="original_PatAge" Type="String" />
            <asp:Parameter Name="original_PatStaying" Type="String" />
            <asp:Parameter Name="original_PatStaying" Type="String" />
            <asp:Parameter Name="original_PatGender" Type="String" />
            <asp:Parameter Name="original_PatGender" Type="String" />
            <asp:Parameter Name="original_PatRoomNum" Type="String" />
            <asp:Parameter Name="original_PatRoomNum" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatID" Type="Int32" />
            <asp:Parameter Name="PatName" Type="String" />
            <asp:Parameter Name="PatAge" Type="String" />
            <asp:Parameter Name="PatStaying" Type="String" />
            <asp:Parameter Name="PatGender" Type="String" />
            <asp:Parameter Name="PatRoomNum" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatName" Type="String" />
            <asp:Parameter Name="PatAge" Type="String" />
            <asp:Parameter Name="PatStaying" Type="String" />
            <asp:Parameter Name="PatGender" Type="String" />
            <asp:Parameter Name="PatRoomNum" Type="String" />
            <asp:Parameter Name="original_PatID" Type="Int32" />
            <asp:Parameter Name="original_PatName" Type="String" />
            <asp:Parameter Name="original_PatName" Type="String" />
            <asp:Parameter Name="original_PatAge" Type="String" />
            <asp:Parameter Name="original_PatAge" Type="String" />
            <asp:Parameter Name="original_PatStaying" Type="String" />
            <asp:Parameter Name="original_PatStaying" Type="String" />
            <asp:Parameter Name="original_PatGender" Type="String" />
            <asp:Parameter Name="original_PatGender" Type="String" />
            <asp:Parameter Name="original_PatRoomNum" Type="String" />
            <asp:Parameter Name="original_PatRoomNum" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="addBar">
        <asp:Label ID="lblPatName" runat="server" Text="Patient Name:"></asp:Label>
        <asp:TextBox ID="txtPatName" runat="server"></asp:TextBox>
        <asp:Label ID="lblPatAge" runat="server" Text="Patient Age:"></asp:Label>
        <asp:TextBox ID="txtPatAge" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPatStaying" runat="server" Text="Is Patient staying:"></asp:Label>
        <asp:TextBox ID="txtPatStaying" runat="server"></asp:TextBox>
        <asp:Label ID="lblPatGender" runat="server" Text="Patient Gender:"></asp:Label>
        <asp:TextBox ID="txtPatGender" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPatRoomNum" runat="server" Text="Patient Room Number:"></asp:Label>
        <asp:TextBox ID="txtPatRoomNum" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblAdd" runat="server" Text="Click to add:"></asp:Label>
        <asp:Button CssClass="addBarButton" ID="btnAddRecord" runat="server" Text="Add" OnClick="btnAddRecord_Click" />
        <asp:Label ID="lblStatusBar" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <div class="datatable">
        <asp:GridView class="tableCenter" runat="server" AutoGenerateColumns="False" DataKeyNames="PatID" DataSourceID="PatInfoDataSource" ID="PatInfoTable">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
