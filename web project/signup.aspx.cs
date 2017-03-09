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
        string name = TextBox1.Text;
        string emal = TextBox2.Text;
        string addrs = TextBox3.Text;
        string age = TextBox4.Text;
        string uname = TextBox5.Text;
        string pass = TextBox6.Text;



        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());

        string chk_user = "select count(*) from customer where username=@un";
        SqlCommand cmd_chkuser = new SqlCommand(chk_user, con);
        cmd_chkuser.Parameters.AddWithValue("@un", uname);

        int usr;
        try
        {
            con.Open();
            usr = int.Parse(cmd_chkuser.ExecuteScalar().ToString());
        }
        finally
        {
            con.Close();
        }


        if (usr == 1)
        {
            Label10.Text = "user name already exist";
            Label6.Text = "Sign up failed ,Correct the errors below";
        }else 
        if(TextBox6.Text.Length<6)
        {
            Label10.Text = "";
            Label11.Text = "pass word week";

            Label6.Text = "Sign up failed ,Correct the errors below";
        }
        else
        {
            Label11.Text = "";
            
            Guid newGuid = Guid.NewGuid();
            string inst = "insert into customer values(@id,@nm,@ml,@addr,@ag,@unm,@pas)";

            SqlCommand cmd = new SqlCommand(inst, con);


            cmd.Parameters.AddWithValue("@id", newGuid.ToString());
            cmd.Parameters.AddWithValue("@unm", uname);
            cmd.Parameters.AddWithValue("@ml", emal);

            cmd.Parameters.AddWithValue("@nm", name);
            cmd.Parameters.AddWithValue("@ag", age);

            cmd.Parameters.AddWithValue("@pas", pass);

            cmd.Parameters.AddWithValue("@addr", addrs);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                // Response.Redirect("manager.aspx");
                Label6.Text = "successfully registered";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
              
               
            }
            
            finally
            {
                con.Close();
            }
        }
    }
}