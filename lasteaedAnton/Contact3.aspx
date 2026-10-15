<%@ Page Title="Lapse Pudumiset" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="lasteaedAnton.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="puudumineID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="puudumineID" HeaderText="puudumineID" InsertVisible="False" ReadOnly="True" SortExpression="puudumineID" />
                <asp:BoundField DataField="algus" HeaderText="algus" SortExpression="algus" />
                <asp:BoundField DataField="lopp" HeaderText="lopp" SortExpression="lopp" />
                <asp:BoundField DataField="pohjus" HeaderText="pohjus" SortExpression="pohjus" />
                <asp:TemplateField HeaderText="laps_lapsID" SortExpression="laps_lapsID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("laps_lapsID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LapsSource" DataTextField="perenimi" DataValueField="lapsID" SelectedValue='<%# Bind("laps_lapsID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="LapsSource" runat="server" ConnectionString="<%$ ConnectionStrings:lasteaiadAntonConnectionString1 %>" DeleteCommand="DELETE FROM [lapsSet] WHERE [lapsID] = @lapsID" InsertCommand="INSERT INTO [lapsSet] ([eesnimi], [perenimi], [sunniag]) VALUES (@eesnimi, @perenimi, @sunniag)" SelectCommand="SELECT * FROM [lapsSet]" UpdateCommand="UPDATE [lapsSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [sunniag] = @sunniag WHERE [lapsID] = @lapsID">
                            <DeleteParameters>
                                <asp:Parameter Name="lapsID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="eesnimi" Type="String" />
                                <asp:Parameter Name="perenimi" Type="String" />
                                <asp:Parameter Name="sunniag" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="eesnimi" Type="String" />
                                <asp:Parameter Name="perenimi" Type="String" />
                                <asp:Parameter Name="sunniag" Type="String" />
                                <asp:Parameter Name="lapsID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("laps_lapsID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lasteaiadAntonConnectionString1 %>" DeleteCommand="DELETE FROM [puudumineSet] WHERE [puudumineID] = @puudumineID" InsertCommand="INSERT INTO [puudumineSet] ([algus], [lopp], [pohjus], [laps_lapsID]) VALUES (@algus, @lopp, @pohjus, @laps_lapsID)" SelectCommand="SELECT * FROM [puudumineSet]" UpdateCommand="UPDATE [puudumineSet] SET [algus] = @algus, [lopp] = @lopp, [pohjus] = @pohjus, [laps_lapsID] = @laps_lapsID WHERE [puudumineID] = @puudumineID">
                <DeleteParameters>
                    <asp:Parameter Name="puudumineID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="algus" Type="String" />
                    <asp:Parameter Name="lopp" Type="String" />
                    <asp:Parameter Name="pohjus" Type="String" />
                    <asp:Parameter Name="laps_lapsID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="algus" Type="String" />
                    <asp:Parameter Name="lopp" Type="String" />
                    <asp:Parameter Name="pohjus" Type="String" />
                    <asp:Parameter Name="laps_lapsID" Type="Int32" />
                    <asp:Parameter Name="puudumineID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </h2>
    </main>
</asp:Content>
