<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Artist.aspx.cs" Inherits="DiskInventory.Add_Artist" %>

<%-- This pages adds Artists for the Disk Inventory Applicaiont and was written by Joseph Marsh --%>

<%-- Added SQL Connectivity and exception handeling 11/17/18 JEM --%>

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
                    Text="Artist Type:"  
                    AssociatedControlID="ddlType"
                    ForeColor="#666666"
                    Font-Size="Large">
                    <%--corrected lable 11/12/18--%>
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList 
                    ID="ddlType" 
                    runat="server"
                    CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="artist_type_description" DataValueField="artist_type_ID">
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
                CssClass="btn-primary" 
                OnClick="btnAdd_Click" />
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
    <%--Database Sources--%>
    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        DeleteCommand="DELETE FROM [Artist] WHERE [artist_ID] = @artist_ID" 
        InsertCommand="INSERT INTO [Artist] ([first_name], [last_name], [group_name], 
            [artist_type_ID]) VALUES (@first_name, @last_name, @group_name, @artist_type_ID)" 
        SelectCommand="SELECT * FROM [Artist]" 
        UpdateCommand="UPDATE [Artist] SET [first_name] = @first_name, 
            [last_name] = @last_name, [group_name] = @group_name, 
            [artist_type_ID] = @artist_type_ID WHERE [artist_ID] = @artist_ID">
        <DeleteParameters>
            <asp:Parameter Name="artist_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="group_name" Type="String" />
            <asp:Parameter Name="artist_type_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="group_name" Type="String" />
            <asp:Parameter Name="artist_type_ID" Type="String" />
            <asp:Parameter Name="artist_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="SqlDataSource2" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        SelectCommand="SELECT * FROM [Artist_Type]">
    </asp:SqlDataSource>
</asp:Content>

