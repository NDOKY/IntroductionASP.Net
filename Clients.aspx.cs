/*
    Programmeur:   Yves Josue
    Date:           
  
    Solution:       Projet02.sln
    Projet:         Projet02.csproj
    Classe:         Clients.cs  

    But:            Afficher les informations enregistrées concernant les clients
*/


using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Projet02
{
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label entetePage = (Label)Page.Master.FindControl("enteteLabel");
            entetePage.Text = "Clients";
        }

        protected void rechercheButton_Click(object sender, EventArgs e)
        {
            DataSet dataSet = CustomersList();
            clientGridView.DataSource = dataSet.Tables["Customers"].DefaultView;
            clientGridView.DataBind();
            clientGridView.Visible = true;

            if (clientGridView.Rows.Count <= 1)
                nombreClientLabel.Text = "Il y a " + clientGridView.Rows.Count + " client dans le pays : " + paysTextBox.Text;
            else
                nombreClientLabel.Text = "Il y a " + clientGridView.Rows.Count + " clients dans le pays : " + paysTextBox.Text;
            nombreClientLabel.Visible = true;

            
        }

        protected DataSet CustomersList()
        {
            SqlConnection osqlConnection = new SqlConnection("server=.\\sqlexpress;Initial Catalog=Northwind;Integrated Security = True; Persist Security Info = True");
            DataSet dataSet = null;
            try
            {
                osqlConnection.Open();

                SqlDataAdapter dataAdapter = new SqlDataAdapter("select CompanyName,ContactName,ContactTitle,Country,Phone from dbo.Customers " +
                    "Where Country = '" + paysTextBox.Text + "'", osqlConnection);

                dataSet = new DataSet();

                dataAdapter.Fill(dataSet, "Customers");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                osqlConnection.Close();
            }

            
            return dataSet;
        }

        protected void annulerButton_Click(object sender, EventArgs e)
        {
            clientGridView.Visible = false;
            nombreClientLabel.Visible = false;
            paysTextBox.Text = string.Empty;
        }
    }
}