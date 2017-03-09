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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Length < 6)
        {
            Label7.Text = "Password is too short.";
        }
        else
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());
            string finduser = "select count(*) from customer where username=@user";

            SqlCommand cmd = new SqlCommand(finduser, con);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);

            con.Open();
            int n_users = (int)cmd.ExecuteScalar();
            con.Close();
            if (n_users != 1)
            {
                Label6.Text = "user does not exist";
            }
            else
            {
                SqlCommand updt = new SqlCommand("update customer set password=@ps where username=@us", con);
                updt.Parameters.AddWithValue("@us", TextBox1.Text);
                updt.Parameters.AddWithValue("@ps", TextBox2.Text);

                con.Open();
                updt.ExecuteNonQuery();
                Label7.Text = "password changed successfully";
                con.Close();


            }
        }
    }
}