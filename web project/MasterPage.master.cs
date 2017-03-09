using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["user"] != null)
        {
            Label1.Text = "You are logged in as " + Session["user"];
            login_hyp.Text = "logout";
            login_hyp.NavigateUrl = "Default.aspx";
            home_hyp.Visible = false;
            signup.Visible = false;

          if(Session["user"].ToString() == "admin_1")
            {
                admn.Visible = true;
            }
          else
            {
                admn.Visible = false;
            }
        }
        else
        
        {
           
            login_hyp.Text = "Login";
            login_hyp.NavigateUrl = "login.aspx";
            
            Label1.Visible = false;
       
            admn.Visible = false;

        }

       if (Request.Url.ToString() == "http://localhost:61235/Default.aspx" && login_hyp.Text == "logout")
        {

            Session["user"] = null;
            Response.Redirect("Default.aspx");
        }









    }


}
