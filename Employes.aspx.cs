/*
    Programmeur:   Yves Josue
    Date:           
  
    Solution:       Projet02.sln
    Projet:         Projet02.csproj
    Classe:         Employes.cs  

    But:            Afficher les informations concernant les employés
*/


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet02
{
    public partial class Employes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label entetePage = (Label)Page.Master.FindControl("enteteLabel");
            entetePage.Text = "Employés";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //Console.WriteLine(employeGridView.SelectedRow.Cells[1].Text);
            //Response.Write(employeGridView.SelectedRow.Cells[1].Text);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);

            GridViewRow row = employeGridView.Rows[index];

            nomTextBox.Text = row.Cells[2].Text;
            prenomTextBox.Text = row.Cells[3].Text;
        }
    }
}