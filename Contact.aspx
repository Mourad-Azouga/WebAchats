﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebAchats2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2>Nous contacter</h2><br />        
       
       <%-- <asp:Label ID="lbl_type_demande" runat="server" Text="Type de demande *"></asp:Label><br />       --%>
        <asp:DropDownList ID="ddl_type_demande" class ="dropdown-item" Width="200px" runat="server">
            <asp:ListItem>Demande d&#39;information</asp:ListItem>
            <asp:ListItem>R&#233;clamation</asp:ListItem>
            <asp:ListItem Value="R&#233;clamation anonyme">R&#233;clamation anonyme</asp:ListItem>     
        </asp:DropDownList><br /> <br />

        <asp:Label ID="lbl_nom_societe" runat="server" Text="Nom de la société *"></asp:Label><br />
        <asp:TextBox ID="tb_nom_societe" class="form-control" Width="300px" runat="server"></asp:TextBox>

        <asp:Label ID="lbl_secteur_activite" runat="server" Text="Secteur d'activité *"></asp:Label><br />
        <asp:TextBox ID="tb_secteur_activite" class="form-control" Width="300px" runat="server"></asp:TextBox>

        <asp:Label ID="lbl_nom_prenom" runat="server" Text="Nom/Prénom *"></asp:Label><br />
        <asp:TextBox ID="tb_nom_prenom" class="form-control" Width="300px" runat="server"></asp:TextBox>

        <asp:Label ID="lbl_num_tel" runat="server" Text="N° de Téléphone *"></asp:Label><br />
        <asp:TextBox ID="tb_num_tel" class="form-control" Width="300px" runat="server"></asp:TextBox>

         <asp:Label ID="lbl_email" runat="server" Text="E-mail *"></asp:Label><br />
         <asp:TextBox ID="tb_email" class="form-control" Width="300px" TextMode="Email" runat="server"></asp:TextBox>

         <asp:Label ID="lbl_observation" runat="server" Text="Observations *	"></asp:Label><br />
         <asp:TextBox ID="tb_observation" class="form-control" Width="280px" Height="150px" TextMode="MultiLine" runat="server"></asp:TextBox><br />

        <asp:Button ID="btn_envoyer" class="btn btn-primary" runat="server" Text="Envoyer" OnClick="btn_envoyer_Click" />

    </main>
</asp:Content>
