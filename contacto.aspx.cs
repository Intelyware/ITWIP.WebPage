using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITWIP.WebApp
{
    public partial class contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Alert(string vpsMessage, string vpsPage)
        {
            // Cleans the message to allow single quotation marks.
            string vlsCleanMessage = vpsMessage.Replace("'", " ");
            vlsCleanMessage = vlsCleanMessage.Replace("\n", "\\n");
            vlsCleanMessage = vlsCleanMessage.Replace("\r", "\\r");

            string vlsScript = "";
            if (vpsPage != "")
                vlsScript = @"<script type='text/javascript'>alert('" + vlsCleanMessage + "'); window.location.href='" + vpsPage + "'</script>";
            else
                vlsScript = @"<script type='text/javascript'>alert('" + vlsCleanMessage + "')</script>";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", vlsScript, false);

        }

        public void Redirect(string vpsPage)
        {

            string vlsScript = "";

            // window.location.href = '#divCardWebPage'
            vlsScript = @"<script type='text/javascript'>window.location.href = '" + vpsPage + "';</script>";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", vlsScript, false);

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            // validate the Captcha to check we're not dealing with a bot
            bool isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text);

            CaptchaCodeTextBox.Text = null; // clear previous user input

            if (!isHuman)
            {
                // TODO: Captcha validation failed, show error message.
                // 

                lblMessage.Text = "Favor de ingresar el código Captcha correcto.";
                lblMessage.Focus();
                lblMessage.ForeColor = System.Drawing.Color.Red;
                Redirect("#divMessage");
                //Alert("Favor de ingresar el código Captcha correcto.", "contacto.aspx#divMessage");

                return;
            }

            // Set vaues.
            lblMessage.Text = "";

            // Validations.
            if (txtName.Text == "")
            {
                lblMessage.Text = "Favor de ingresar su Nombre.";
                txtName.Focus();
                Redirect("#divMessage");
                return;
            }

            if (txtCompany.Text == "")
            {
                lblMessage.Text = "Favor de ingresar el nombre de su Compañía ó Negocio.";
                txtCompany.Focus();
                Redirect("#divMessage");
                return;
            }

            if (txtEmail.Text == "")
            {
                lblMessage.Text = "Favor de ingresar su Correo Electrónico.";
                txtEmail.Focus();
                Redirect("#divMessage");
                return;
            }

            if (txtPhone.Text == "")
            {
                lblMessage.Text = "Favor de ingresar su Telefono ó Celular.";
                txtPhone.Focus();
                Redirect("#divMessage");
                return;
            }

            if (txtMessage.Text == "")
            {
                lblMessage.Text = "Favor de ingresar un Mensaje.";
                txtMessage.Focus();
                Redirect("#divMessage");
                return;
            }


            using (var client = new SmtpClient())
            {
                client.Host = ConfigurationManager.AppSettings["SmtpServer"];
                client.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SmtpPort"]);
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["SmtpEnableSsl"]);
                client.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SmtpUser"], ConfigurationManager.AppSettings["SmtpPassword"]);

                using (var message = new System.Net.Mail.MailMessage(
                 ))
                {

                    message.From = new MailAddress(txtEmail.Text);

                    if (ConfigurationManager.AppSettings["MailTo1"] != "")
                        message.To.Add(new MailAddress(ConfigurationManager.AppSettings["MailTo1"]));

                    if (ConfigurationManager.AppSettings["MailTo2"] != "")
                        message.To.Add(new MailAddress(ConfigurationManager.AppSettings["MailTo2"]));

                    if (ConfigurationManager.AppSettings["MailTo3"] != "")
                        message.To.Add(new MailAddress(ConfigurationManager.AppSettings["MailTo3"]));

                    if (ConfigurationManager.AppSettings["MailTo4"] != "")
                        message.To.Add(new MailAddress(ConfigurationManager.AppSettings["MailTo4"]));

                    message.Subject = ConfigurationManager.AppSettings["ContactEmilSubject"];
                    message.IsBodyHtml = true;

                    string vlsMessage = "";
                    vlsMessage += "<font face='Trebuchet MS'>";
                    vlsMessage += "<br>" + "Nombre   : " + txtName.Text;
                    vlsMessage += "<br>" + "Compañía : " + txtCompany.Text;
                    vlsMessage += "<br>" + "Correo   : " + txtEmail.Text;
                    vlsMessage += "<br>" + "Telefono : " + txtPhone.Text;
                    vlsMessage += "<br>" + "Mensaje  : <br><br>" + txtMessage.Text + "</font>";

                    message.Body = vlsMessage;

                    try
                    {
                        client.Send(message);
                    }
                    catch (Exception ex)
                    {
                        //throw ex;
                        lblMessage.Text = "Error: " + ex.Message;
                        return;
                    }
                }
            }

            //Alert("Agredecemos mucho su interes.\n\nNos pondremos en contacto lo mas pronto posible.", "");
            lblMessage.Text = "Agredecemos mucho su interes.\n\nNos pondremos en contacto lo mas pronto posible.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            Redirect("#divMessage");
        }
    }
}