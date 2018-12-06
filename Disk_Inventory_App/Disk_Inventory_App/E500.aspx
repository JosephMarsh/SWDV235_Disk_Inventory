<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="E500.aspx.cs" Inherits="DiskInventory.E500" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Ooops" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class=" label-danger">An Error Has Occured</legend>
        <%--row 1--%>
        <div class="row">
            <div class=" col-sm-1"></div>
            <div class="col-sm-4">
                <div class="alert alert-danger">
                    <asp:Label
                        ID="lblError"
                        Text="An internal Server Error Occured."
                        runat="server"
                        Font-Bold="True"           
                        Font-Size="XX-Large">
                    </asp:Label>
                </div>
            </div>
            <div class="col-sm-6">
                <img src="Img/vaders-big-shoulders-in-revenge-of-the-sith.gif" class="img-responsive img-rounded" alt="Star wars imperial walker" />
            </div>
        </div>
        <%--row 2--%>
        <div class="row">
            <div class=" col-sm-1"></div>
            <div class="col-sm-4">
                <asp:Button
                    ID="btnReturn"
                    runat="server"
                    Text="Return to Home Page"
                    PostBackUrl="~/Default.aspx"
                    CssClass="btn btn-danger" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <asp:Label ID="lblErrorNo" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-lg-8">
                <h2 class="text-center">Details:</h2>
                <asp:Label ID="lblErrorDetials" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </fieldset>
</asp:Content>

