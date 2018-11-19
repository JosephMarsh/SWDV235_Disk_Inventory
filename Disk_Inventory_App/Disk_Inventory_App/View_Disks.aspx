<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Disks.aspx.cs" Inherits="View_Disks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Inventory" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Delete and Modify Disk Data</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2">
                <asp:Label
                    ID="Label6"
                    runat="server"
                    Text="Disk Info:"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-9">
                <asp:DetailsView
                    ID="DetailsView1"
                    runat="server"
                    CssClass="table table-bordered table-condensed"
                    AutoGenerateRows="False"
                    DataKeyNames="disk_ID"
                    DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:TemplateField
                            HeaderText="Disk Inv. Number"
                            InsertVisible="False"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="disk_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:Label
                                        ID="lblDiskNumber"
                                        Font-Size="Large"
                                        runat="server"
                                        Text='<%# Eval("disk_ID") %>'>
                                    </asp:Label>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="lblDiskID"
                                    Font-Size="Large"
                                    runat="server"
                                    Text='<%# Bind("disk_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Disk Name"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="disk_name">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtDiskName"
                                        CssClass="form-control"
                                        runat="server"
                                        Text='<%# Bind("disk_name") %>'>
                                    </asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1"
                                    runat="server"
                                    ErrorMessage="Disk Name is Required"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic" 
                                    ControlToValidate="txtDiskName">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label2"
                                    Font-Size="Large"
                                    runat="server"
                                    Text='<%# Bind("disk_name") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Release Date"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="rel_date">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtRelDate"
                                        runat="server"
                                        TextMode="DateTime"
                                        CssClass="form-control"
                                        Text='<%# Bind("rel_date") %>'>
                                    </asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator1"
                                    runat="server"
                                    ErrorMessage="Date time Format: mm/dd/yyyy hh:mm:ss AM|PM"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="txtRelDate"                                    
                                    ValidationExpression="^(?=\d)(?:(?:(?:(?:(?:0?[13578]|1[02])(\/|-|\.)31)\1|(?:(?:0?[1,3-9]|1[0-2])(\/|-|\.)(?:29|30)\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})|(?:0?2(\/|-|\.)29\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))|(?:(?:0?[1-9])|(?:1[0-2]))(\/|-|\.)(?:0?[1-9]|1\d|2[0-8])\4(?:(?:1[6-9]|[2-9]\d)?\d{2}))($|\ (?=\d)))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$" >

                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorDateTime"
                                    runat="server"
                                    ErrorMessage="Release Date is Required"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic" 
                                    ControlToValidate="txtRelDate">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label3"
                                    Font-Size="Large"
                                    runat="server"
                                    Text='<%# Bind("rel_date") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Disk Type"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="disk_type_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:DropDownList
                                        ID="ddlDiskType"
                                        CssClass="form-control"
                                        runat="server"
                                        SelectedValue='<%# Bind("disk_type_ID") %>'
                                        DataSourceID="SqlDataSource4"
                                        DataTextField="disk_type_description"
                                        DataValueField="disk_type_ID">
                                    </asp:DropDownList>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label4"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("disk_type_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Disk Status"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="status_code_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:DropDownList
                                        ID="ddlStatusCode"
                                        SelectedValue='<%# Bind("status_code_ID") %>'
                                        runat="server"
                                        CssClass="form-control"
                                        DataSourceID="SqlDataSource3"
                                        DataTextField="disk_description"
                                        DataValueField="status_code_ID">
                                    </asp:DropDownList>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label5"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("status_code_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Genre"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="genre_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:DropDownList
                                        ID="ddlGenre"
                                        CssClass="form-control"
                                        runat="server"
                                        DataSourceID="SqlDataSource2"
                                        DataTextField="genre_name"
                                        DataValueField="genre_ID"
                                        SelectedValue='<%# Bind("genre_ID") %>'>
                                    </asp:DropDownList>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label6"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("genre_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button
                                    ID="LinkButton1"
                                    runat="server"
                                    CausesValidation="True"
                                    CommandName="Update"
                                    CssClass="btn-primary"
                                    Text="Change"></asp:Button>
                                <asp:Button
                                    ID="LinkButton2"
                                    runat="server"
                                    CausesValidation="False"
                                    CommandName="Cancel"
                                    CssClass="btn-warning"
                                    Text="Cancel"></asp:Button>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button
                                    ID="LinkButton1"
                                    runat="server"
                                    CausesValidation="False"
                                    CommandName="Edit"
                                    CssClass="btn-primary"
                                    Text="Edit"></asp:Button>
                                <asp:Button
                                    ID="LinkButton2"
                                    runat="server"
                                    CausesValidation="False"
                                    OnClientClick="return confirm('Are you sure you want to delete this Disk from Inventory?')"
                                    CommandName="Delete"
                                    CssClass="btn-danger"
                                    Text="Delete"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>



                <br />

            </div>
            <%--Error validation--%>
        </div>
        <%--row 2--%>
        <div class="row">
            <div class="col-sm-2">
                <asp:Label
                    ID="lblDiskSelect"
                    runat="server"
                    Text="Select Disk:"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList
                    ID="ddlViewDisk"
                    runat="server"
                    CssClass="form-control"
                    AutoPostBack="True"
                    DataSourceID="DiskDDL"
                    DataTextField="disk_name"
                    DataValueField="disk_ID">
                </asp:DropDownList>

            </div>
        </div>
    </fieldset>
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-4">
                <asp:ValidationSummary
                    HeaderText="Please correct the following errors:"
                    ID="ValidationSummary1"
                    runat="server"
                    CssClass="text-danger" />
                <asp:Label ID="lblSuccess"
                    runat="server"
                    Text=""
                    CssClass="text-success">
                </asp:Label>
            </div>
            <div class="col-sm-4">

            </div>

        </div>


    <%-- SQL Data Sources  --%>
    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>"
        SelectCommand="SELECT * FROM [Disk] WHERE ([disk_ID] = @disk_ID)" 
        DeleteCommand="DELETE FROM [Disk] WHERE [disk_ID] = @disk_ID" 
        InsertCommand="INSERT INTO [Disk] ([disk_name], [rel_date], [disk_type_ID], 
            [status_code_ID], [genre_ID]) 
        VALUES (@disk_name, @rel_date, @disk_type_ID, @status_code_ID, @genre_ID)" 
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
        <SelectParameters>
            <asp:ControlParameter 
                ControlID="ddlViewDisk" 
                Name="disk_ID" 
                PropertyName="SelectedValue" 
                Type="Int32" 
                DefaultValue="15" />
        </SelectParameters>
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
        runat="server"
        ID="SqlDataSource2"
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        SelectCommand="SELECT [genre_name], [genre_ID] FROM [Genre]"></asp:SqlDataSource>
    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSource3"
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        SelectCommand="SELECT [disk_description], [status_code_ID] FROM [Disk_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSource4"
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        SelectCommand="SELECT [disk_type_description], [disk_type_ID] FROM [Disk_Type]"></asp:SqlDataSource>
    <asp:SqlDataSource 
        runat="server" 
        ID="DiskDDL" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        SelectCommand="SELECT [disk_name], [disk_ID] FROM [Disk] ORDER BY [disk_name], [disk_ID]"></asp:SqlDataSource>


</asp:Content>

