<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Checkout" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <div class="row">
        <%--row 1--%>
        <div class="col-sm-2 text-right ">
            <%--colomn 1--%>
            <asp:Label ID="lblFirstName" runat="server" Text="customer:"></asp:Label>
        </div>
        <div class="col-sm-4">
            <%--colomn 2 Main--%>
            <asp:DropDownList ID="ddlFirstName" runat="server"></asp:DropDownList>
        </div>
        <div class="col-sm-2 text-right">
            <%--colomn 3 devider--%>
                    Disk Name:
        </div>
        <div class="col-sm-4">
            <%--colomn 4 Validation--%>
                    3
        </div>
    </div>

    <div class="row">
        <%--row 2--%>
        <div class="col-sm-2 text-right ">
            <%--colomn 1--%>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
        </div>
        <div class="col-sm-4">
            <%--colomn 2 Main--%>
                    1  
        </div>
        <div class="col-sm-2 text-right">
            <%--colomn 3 devider--%>
            <asp:Label ID="lblDiskType" runat="server" Text="DiskType:"></asp:Label>
        </div>
        <div class="col-sm-4">
            <%--colomn 4 Validation--%>
                    3
        </div>
    </div>
</asp:Content>

