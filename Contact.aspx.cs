using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

namespace WebAchats2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_envoyer_Click(object sender, EventArgs e)
        {
            Insertion();
            Envoi_email();
        }
        protected void Insertion()
        {
            string cmdString = "INSERT INTO contact (type_demande,nom_societe,secteur_activite,nom_prenom,num_tel,email,observation) VALUES (@val1, @val2, @val3, @val4, @val5, @val6, @val7)";
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand comm = new SqlCommand())
                {
                    comm.Connection = conn;
                    comm.CommandText = cmdString;
                    comm.Parameters.AddWithValue("@val1", ddl_type_demande.Text);
                    comm.Parameters.AddWithValue("@val2", tb_nom_societe.Text);
                    comm.Parameters.AddWithValue("@val3", tb_secteur_activite.Text);
                    comm.Parameters.AddWithValue("@val4", tb_nom_prenom.Text);
                    comm.Parameters.AddWithValue("@val5", tb_num_tel.Text);
                    comm.Parameters.AddWithValue("@val6", tb_email.Text);
                    comm.Parameters.AddWithValue("@val7", tb_observation.Text);

                    try
                    {
                        conn.Open();
                        comm.ExecuteNonQuery();
                    }
                    catch
                    {

                    }
                }
            }
        }
        protected void Envoi_email ()
        {
            string vbody = "";

            vbody = "Bonjour," + "\r\n";
            vbody += "\r\n";
            vbody += "Veuillez trouver ci-dessous le détail : " + ddl_type_demande.Text + ":" + "\r\n";
            vbody += "\r\n";
            vbody += "Nom Societé: " + tb_nom_societe.Text + "\r\n";
            vbody += "Date: " + System.DateTime.Now + "\r\n";
            vbody += "Secteur_activite: " + tb_secteur_activite.Text + "\r\n";
            vbody += "Nom / Prénom: " + tb_nom_prenom.Text + "\r\n";
            vbody += "\r\n";
            vbody += "N° téléphone: " + tb_num_tel.Text + "\r\n";
            vbody += "Email: " + tb_num_tel.Text + "\r\n";
            vbody += "Observation: " + tb_observation.Text + "\r\n";
            vbody += "\r\n";
            vbody += "Cordialement.";

            //string To = System.Web.Security.Membership.GetUser().Email.ToString().ToLower();
            string To = "youssef.benjelloun@veolia.com";
            string From = "reporting-decisionnel.amendis@veolia.com";
            string Subject = "Notification Contact Site Web Achats: " + ddl_type_demande.Text + " - " + tb_nom_societe.Text ;

            MailMessage completeMessage = new MailMessage(From, To, Subject, vbody);
            //completeMessage.CC.Add("abdelhamid.boudraa@veolia.com");
            //completeMessage.CC.Add("ferdaous.benmaymoun@veolia.com");
            //completeMessage.CC.Add("nadia.massaq@veolia.com");
            //completeMessage.CC.Add("zouhair.ouali@veolia.com");
            //completeMessage.CC.Add("aimane.mezdioui@veolia.com");
            completeMessage.CC.Add("youssef.benjelloun@veolia.com");

            SmtpClient smtp = new SmtpClient("172.30.30.72");

            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };

            NetworkCredential Credentials = new NetworkCredential("reporting-decisionnel.amendis@veolia.com", "Amendis.4321$");
            smtp.Credentials = Credentials;
            smtp.EnableSsl = true;
            smtp.Port = 25;
            smtp.Timeout = 50000;

            try
            {
                smtp.Send(completeMessage);               
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}