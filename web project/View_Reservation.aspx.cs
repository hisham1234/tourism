using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {

          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());
            string admn = "select count(*) from admins where username=@ad";//make sure admin is logged in

            SqlCommand cmd = new SqlCommand(admn, con);
            cmd.Parameters.AddWithValue("@ad", Session["user"]);
            con.Open();
            int admncnt = (int)cmd.ExecuteScalar();
            con.Close();
            if (admncnt != 1)
            {
                Response.Redirect("login.aspx");
            }


        }

        Label3.Text = Application["visit"].ToString();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}