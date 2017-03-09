<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirmreservation.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   body {
        background-image: url("images/bac.jpg");
    }



.container .confirmreservation{
    background:transparent;
     background:rgba(255,255,255,0.60);
     padding-top:20px;
     padding-left:20px;
     padding-bottom:20px;
     padding-right:20px;
     width:50%;
     height:50%;
      margin: 0 auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        
           
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />


    <div class="head center">
    <div class="box">
                     <h2>Reserve  your tour package</h2></>
        <br /><br /><br />

                     <div class="form-group">
                         
                     </div>

                        <div class="form-group">
                             
                        <asp:Label ID="Label1" runat="server" Text="ConfirmReservation"></asp:Label>
                            <br />
                    
                        <asp:HyperLink ID="Logincnfm" runat="server" NavigateUrl="~/login.aspx"><h4>Login To Make Reservations</h4></asp:HyperLink>
                    
                        </div>


                        <div class="form-group">
                            
                        <asp:Label ID="Label2" runat="server" Text="Destination:"></asp:Label>
                    
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                               
                        </div>

                
                     <div class="form-group">
                             <asp:Label ID="Label3" runat="server" Text="Type:"></asp:Label>
                   
                             <asp:Label ID="Label7" runat="server"></asp:Label>
                             
                     </div>


                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="No of people:"></asp:Label>
                   
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="85">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                        </div>


        
                        <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="No of rooms needed:"></asp:Label>
                  
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="85">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                      </div>


                        <div class="form-group">
                             <asp:Label ID="Label8" runat="server"></asp:Label>
                       
                        <asp:Button ID="cnfmBtn"  CssClass="button" runat="server" Text="Confirm" OnClick="Button1_Click" />

                        </div>

        </div>
                
            </div>
        
   
    </form>
</asp:Content>

