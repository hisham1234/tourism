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
            string admn = "select count(*) from admins where username=@ad";

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

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());

        string inst_tours_pckg = "insert into tours_packages(tour_id,package_id,price) values(@trid,@pkgid,@price)";
        SqlCommand cmd = new SqlCommand(inst_tours_pckg, con);
        cmd.Parameters.AddWithValue("@trid", DropDownList4.SelectedValue);

        cmd.Parameters.AddWithValue("@pkgid", DropDownList5.SelectedValue);

        cmd.Parameters.AddWithValue("@price", TextBox5.Text);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "price of tour added to the package";
        }
        catch (SqlException )
        {
            Label1.Text = DropDownList4.SelectedValue + "&" + DropDownList5.SelectedValue + "already has a price";
        }
        finally
        {
            con.Close();
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        GridView3.DataBind();
    }
}