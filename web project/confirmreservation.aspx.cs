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
        Label6.Text = Request.QueryString["destination"];

        Label7.Text = Request.QueryString["facility"];

        if (Session["user"] != null)//checks wether user has logged in
        {
            Logincnfm.Visible = false;


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());

            string gt_cid = "select customer_id from customer where username=@user"; //gets user's id
            SqlCommand cid = new SqlCommand(gt_cid, con);

            cid.Parameters.AddWithValue("@user", Session["user"].ToString());

            string cs_id="";

            try
            {
                con.Open();
                cs_id = (cid.ExecuteScalar().ToString());
            }
            catch (NullReferenceException)
            {
                cnfmBtn.Visible = false;
                Label1.Text = "admin cannot reserve tours";

            }
            finally
            {
                con.Close();
            }
            string chkStatus = "select count(*) from reservation where customer_id=@cid and status='pending'"; //checks whether user has a tour pending

            SqlCommand cmdchk = new SqlCommand(chkStatus, con);
            cmdchk.Parameters.AddWithValue("@cid", cs_id);

            con.Open();
            int bkd_cus = int.Parse(cmdchk.ExecuteScalar().ToString());
            con.Close();
        
            if (bkd_cus == 1)
            {
              
                cnfmBtn.Visible = false;
                Label1.Text = "Sorry cannot reserve,already you have a tour pending";
             
            }


        }else //if user is not logged in
        {
            Label1.Text = "Please login to confirm resevation";
            cnfmBtn.Visible = false;

      
            Logincnfm.Visible = true;
     
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["travelsConnectionString"].ToString());

        Guid nwgui = Guid.NewGuid();


         string inst = "insert into reservation values(@rid,@cid,@tid,@npl,@nrm,@tp,@sts)"; //inserts new record
         string gt_cid = "select customer_id from customer where username=@user";
         SqlCommand cid = new SqlCommand(gt_cid, con);

         cid.Parameters.AddWithValue("@user", Session["user"].ToString());

        string cs_id;

     
  
            con.Open();
             cs_id = cid.ExecuteScalar().ToString();
           con.Close();
        
       
   
        
        
         SqlCommand cmd = new SqlCommand(inst, con);
        
            cmd.Parameters.AddWithValue("@rid", nwgui.ToString());
            cmd.Parameters.AddWithValue("@cid", cs_id);
            cmd.Parameters.AddWithValue("@tid", Request.QueryString["tour_id"]);
            cmd.Parameters.AddWithValue("@npl", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@nrm", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@tp", Label7.Text);

            cmd.Parameters.AddWithValue("@sts", "pending");

            con.Open();
            cmd.ExecuteNonQuery();
            Label8.Text = "Reservation completed,we will get back to you shortly";
            cnfmBtn.Visible = false;
            con.Close();
        

    }
}