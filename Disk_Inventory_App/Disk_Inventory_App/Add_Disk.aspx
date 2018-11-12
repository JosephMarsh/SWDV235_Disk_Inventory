<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Disk.aspx.cs" Inherits="Add_Disk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Add New Disk to Inventory" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
        <fieldset>
        <legend class="label-info">Enter New Disk Data</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblDiskName"
                    runat="server"
                    Text="Disk Name:"
                    AssociatedControlID="txtDiskName"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtDiskName"
                    runat="server"
                    TextMode="SingleLine"
                    CssClass="form-control"
                    placeholder="Name"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorName"
                    runat="server"
                    ErrorMessage="Required"
                    ControlToValidate="txtDiskName"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <%--row 2--%>
        <div class="row">

            <div class="col-sm-2 text-right">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblRelDate"
                    runat="server"
                    Text="Date Released:"
                    AssociatedControlID="txtRelDate"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4">
                <%--colomn 2 main--%>
                <asp:TextBox
                    ID="txtRelDate"
                    runat="server"
                    TextMode="Date"
                    CssClass="form-control">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorRelDate"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="txtRelDate"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <%--row 3--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblType"
                    runat="server"
                    Text="Disk Type:"
                    AssociatedControlID="ddlType"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList 
                    ID="ddlType" 
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem Value="BD">Blu-Ray - Video</asp:ListItem>
                    <asp:ListItem Value="BD_0">Blu-Ray - Other Media</asp:ListItem>
                    <asp:ListItem Value="BDA">Blu-Ray - Audio Only</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorType"
                    runat="server"
                    ErrorMessage="Required"
                    ControlToValidate="ddlType"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <%--row 4--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblStatus"
                    runat="server"
                    Text="Disk Status:"
                    AssociatedControlID="ddlStatus"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList 
                    ID="ddlStatus" 
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem Value="1">Pre-Release</asp:ListItem>
                    <asp:ListItem Value="2">In Stock</asp:ListItem>
                    <asp:ListItem Value="3">Checked Out</asp:ListItem>
                    <asp:ListItem Value="4">Missing</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorStatus"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="ddlStatus"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <%--row 5--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblGenre"
                    runat="server"
                    Text="Disk Genre:"
                    AssociatedControlID="ddlGenre"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList 
                    ID="ddlGenre" 
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem Value="1">Rock</asp:ListItem>
                    <asp:ListItem Value="2">Country</asp:ListItem>
                    <asp:ListItem Value="3">Rap</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorGenre"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="ddlGenre"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
    </fieldset>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4" >
            <asp:Button 
                ID="btnAdd" 
                runat="server" 
                Text="Add Disk" 
                CssClass="btn-primary" OnClick="btnAdd_Click" />
            <asp:Button 
                ID="btnReset" 
                runat="server" 
                Text="Reset" 
                CssClass="btn-warning" 
                CausesValidation="false"
                OnClick="btnReset_Click" />
        </div>
        <div class="col-sm-4">
            <asp:Label ID="lblSuccess" 
                runat="server" 
                Text=""
                CssClass="text-success">
            </asp:Label>
        </div>

    </div>
</asp:Content>

