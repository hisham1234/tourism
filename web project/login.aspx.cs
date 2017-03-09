using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());

        string chekav = "select count(*) from customer where username=@nm";
        string admn = "select count(*) from admins where username=@ad and password=@adps";

        SqlCommand cmduser = new SqlCommand(chekav, con);
        cmduser.Parameters.AddWithValue("@nm", TextBoxUser.Text);
        cmduser.Parameters.AddWithValue("@ps", TextBoxPass.Text);


        SqlCommand cmdadmin = new SqlCommand(admn, con);
        cmdadmin.Parameters.AddWithValue("@ad", TextBoxUser.Text);
        cmdadmin.Parameters.AddWithValue("@adps", TextBoxPass.Text);

        con.Open();
        int usrws = int.Parse(cmduser.ExecuteScalar().ToString());
        int adrws = int.Parse(cmdadmin.ExecuteScalar().ToString());
        con.Close();
        if (usrws == 1)
        {

            string chkPass = "select password from customer where username=@unm";
            SqlCommand cmdpass = new SqlCommand(chkPass, con);
            cmdpass.Parameters.AddWithValue("@unm", TextBoxUser.Text);

              con.Open();

              string entd_pass = cmdpass.ExecuteScalar().ToString();

              con.Close();
            
            if (entd_pass==TextBoxPass.Text)
            {

                Session["user"] = TextBoxUser.Text;

                Response.Redirect("tours_list.aspx");
               

            }
            else
            {
                Label3.Text = "Password is incorrect";
            }

           
        }
        else
        {
            Label3.Text="username invalid";
        }

         if (adrws == 1)
        {
          
          Session["user"]= TextBoxUser.Text; ;
            Response.Redirect("EditTours.aspx");
            
        }
        


    }


    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {

    }
}