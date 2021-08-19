/*
    Programmeur:   Yves Josue
    Date:           
  
    Solution:       Projet02.sln
    Projet:         Projet02.csproj
    Classe:         Information.cs  

    But:            Afficher les informations enregistrées dans les cookies
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet02
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((Label)Page.Master.FindControl("enteteLabel")).Text = "Information";
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                HttpCookie infoCookie = new HttpCookie("Information");
                infoCookie.Values["nomVal"] = nomTextBox.Text;
                infoCookie.Values["prenomVal"] = prenomTextBox.Text;
                infoCookie.Expires = DateTime.Now.AddMinutes(10);
                Response.Cookies.Add(infoCookie);

                infoCookieLabel.Text = "<b>Information provenant du Cookie </b> <br/><br/>" +
                   "Nom = " + Response.Cookies.Get("Information")["nomVal"] + "<br/>"
                   + "Prénom = " + Response.Cookies.Get("Information")["prenomVal"];
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
           
            //infoCookieLabel.Text = Response.Cookies.Get("Information")["prenomVal"];
        }
    }
}