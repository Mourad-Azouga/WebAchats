<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AoEncours.aspx.cs" Inherits="WebAchats2.AoEncours" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <%--<h2>Appels d'offres en cours​</h2><br />--%>

       
<%--  <div class="container mt-5;">
    <div class="card p-3">
      <h1 class="text-center">Votre Titre H1</h1>
    </div>
  </div>--%>


    <div class="container mt-3" style="margin-left:-10px">
    <div class="bg-light text-light p-3 rounded" style="background-color:lightblue">
      <h2 style="color:dimgray">Appels d'offres en cours​</h2>
    </div>
  </div><br />


        <asp:GridView ID="GridView1" runat="server" Font-Size="Small" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="3" PagerSettings-Mode="Numeric" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
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
                <asp:BoundField DataField="Date_lan" DataFormatString="{0:d}" HtmlEncode="False" HeaderText="Date lan." SortExpression="Date_lan">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Date_rem" DataFormatString="{0:d}" HtmlEncode="False" HeaderText="Date rem." SortExpression="Date_rem">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Date_ouv_adm" DataFormatString="{0:d}" HtmlEncode="False" HeaderText="Date adm." SortExpression="Date_ouv_adm">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Seance_ouv" HeaderText="Seance ouv." SortExpression="Seance_ouv">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Montant_est" DataFormatString="{0:N}" HeaderText="Estimation" HtmlEncode="False" SortExpression="Montant_est">
                    <ItemStyle Width="100px" HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>

            <FooterStyle BackColor="#CCCCCC"></FooterStyle>

            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ReportingAchatsConnectionString %>' ProviderName='<%$ ConnectionStrings:ReportingAchatsConnectionString.ProviderName %>' SelectCommand="SET DATEFORMAT DMY SELECT Numero_Ao,Designa,Date_lan,Date_rec,Date_rem,Date_ouv_adm,Date_ouv_fin,Type,Nature,Type_projet,Seance_ouv, Direction,Res_projet,Site,Financement,Mode_lan,Statut,Frais_dos,Numero_lot,Libelle,Impu_bud,Montant_bud,Montant_est,Observation,DATEDIFF(d,date_rec,getdate()) as Nbr_jour,Date_rep1, Date_rep2 FROM v_ao_ao WHERE rtrim(isnull(statut,'')) !='ANNULE' AND rtrim(isnull(statut,'')) !='INFRUCTUEUX'  AND rtrim(isnull(statut,'')) <> 'AUCUNE OFFRE' AND SITE <> 'RABAT' AND id_ao not in (select id_ao from ao_marches where date_adj is not null) and ([Financement] = @Financement) ORDER BY numero_ao">
            <SelectParameters>
                <asp:Parameter DefaultValue="FD" Name="Financement" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </main>

</asp:Content>
