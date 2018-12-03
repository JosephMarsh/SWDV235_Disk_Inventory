<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Cust.aspx.cs" Inherits="DiskInventory.View_Cust" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Customer List" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Delete and Modify Customer Data</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2">
                <asp:Label
                    ID="Label6"
                    runat="server"
                    Text="Borrower Info:"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-9">
                <asp:DetailsView
                    ID="DetailsView1"
                    runat="server"
                    AutoGenerateRows="False"
                    CssClass="table table-bordered table-condensed"
                    DataKeyNames="borrower_ID"
                    DataSourceID="SqlDataSourceViewCust">
                    <Fields>
                        <asp:TemplateField
                            HeaderText="Customer ID"
                            InsertVisible="False"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="borrower_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:Label
                                        ID="Label1"
                                        runat="server"
                                        Text='<%# Eval("borrower_ID") %>'
                                        Font-Size="Large">
                                    </asp:Label>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label1"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("borrower_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Email Address"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="emaill_address">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtEmail"
                                        runat="server"
                                        CssClass="form-control"
                                        MaxLength="100"
                                        Text='<%# Bind("emaill_address") %>'>
                                    </asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorEmail"
                                    runat="server"
                                    ErrorMessage="Email Address is Required"
                                    ControlToValidate="txtEmail"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidatorEmail"
                                    runat="server"
                                    ErrorMessage="Email Format Error"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="txtEmail"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("emaill_address") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="First Name"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="first_name">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtFirstName"
                                        runat="server"
                                        MaxLength="32"
                                        Text='<%# Bind("first_name") %>'
                                        CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorFirst"
                                    runat="server"
                                    ErrorMessage="First Name is Required"
                                    ControlToValidate="txtFirstName"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label3"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("first_name") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Last Name"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="last_name">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtLastName"
                                        runat="server"
                                        MaxLength="32"
                                        Text='<%# Bind("last_name") %>'
                                        CssClass="form-control">
                                    </asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorLast"
                                    runat="server"
                                    ErrorMessage="Last Name is Required"
                                    ControlToValidate="txtLastName"
                                    Text="*"
                                    CssClass="text-danger"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label4"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("last_name") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Phone Number"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="phone_number">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtPhone"
                                        runat="server"
                                        MaxLength="10"
                                        CssClass="form-control"
                                        Text='<%# Bind("phone_number") %>'></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorPhone"
                                    runat="server"
                                    Text="*"
                                    ErrorMessage="A Phone Number is Required."
                                    ControlToValidate="txtPhone"
                                    CssClass="text-danger"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidatorPhone"
                                    runat="server"
                                    Text="*"
                                    ErrorMessage=" Phone Number Format "
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ControlToValidate="txtPhone"
                                    ValidationExpression="^\d{10}$">
                                </asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label5"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("phone_number") %>'>
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
                                    OnClientClick="return confirm('Are you sure you want to delete this user?')"
                                    CommandName="Delete"
                                    CssClass="btn-danger"
                                    OnClick="LinkButton2_Click"
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
                    ID="lblFirstName"
                    runat="server"
                    Text="Email Address:"
                    AssociatedControlID="ddlViewCust"
                    ForeColor="#666666"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList
                    ID="ddlViewCust"
                    runat="server"
                    CssClass="form-control"
                    DataSourceID="SqlDataSourceCustDDL"
                    DataTextField="emaill_address"
                    DataValueField="borrower_ID" 
                    AutoPostBack="True">
                </asp:DropDownList>

            </div>
        </div>

    </fieldset>
    <%--row 2--%>
    <div class="row">
        <div class="col-sm-2">
        </div>
        <div class="col-sm-4">
            <asp:ValidationSummary
                HeaderText="Please correct the following errors:"
                ID="ValidationSummary1"
                runat="server"
                CssClass="text-danger"/>

            <asp:Label ID="lblSuccess"
                runat="server"
                Text=""
                CssClass="text-success">
            </asp:Label>
        </div>
        <div class="col-sm-4">

        </div>

    </div>
    <%--datasource for adding, removing or modifying Artists--%>
    <asp:SqlDataSource
        ID="SqlDataSourceViewCust"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>"
        DeleteCommand="DELETE FROM [Borrower] WHERE [borrower_ID] = @borrower_ID"
        InsertCommand="INSERT INTO [Borrower] ([emaill_address], [first_name], [last_name], 
                        [phone_number]) VALUES (@emaill_address, @first_name, @last_name, @phone_number)"
        SelectCommand="SELECT * FROM [Borrower] WHERE ([borrower_ID] = @borrower_ID)"
        UpdateCommand="UPDATE [Borrower] SET [emaill_address] = @emaill_address, 
                        [first_name] = @first_name, [last_name] = @last_name, [phone_number] = @phone_number WHERE 
                        [borrower_ID] = @borrower_ID">
        <DeleteParameters>
            <asp:Parameter Name="borrower_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emaill_address" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="phone_number" Type="Int64" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter
                ControlID="ddlViewCust"
                DefaultValue="1"
                Name="borrower_ID"
                PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="emaill_address" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="phone_number" Type="Int64" />
            <asp:Parameter Name="borrower_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource
        ID="SqlDataSourceCustDDL"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>"
        SelectCommand="SELECT [emaill_address], [borrower_ID] FROM [Borrower]"></asp:SqlDataSource>

</asp:Content>

