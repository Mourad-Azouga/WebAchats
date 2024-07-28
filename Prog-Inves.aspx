<%@ Page Title="Prog-Invis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prog-Inves.aspx.cs" Inherits="WebAchats2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="jumbotron" style="display: flex; justify-content: center; align-items: center;">
            <div style="align-items: center; justify-content: center; width: 70%">
                <h2 id="title">Programmes d'investissements</h2>
                <p>Pour une communication transparente des appels d'offres, Amendis met à votre disposition le programme prévisionnel des marchés à passer au titre de l'année budgétaire en cours.</p>
                <p>Il est téléchargeable à partir des liens ci-dessous.</p>

                <div style="display: flex; flex-direction: column; align-items: flex-start;">
                    <div style="display: flex; align-items: center; margin-bottom: 10px;">
                        <img src="/images/pdf-icon.png" alt="PDF Icon" style="width: 40px; height: 40px; margin-right: 10px;">
                        <a href="/path/to/tanger-program.pdf">Télécharger les programmes d'investissements pour Tanger</a>
                    </div>
                    <div style="display: flex; align-items: center; margin-bottom: 10px;">
                        <img src="/images/pdf-icon.png" alt="PDF Icon" style="width: 40px; height: 40px; margin-right: 10px;">
                        <a href="/path/to/tetouan-program.pdf">Télécharger les programmes d'investissements pour Tétouan</a>
                    </div>
                </div>
            </div>
        </div>

    </main>
</asp:Content>
