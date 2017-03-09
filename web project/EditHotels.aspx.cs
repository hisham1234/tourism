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

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string hid = TextBox3.Text;
            string hname = TextBox4.Text;


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());
            string inst_hitel = "insert into hotels(hotel_id,hotel_name) values(@hid,@hnm)";

            SqlCommand cmd = new SqlCommand(inst_hitel, con);

            cmd.Parameters.AddWithValue("@hid", hid);
            cmd.Parameters.AddWithValue("@hnm", hname);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "hotel successfully added";
                GridView2.DataBind();

            }
            catch (SqlException)
            {
                Label1.Text = hid + "Hotel Already Exist";

            }

            finally
            {
                con.Close();
            }
        }else
        {
            Response.Redirect("login.aspx");
        }



    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }
}