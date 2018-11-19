<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Artist.aspx.cs" Inherits="View_Artist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="title" class="text-center">
        <asp:Label ID="lblTitle" runat="server" Text="Artists" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    </div>
    <img src="Img/banner.png" class="img-responsive img-rounded" alt="app banner" />
    <br />
    <br />
    <fieldset>
        <legend class="label-info">Delete and Modify Artist Data</legend>
        <%--row 1--%>
        <div class="row">
            <div class="col-sm-2">
                <asp:Label
                    ID="lblDetailsArtist"
                    runat="server"
                    Text="Artist Info:"
                    ForeColor="#666666"
                    Font-Size="Large"> </asp:Label>
            </div>
            <div class="col-sm-9">
                <asp:DetailsView
                    ID="DetailsView1"
                    AutoGenerateRows="False"
                    CssClass="table table-bordered table-condensed"
                    runat="server"
                    DataKeyNames="artist_ID"
                    DataSourceID="SqlDataSourceViewArtist" 
                    OnModeChanging="DetialsView1_modeChangeing">
                    <Fields>
                        <asp:TemplateField
                            HeaderText="Artist ID"
                            InsertVisible="False"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="artist_ID">
                            <EditItemTemplate>
                                <asp:Label
                                    ID="lblArtistID1"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Eval("artist_ID") %>'>
                                </asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="lblArtistID2"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("artist_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Font-Size="Large" ForeColor="#666666"></HeaderStyle>
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
                                        CssClass="form-control"
                                        Text='<%# Bind("first_name") %>'>
                                    </asp:TextBox>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="lblFirstName"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("first_name") %>'></asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Font-Size="Large" ForeColor="#666666"></HeaderStyle>
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
                                        CssClass="form-control"
                                        Text='<%# Bind("last_name") %>'>
                                    </asp:TextBox>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="lblLastName"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("last_name") %>'></asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Font-Size="Large" ForeColor="#666666"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Group Name"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="group_name">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:TextBox
                                        ID="txtGroup"
                                        runat="server"
                                        CssClass="form-control"
                                        Text='<%# Bind("group_name") %>'>
                                    </asp:TextBox>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="lblGroup"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("group_name") %>'></asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Font-Size="Large" ForeColor="#666666"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField
                            HeaderText="Artist Type"
                            HeaderStyle-Font-Size="Large"
                            HeaderStyle-ForeColor="#666666"
                            SortExpression="artist_type_ID">
                            <EditItemTemplate>
                                <div class="col-edit col-xs-10">
                                    <asp:DropDownList
                                        ID="DropDownListArtistType"
                                        runat="server"
                                        CssClass="form-control"
                                        DataSourceID="SqlDataSourceArtistType"
                                        DataTextField="artist_type_description"
                                        SelectedValue='<%# Bind("artist_type_ID") %>'
                                        DataValueField="artist_type_ID">
                                    </asp:DropDownList>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label
                                    ID="Label5"
                                    runat="server"
                                    Font-Size="Large"
                                    Text='<%# Bind("artist_type_ID") %>'>
                                </asp:Label>
                            </ItemTemplate>

                            <HeaderStyle Font-Size="Large" ForeColor="#666666"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button
                                    ID="LinkButton1"
                                    runat="server"
                                    CssClass="btn-primary"
                                    CausesValidation="True"
                                    OnClick="btnUpdate_Click"
                                     CommandName="Update"
                                    Text="Update"></asp:Button>
                                <asp:Button
                                    ID="LinkButton2"
                                    runat="server"
                                    CssClass="btn-warning"
                                    CausesValidation="False"
                                    CommandName="Cancel"
                                    Text="Cancel"></asp:Button>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button
                                    ID="LinkButton1"
                                    runat="server"
                                    CssClass="btn-primary"
                                    CausesValidation="False"
                                    CommandName="Edit"
                                    Text="Edit"></asp:Button>
                                <asp:Button
                                    ID="LinkButton2"
                                    runat="server"
                                    CssClass="btn-danger"
                                    OnClientClick="return confirm('Are you sure you want to delete this Artist?')"
                                    CausesValidation="False"
                                    CommandName="Delete"
                                    Text="Delete"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>

                </asp:DetailsView>

                <br />
            </div>
        </div>
        <%--row 2--%>
        <div class="row">
            <div class="col-sm-2">
                <asp:Label
                    ID="lblDiskSelect"
                    runat="server"
                    Text="Select Artist:"
                    ForeColor="#666666"
                    AssociatedControlID="ddlArtistName"
                    Font-Size="Large"></asp:Label>
            </div>
            <div class="col-sm-4 ">
                <%--colomn 2 Main--%>
                <asp:DropDownList
                    ID="ddlArtistName"
                    runat="server"
                    CssClass="form-control"
                    AutoPostBack="True"
                    DataSourceID="SqlDataSourceArtistName"
                    DataTextField="Artist"
                    DataValueField="artist_ID">
                </asp:DropDownList>
            </div>
        </div>





    </fieldset>
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-4">                                
                <asp:Label ID="lblSuccess"
                    runat="server"
                    Text=""
                    CssClass="text-success">
                </asp:Label>
            </div>
            <div class="col-sm-4">

            </div>
        </div>
    <%-- Data Sources --%>
    <asp:SqlDataSource 
        ID="SqlDataSourceViewArtist" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        DeleteCommand="DELETE FROM [Artist] WHERE [artist_ID] = @artist_ID" 
        InsertCommand="INSERT INTO [Artist] ([first_name], [last_name], 
            [group_name], [artist_type_ID]) 
        VALUES (@first_name, @last_name, @group_name, @artist_type_ID)" 
        SelectCommand="SELECT * FROM [Artist] WHERE ([artist_ID] = @artist_ID)" 
        UpdateCommand="sp_Update_Artist @artist_ID,@first_name, @last_name, @group_name, @artist_type_ID">
        <DeleteParameters>
            <asp:Parameter Name="artist_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="group_name" Type="String" />
            <asp:Parameter Name="artist_type_ID" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter 
                ControlID="ddlArtistName" 
                DefaultValue="1" 
                Name="artist_ID" 
                PropertyName="SelectedValue" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="group_name" Type="String" />
            <asp:Parameter Name="artist_type_ID" Type="String" />
            <asp:Parameter Name="artist_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="SqlDataSourceArtistName" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:Disk_InventoryConnectionString %>" 
        SelectCommand="SELECT [Artist], [artist_ID] FROM [View_GetArtist]">
    </asp:SqlDataSource>
    <asp:SqlDataSource 
        runat="server" 
        ID="SqlDataSourceArtistType" 
        ConnectionString='<%$ ConnectionStrings:Disk_InventoryConnectionString %>' 
        SelectCommand="SELECT [artist_type_description], [artist_type_ID] FROM [Artist_Type]">
    </asp:SqlDataSource>
</asp:Content>

