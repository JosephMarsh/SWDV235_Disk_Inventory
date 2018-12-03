<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="DiskInventory._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Home" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Welcome!</legend>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">
                <p class="text-primary">
                    Welcome To My Disk Inventory Utility!  Use the Navigation bar above to select the tool you require.
                </p>
                <p class="text-primary">
                    Please let me know if there are any improvements or functions you'd like to see in the site.
                </p>
                <br />
                <p class="text-primary">Thanks and enjoy!</p>
            </div>

        </div>
    </fieldset>

</asp:Content>


