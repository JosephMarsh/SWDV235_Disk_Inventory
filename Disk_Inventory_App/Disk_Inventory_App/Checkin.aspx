<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkin.aspx.cs" Inherits="Checkin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="title" class="text-center">
        <asp:Label 
            ID="lblTitle" 
            runat="server" 
            Text="Disk Returns" 
            Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
        <h3 class="info">
            Select a disk to return to inventory.
        </h3>
    <fieldset>

        <legend class="label-info">Disk Return Menu</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2 text-center ">
                <%--colomn 1 labels--%>
                <asp:Label
                    ID="lblName"
                    runat="server"
                    Text="Checked out disks:"
                    AssociatedControlID="lbxMovies"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-4">
                <%--colomn 1 Main--%>
                <asp:ListBox 
                    ID="lbxMovies" 
                    runat="server" 
                    AutoPostBack="True" 
                    DataSourceID="SqlDataSourceMovieList" 
                    DataTextField="disk_name" 
                    DataValueField="disk_ID"
                    CssClass="form-control"
                    ToolTip="Select the disk you wish to return."
                    Font-Size="Large"
                    SelectionMode="Single">
                </asp:ListBox>
                
            </div>
            <div class="col-sm-1 text-center ">
                <%--colomn 2 lables--%>
                <asp:Label
                    ID="lblDetials"
                    runat="server"
                    Text="Detials:"
                    AssociatedControlID="DetailsViewDisks"
                    ForeColor="#666666"
                    Font-Size="Large">
                </asp:Label>
            </div>
            <div class="col-sm-5">
                <asp:DetailsView
                    ID="DetailsViewDisks"
                    runat="server"
                    DataSourceID="SqlDataSourceDiskDetials" 
                    AutoGenerateRows="False" 
                    CssClass="table table-bordered table-condensed"
                    DataKeyNames="disk_ID">
                    <Fields>
                        <asp:TemplateField 
                            HeaderText="Disk ID" 
                            InsertVisible="False"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="disk_ID">
                            <ItemTemplate>
                                <asp:Label 
                                    runat="server" 
                                    Font-Size="Large"
                                    Text='<%# Bind("disk_ID") %>' 
                                    ID="Label1">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField 
                            HeaderText="Disk Name" 
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="disk_name">
                            <ItemTemplate>
                                <asp:Label 
                                    runat="server" 
                                    Font-Size="Large"
                                    Text='<%# Bind("disk_name") %>' 
                                    ID="Label2">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Fields>
                </asp:DetailsView>
                
            </div>
       </div>
        <%--row 2--%>
        <div class="row">
            <div class="col-sm-2 text-center ">
                
            </div>

            <div class="col-sm-4">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator" 
                    runat="server" 
                    CssClass="text-danger"
                    ErrorMessage="A Disk is Required" 
                    ControlToValidate="lbxMovies">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-sm-1 text-center">
                
            </div>

            <div class="col-sm-5">

            </div>

        </div>

           <br />

    </fieldset>
    <div class="row">
        <div class="col-sm-2">

        </div>
        <div class="col-sm-4" >
            <asp:Button 
                ID="btnCheckIn" 
                runat="server"
                CssClass="btn-primary"
                Text="Return Disk"
                AutoPostBack="true" OnClick="btnCheckIn_Click" />
            <asp:Button 
                ID="btnReset"
                runat="server" 
                CssClass="btn-warning"
                CausesValidation="false"
                Text="Reset" 
                OnClick="btnReset_Click" />
        </div>
        <div class =" col-sm-1">

        </div>
        <div class="col-sm-6">
            <asp:Label 
                ID="lblSuccess" 
                runat="server" 
                Text=""
                CssClass="text-success">
            </asp:Label>
        </div>

    </div>
    <%--data sources--%>
    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSourceMovieList"
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        SelectCommand="SELECT * FROM [Disk] WHERE ([status_code_ID] = @status_code_ID)" 
        DeleteCommand="DELETE FROM [Disk] WHERE [disk_ID] = @disk_ID" 
        InsertCommand="INSERT INTO [Disk] ([disk_name], [rel_date], [disk_type_ID], [status_code_ID],
            [genre_ID]) VALUES (@disk_name, @rel_date, @disk_type_ID, @status_code_ID, @genre_ID)" 
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
        <SelectParameters>
            <asp:Parameter
                DefaultValue="3"
                Name="status_code_ID"
                Type="Int32"></asp:Parameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="disk_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="rel_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="disk_type_ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="status_code_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="genre_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        DeleteCommand="DELETE FROM [Rental_Log] WHERE [check_out_date] = @check_out_date 
        AND [borrower_ID] = @borrower_ID AND [disk_ID] = @disk_ID" 
        InsertCommand="INSERT INTO [Rental_Log] ([check_out_date], [check_in_date], 
        [borrower_ID], [disk_ID])
        VALUES (@check_out_date, @check_in_date, @borrower_ID, @disk_ID)" 
        SelectCommand="SELECT * FROM [Rental_Log]"
        UpdateCommand="UPDATE [Rental_Log] SET [check_in_date] = @check_in_date 
        WHERE [check_out_date] = 
        (Select max(check_out_date) from [Rental_Log] where [disk_ID] = @disk_ID)">
        <DeleteParameters>
            <asp:Parameter Name="check_out_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="borrower_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="check_out_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="check_in_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="borrower_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="check_in_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="check_out_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="borrower_ID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="disk_ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSourceDiskDetials"
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>'
        SelectCommand="SELECT [disk_ID], [disk_name] FROM [Disk] WHERE ([disk_ID] = @disk_ID)">
        <SelectParameters>
            <asp:ControlParameter 
                ControlID="lbxMovies" 
                PropertyName="SelectedValue" 
                Name="disk_ID" 
                Type="Int32">
            </asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

