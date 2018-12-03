<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Disk.aspx.cs" Inherits="DiskInventory.Add_Disk" %>

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
                    placeholder="mm/dd/yyyy"
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
                    CssClass="form-control" 
                    DataSourceID="SqlDataSourceDiskType" 
                    DataTextField="disk_type_description" 
                    DataValueField="disk_type_ID">
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 nothing needed--%>
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
                    CssClass="form-control" 
                    DataSourceID="SqlDataSourceStatus"
                    DataTextField="disk_description" 
                    DataValueField="status_code_ID">
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 noting needed--%>
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
                    CssClass="form-control" 
                    DataSourceID="SqlDataSourceGenre" 
                    DataTextField="genre_name" 
                    DataValueField="genre_ID">
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 nothing needed--%>
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
    <%-- Data Sources --%>
    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        DeleteCommand="DELETE FROM [Disk] WHERE [disk_ID] = @disk_ID" 
        InsertCommand="INSERT INTO [Disk] ([disk_name], [rel_date], [disk_type_ID], [status_code_ID], 
            [genre_ID]) VALUES (@disk_name, @rel_date, @disk_type_ID, @status_code_ID, @genre_ID)" 
        SelectCommand="SELECT * FROM [Disk]" 
        UpdateCommand="UPDATE [Disk] SET [disk_name] = @disk_name, [rel_date] = @rel_date, 
            [disk_type_ID] = @disk_type_ID, [status_code_ID] = @status_code_ID, 
            [genre_ID] = @genre_ID WHERE [disk_ID] = @disk_ID">
        <DeleteParameters>
            <asp:Parameter Name="disk_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="disk_name" Type="String" />
            <asp:Parameter Name="rel_date" Type="DateTime" />
            <asp:Parameter Name="disk_type_ID" Type="String" />
            <asp:Parameter Name="status_code_ID" Type="Int32" />
            <asp:Parameter Name="genre_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="disk_name" Type="String" />
            <asp:Parameter Name="rel_date" Type="DateTime" />
            <asp:Parameter Name="disk_type_ID" Type="String" />
            <asp:Parameter Name="status_code_ID" Type="Int32" />
            <asp:Parameter Name="genre_ID" Type="Int32" />
            <asp:Parameter Name="disk_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>                    
    <asp:SqlDataSource 
        ID="SqlDataSourceDiskType" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        SelectCommand="SELECT [disk_type_description], [disk_type_ID] FROM [Disk_Type]">
    </asp:SqlDataSource>                    
    <asp:SqlDataSource 
        ID="SqlDataSourceStatus" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        SelectCommand="SELECT [disk_description], [status_code_ID] FROM [Disk_Status]">        
    </asp:SqlDataSource>                    
    <asp:SqlDataSource 
        ID="SqlDataSourceGenre" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        SelectCommand="SELECT [genre_name], [genre_ID] FROM [Genre]">
    </asp:SqlDataSource>


</asp:Content>

