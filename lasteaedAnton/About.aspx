<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="lasteaedAnton.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

        <h1 id="title">Lapsed</h1>

        <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="child_id"
            DataSourceID="SqlDataSource1"
            EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">

            <AlternatingRowStyle BackColor="#CCCCCC" />

            <Columns>
                <asp:BoundField DataField="child_id" HeaderText="child_id" ReadOnly="True" SortExpression="child_id" />
                <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
                <asp:BoundField DataField="Perenimi" HeaderText="Perenimi" SortExpression="Perenimi" />
                <asp:BoundField DataField="Synnipaev" HeaderText="Synnipaev" SortExpression="Synnipaev" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource
            ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:lasteaiadAntonConnectionString1 %>"
            DeleteCommand="DELETE FROM [Lapsed] WHERE [child_id] = @child_id"
            InsertCommand="INSERT INTO [Lapsed] ([Eesnimi], [Perenimi], [Synnipaev]) VALUES (@Eesnimi, @Perenimi, @Synnipaev)"
            SelectCommand="SELECT [child_id], [Eesnimi], [Perenimi], [Synnipaev] FROM [Lapsed]"
            UpdateCommand="UPDATE [Lapsed] SET [Eesnimi] = @Eesnimi, [Perenimi] = @Perenimi, [Synnipaev] = @Synnipaev WHERE [child_id] = @child_id">

            <DeleteParameters>
                <asp:Parameter Name="child_id" Type="Int32" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Synnipaev" Type="DateTime" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Synnipaev" Type="DateTime" />
                <asp:Parameter Name="child_id" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>

        <br />
<br />
<h1>Lisa lapsed</h1>
<asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="50px" Width="125px">
    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
</asp:DetailsView>

    </main>
</asp:Content>