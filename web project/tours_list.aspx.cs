using System;
using System.Collections.Generic;
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

  
   
   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label trid = e.Item.FindControl("tour_idlabel") as Label;
        Label tp = e.Item.FindControl("typelabel") as Label;

        Label dst = e.Item.FindControl("destinationlabel") as Label;

        Response.Redirect("confirmreservation.aspx?tour_id=" + trid.Text+"&facility=" + tp.Text+"&destination="+dst.Text);
       


    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label trid = e.Item.FindControl("Tour_IdLabel") as Label;
        Label tp = e.Item.FindControl("TypeLabel") as Label;

        Label dst = e.Item.FindControl("destinationlabel") as Label;

        Response.Redirect("confirmreservation.aspx?tour_id=" + trid.Text + "&facility=" + tp.Text + "&destination=" + dst.Text);
        
    }
}