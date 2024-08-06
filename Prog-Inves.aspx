<%@ Page Title="Prog-Invis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prog-Inves.aspx.cs" Inherits="WebAchats2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <style>

    .container {
        margin: 100px 200px 0px 200px;
        color: black;
    }

    p {

        margin-top: 20px;
        font-family: Arial;
        font-size: 20px;
    }

    .download-links a {
        display: block;
        margin:10px 0px 0px 10px;
        color: #007BFF;
        text-decoration: none;
    }

        .download-links a:hover {
            text-decoration: underline;
        }
</style>
        
                <div class="container">
    <h1>Programmes d'investissements</h1>
    <p>
        Amendis adopte une démarche de progrès social auprès de ses fournisseurs afin de s’assurer que les normes de sécurité, d'hygiène, de santé et de protection sociale sont bien respectées.
    </p>
    <p>
        Il est téléchargeable à partir des liens ci-dessous.
    </p>
    <div class="download-links">
        <div style="display:flex;">
            
            <a href="path/to/charte-francaise.pdf">Télécharger la Charte Achats Responsables Version française</a>
        </div>
  
        <div style="display:flex;">
            
            <a href="path/to/charte-arabe.pdf">Télécharger la Charte Achats Responsables Version arabe</a>
        </div>

    </div>
</div>

    </main>
</asp:Content>
