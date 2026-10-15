<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="lasteaedAnton.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h1>Ametilapsed tabel</h1>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Nimi" HeaderText="Nimi" SortExpression="Nimi" />
        <asp:CheckBoxField DataField="Is_Kook" HeaderText="Is_Kook" SortExpression="Is_Kook" />
        <asp:BoundField DataField="Ruhmatuubi_FK" HeaderText="Ruhmatuubi_FK" SortExpression="Ruhmatuubi_FK" />
        <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
        <asp:BoundField DataField="Perenimi" HeaderText="Perenimi" SortExpression="Perenimi" />
        <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
        <asp:BoundField DataField="Aadress" HeaderText="Aadress" SortExpression="Aadress" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lasteaiadAntonConnectionString1 %>" DeleteCommand="DELETE FROM [Ametikohad] WHERE [job_id] = @job_id" InsertCommand="INSERT INTO [Ametikohad] ([Nimi], [Is_Kook]) VALUES (@Nimi, @Is_Kook)" SelectCommand="SELECT Ametikohad.Nimi, Ametikohad.Is_Kook, Ruhmad.Ruhmatuubi_FK, Lapsed.Eesnimi, Lapsed.Perenimi, Ruhmad.Nimi AS Expr1, Ruhmad.Aadress, Lapsed.Synnipaev FROM Ametikohad CROSS JOIN Lapsed CROSS JOIN Ruhmad" UpdateCommand="UPDATE [Ametikohad] SET [Nimi] = @Nimi, [Is_Kook] = @Is_Kook WHERE [job_id] = @job_id">
    <DeleteParameters>
        <asp:Parameter Name="job_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nimi" Type="String" />
        <asp:Parameter Name="Is_Kook" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nimi" Type="String" />
        <asp:Parameter Name="Is_Kook" Type="Boolean" />
        <asp:Parameter Name="job_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        
    </main>
</asp:Content>
