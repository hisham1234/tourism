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

       
        if (Session["user"]==null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());
            string admn = "select count(*) from admins where username=@ad";

            //to determine wether it is admin
            SqlCommand cmd = new SqlCommand(admn, con);
            cmd.Parameters.AddWithValue("@ad", Session["user"]);
            con.Open();
            int admncnt = (int)cmd.ExecuteScalar();
            con.Close();
            if(admncnt!=1)
            {
                Response.Redirect("login.aspx");
            }


        }

        Label3.Text = Application["visit"].ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session != null)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());
            string tourid = TextBox1.Text;
            string destination = TextBox2.Text;
            string type = DropDownList2.SelectedValue;
            string hotel = DropDownList1.SelectedValue;

            string insttrs = "insert into tours(tour_id,destination,type,hotel_id) values(@trid,@dst,@typ,@htl)";

            SqlCommand cmd = new SqlCommand(insttrs, con);
            cmd.Parameters.AddWithValue("@trid", tourid);
            cmd.Parameters.AddWithValue("@dst", destination);
            cmd.Parameters.AddWithValue("@typ", type);
            cmd.Parameters.AddWithValue("@htl", hotel);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "successfully added";

                con.Close();
            }
            catch (SqlException)
            {
                Label1.Text = tourid + " already exist";
            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
        SqlDataSource1.DataBind();
       
      
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}