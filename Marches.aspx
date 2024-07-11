<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Marches.aspx.cs" Inherits="WebAchats2.Marches" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h2>Marchés attribués​</h2><br />
        <asp:GridView ID="GridView1" runat="server" Font-Size="Small" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" PagerSettings-Mode="Numeric" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Numero_Ao" HeaderText="N° AO" SortExpression="Numero_Ao">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Designa" HeaderText="Désignation" SortExpression="Designa">
                    <ItemStyle Width="600px" />
                </asp:BoundField>
                <asp:BoundField DataField="Date_ouv_fin" DataFormatString="{0:d}" HtmlEncode="False" HeaderText="Ouverture Financière" SortExpression="Date_ouv_fin">
                    <ItemStyle Width="160px" />
                </asp:BoundField>               
                 <asp:BoundField DataField="Adjudicataire" HeaderText="Attributaire" SortExpression="Adjudicataire">
                 <ItemStyle Width="200px" />
                 </asp:BoundField>              
                 <asp:BoundField DataField="Montant" DataFormatString="{0:N}" HeaderText="Montant DH HT" HtmlEncode="False" SortExpression="Montant">
                 <ItemStyle Width="160px" HorizontalAlign="Right" />
                 </asp:BoundField>
               
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>

            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ReportingAchatsConnectionString %>' ProviderName='<%$ ConnectionStrings:ReportingAchatsConnectionString.ProviderName %>' SelectCommand="SET DATEFORMAT DMY select Site,Numero_ao,upper(Designa) as Designa, Date_ouv_fin,Montant, Nom as Adjudicataire from v_ao_marches WHERE year(date_adj) >=year( getdate())-1 AND rtrim(isnull(statut,'')) !='ANNULE' AND rtrim(isnull(statut,'')) !='INFRUCTUEUX' AND rtrim(isnull(statut,'')) <> 'AUCUNE OFFRE' order by Numero_Mar">
            <SelectParameters>
                <asp:Parameter DefaultValue="FD" Name="Financement" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </main>

</asp:Content>
