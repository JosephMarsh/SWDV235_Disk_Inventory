<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="DiskInventory.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label 
            ID="lblTitle" 
            runat="server" 
            Text="Disk Checkout" 
            Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
        <h3 class="info">
            Type in list box for faster selections.
        </h3>
    <fieldset>

        <legend class="label-info">Disk Checkout Menue</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2 text-center ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblName"
                    runat="server"
                    Text="Borrower:"
                    AssociatedControlID="lbxCustomer"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-3">
                <%--colomn 1 Main--%>
                <asp:ListBox 
                    ID="lbxCustomer" 
                    runat="server" 
                    DataSourceID="SqlDataSource1" 
                    DataTextField="friendly_Name" 
                    DataValueField="borrower_ID"
                    CssClass="form-control"
                    ToolTip="Select person borrowing the disk."
                    Font-Size="Large"
                    SelectionMode="Single">
                </asp:ListBox>                               
            </div>            
            
            <div class="col-sm-1 text-center">
                <%--colomn 2 labels--%>
                <asp:Label
                    ID="lblDisk"
                    runat="server"
                    Text="Disk:"
                    AssociatedControlID="lbxDisk"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>

            <div class="col-sm-6">
                <%--colomn 2 Main--%>
                <asp:ListBox
                    ID="lbxDisk"
                    runat="server"
                    CssClass="form-control"
                    Font-Size="Large"
                    SelectionMode="Single" 
                    AutoPostBack="true"
                    DataSourceID="SqlDataSourceDisk" 
                    DataTextField="disk_name"
                    ToolTip="Select the disk you wish to checkout."
                    DataValueField="disk_ID">
                </asp:ListBox>                
            </div>
        </div>
        <br />
        <%--row 2--%>
        <div class="row">
            <div class="col-sm-2 text-center ">

            </div>

            <div class="col-sm-3">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorBorrower" 
                    runat="server" 
                    CssClass="text-danger"
                    ErrorMessage="Borrower is Required" 
                    ControlToValidate="lbxCustomer">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-sm-1 text-center">
                
            </div>

            <div class="col-sm-5">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorDisk" 
                    runat="server" 
                    CssClass="text-danger"
                    ErrorMessage="Disk is Required" 
                    ControlToValidate="lbxDisk">
                </asp:RequiredFieldValidator>
            </div>

        </div>

           <br />


    </fieldset>
    <div class="row">
        <div class="col-sm-2">

        </div>
        <div class="col-sm-4" >
            <asp:Button 
                ID="btnCheckout" 
                runat="server"
                CssClass="btn-primary"
                Text="Checkout"
                AutoPostBack="true"
                OnClick="btnCheckout_Click" />
            <asp:Button 
                ID="btnReset"
                runat="server" 
                CssClass="btn-warning"
                CausesValidation="false"
                Text="Reset" OnClick="btnReset_Click" />
        </div>
        <div class =" col-sm-1">

        </div>
        <div class="col-sm-6">
            <asp:Label ID="lblSuccess" 
                runat="server" 
                Text=""
                CssClass="text-success">
            </asp:Label>
        </div>

    </div>
<%--    data sources --%>
    <asp:SqlDataSource 
        runat="server" 
        ID="SqlDataSource1" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        SelectCommand="SELECT [borrower_ID], [friendly_Name] 
            FROM [View_Friendly_borrowers]
            ORDER BY [friendly_Name]">
    </asp:SqlDataSource>
        <%--returns all videos with a status of 2 (in stock)--%>
    <asp:SqlDataSource 
        runat="server" 
        ID="SqlDataSourceDisk" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        SelectCommand="SELECT [disk_name], [disk_ID] 
            FROM [Disk] 
            WHERE [status_code_ID] = 2 
            ORDER BY [disk_name]">
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="SqlDataSourceUpdateRentalLog" 
        runat="server" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        DeleteCommand="DELETE FROM [Rental_Log] WHERE [disk_ID] = @disk_ID 
        AND [borrower_ID] = @borrower_ID 
        AND [check_out_date] = @check_out_date" 
        InsertCommand="INSERT INTO [Rental_Log] ([disk_ID], [borrower_ID], [check_out_date]) 
        VALUES (@disk_ID, @borrower_ID, @check_out_date)" 
        SelectCommand="SELECT [disk_ID], [borrower_ID], [check_out_date] FROM [Rental_Log]">
        <DeleteParameters>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="borrower_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="check_out_date" Type="DateTime"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="borrower_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="check_out_date" Type="DateTime"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="SqlDataSource2" 
        runat="server" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        DeleteCommand="DELETE FROM [Disk] WHERE [disk_ID] = @disk_ID" 
        InsertCommand="INSERT INTO [Disk] ([disk_name], [rel_date], [disk_type_ID], [status_code_ID], [genre_ID]) VALUES (@disk_name, @rel_date, @disk_type_ID, @status_code_ID, @genre_ID)" 
        SelectCommand="SELECT * FROM [Disk]" 
        UpdateCommand="UPDATE [Disk] SET [status_code_ID] = @status_code_ID
            WHERE [disk_ID] = @disk_ID">
        <DeleteParameters>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="disk_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="rel_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="disk_type_ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="status_code_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="genre_ID" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="disk_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="rel_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="disk_type_ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="status_code_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="genre_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

