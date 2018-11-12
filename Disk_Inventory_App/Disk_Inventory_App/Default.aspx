<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Home" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <p class="text-center text-primary" >
        Welcome To My Disk Inventory Utility!  Use the Navigation bar above to select the tool you require.  
        Please note that some feaures are Still Under Construction.
    </p>

</asp:Content>


