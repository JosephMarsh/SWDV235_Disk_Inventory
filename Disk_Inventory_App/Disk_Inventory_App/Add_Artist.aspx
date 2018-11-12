<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Artist.aspx.cs" Inherits="Add_Artist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Add New Customers" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Enter New Artist Data</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblFirstName"
                    runat="server"
                    Text="First Name:"
                    AssociatedControlID="txtFirstName"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtFirstName"
                    runat="server"
                    TextMode="SingleLine"
                    CssClass="form-control"
                    placeholder="Nulls Allowed"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <%--no validation Required--%>
            </div>
        </div>
        <br />
        <%--row 2--%>
        <div class="row">
            <div class="col-sm-2 text-right">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblLastName"
                    runat="server"
                    Text="Last Name:"
                    AssociatedControlID="txtLastName"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4">
                <%--colomn 2 main--%>
                <asp:TextBox
                    ID="txtLastName"
                    runat="server"
                    TextMode="SingleLine"
                    CssClass="form-control"
                    placeholder="Nulls Allowed">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <%--no validation Required--%>
            </div>
        </div>
        <br />
        <%--row 3--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblGroup"
                    runat="server"
                    Text="Group Name:"
                    AssociatedControlID="txtGroup"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtGroup"
                    runat="server"
                    TextMode="SingleLine"
                    CssClass="form-control"
                    placeholder="Nulls Allowed">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <%--no validation Required--%>
            </div>
        </div>
        <br />
        <%--row 4--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblType"
                    runat="server"
                    Text="Artist Type:"  <%--corrected lable 11/12/18--%>
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
                    <asp:ListItem Value="M">Music Artist</asp:ListItem>
                    <asp:ListItem Value="VA">Video Actor</asp:ListItem>
                    <asp:ListItem Value="VP">Video Producer</asp:ListItem>
                    <asp:ListItem Value="VD">Video Director</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorType"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="ddlType"
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
                Text="Add Artist" 
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

