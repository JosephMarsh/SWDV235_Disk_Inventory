<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Cust.aspx.cs" Inherits="DiskInventory.Add_Cust" %>

<%-- This pages adds borrowers for the Disk Inventory Applicaiont and was written by Joseph Marsh --%>

<%-- Added SQL Connectivity and exception handeling 11/17/18 JEM --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title" class="text-center">
        <asp:Label 
            ID="lblTitle" 
            runat="server" 
            Text="Add New Customers" 
            Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Enter New User Data</legend>
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
                    placeholder="First"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorFirst"
                    runat="server"
                    ErrorMessage="Required"
                    ControlToValidate="txtFirstName"
                    CssClass="text-danger"
                    Display="Dynamic"></asp:RequiredFieldValidator>
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
                    placeholder="Last">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorLast"
                    runat="server"
                    ErrorMessage="Required"
                    ControlToValidate="txtLastName"
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
                    ID="lblEmail"
                    runat="server"
                    Text="Email Address:"
                    AssociatedControlID="txtEmail"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    TextMode="Email"
                    CssClass="form-control"
                    placeholder="Someone@something.com">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorEmail"
                    runat="server"
                    ErrorMessage="Required"
                    ControlToValidate="txtEmail"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidatorEmail"
                    runat="server"
                    ErrorMessage="Email Format Error"
                    CssClass="text-danger"
                    Display="Dynamic"
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <%--row 4--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblEmail2"
                    runat="server"
                    Text="Retype Email:"
                    AssociatedControlID="txtEmail"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtEmail2"
                    runat="server"
                    TextMode="Email"
                    Text='<%# Bind("emaill_address") %>'
                    CssClass="form-control"
                    placeholder="Someone@something.com">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorEmail2"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="txtEmail2"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidatorEmail2"
                    runat="server"
                    ErrorMessage=" Email Format Error "
                    CssClass="text-danger"
                    Display="Dynamic"
                    ControlToValidate="txtEmail2"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                <asp:CompareValidator
                    ID="CompareValidatorEmail"
                    runat="server"
                    ErrorMessage=" Addresses Must Match "
                    ControlToValidate="txtEmail2"
                    ControlToCompare="txtEmail"
                    Type="String"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:CompareValidator>
            </div>
        </div>
        <br />
        <%--row 5--%>
        <div class="row">
            <div class="col-sm-2 text-right ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblPhone"
                    runat="server"
                    Text="Phone Number:"
                    AssociatedControlID="txtPhone"

                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:TextBox
                    ID="txtPhone"
                    runat="server"
                    TextMode="Number"
                    Text='<%# Bind("first_name") %>'
                    CssClass="form-control" 
                    MaxLength="10"
                    placeholder="5559991234" >
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <%--colomn 3 Validation--%>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage=" Required "
                    ControlToValidate="txtPhone"
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidatorPhone" 
                    runat="server" 
                    ErrorMessage=" Phone Number Format "
                    CssClass="text-danger"
                    Display="Dynamic" 
                    ControlToValidate="txtPhone" 
                    ValidationExpression="^\d{10}$">
                </asp:RegularExpressionValidator>
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
                Text="Add User"

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
    <%--data sources--%>
    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        DeleteCommand="DELETE FROM [Borrower] WHERE [borrower_ID] = @borrower_ID" 
        InsertCommand="INSERT INTO [Borrower] ([emaill_address], [first_name], 
            [last_name], [phone_number]) 
            VALUES (@emaill_address, @first_name, @last_name, @phone_number)" 
        SelectCommand="SELECT * FROM [Borrower]" 
        UpdateCommand="UPDATE [Borrower] SET [emaill_address] = @emaill_address, 
            [first_name] = @first_name, [last_name] = @last_name, 
            [phone_number] = @phone_number WHERE [borrower_ID] = @borrower_ID">
        <DeleteParameters>
            <asp:Parameter Name="borrower_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emaill_address" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="phone_number" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emaill_address" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="phone_number" Type="Int64" />
            <asp:Parameter Name="borrower_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

