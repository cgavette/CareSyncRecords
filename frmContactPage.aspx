<%@ Page Title="" Language="C#" MasterPageFile="~/TemplateMasterPage.Master" AutoEventWireup="true" CodeBehind="frmContactPage.aspx.cs" Inherits="CareSyncRecords.frmExtraPage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- head/meta stuff up here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contact">
        <h1>Get in touch
        </h1>
        <p>
            <asp:Label ID="lblContactFormLabel" runat="server" Text="Connect using form below: (*)Required"></asp:Label>
            <br />
            *Name:
            <asp:TextBox ID="txtComplaintName" runat="server"></asp:TextBox>
            <br />
            *Email:
            <asp:TextBox ID="txtComplaintEmail" runat="server"></asp:TextBox>
            <br />
            *Please describe the issue below:
            <br />
            <asp:TextBox ID="txtComplaintText" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            In the event if real-time support is needed, what days would you be available? 
            <asp:Calendar ID="calComplaintCaledner" runat="server" CssClass="ContactCalender"></asp:Calendar>
            <br />
            Screenchot or video of the issue
            <asp:FileUpload ID="fileComplaintFile" runat="server" />
            <br />
            Click if you are an active member (leave unchecked if using a guest account):
            <asp:CheckBox ID="chkComplaintCheckBox" runat="server" CssClass="ContactCheckbox" />
            <br />
            <br />
            <asp:Button CssClass="CancelButton" ID="btnCancelButton" runat="server" Text="Cancel" OnClick="btnCancelButton_Click" />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="addBarButton" OnClick="SubmitButton_Click" />
            <br />

        </p>
        <h2>Or get in touch via 
            <a href="mailto:cgavette1@email.davenport.edu">Email</a>
        </h2>
    </div>
</asp:Content>
