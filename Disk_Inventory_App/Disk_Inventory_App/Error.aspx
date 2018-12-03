<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="DiskInventory.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
            <div class =" col-sm-2"></div>
            <div class="col-sm-4">
                <div class="alert alert-danger">
                    <asp:Label
                        ID="lblError" 
                        runat="server"
                        Font-Bold="True"           
                        Font-Size="XX-Large">
                    </asp:Label>
                </div>
            </div>
        </div>
        <%--row 2--%>
        <div class="row">
            <div class =" col-sm-2"></div>
            <div class="col-sm-4">
                <asp:Button 
                    ID="btnReturn" 
                    runat="server" 
                    Text="Return to Home Page"
                    PostBackUrl="~/Default.aspx" 
                    CssClass="btn btn-danger" />
            </div>
        </div>
    
    </fieldset>


</asp:Content>

