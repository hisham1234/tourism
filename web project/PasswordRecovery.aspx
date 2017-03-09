<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
     <style type="text/css">
   body {
        background-image: url("images/bac.jpg");
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



        <div class="box">
           <div class="head center">
                    
                        <legend><h2>Password Recovery</h2></legend>
 <br />
<br />
                     <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Enter your username"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Width="288px" Height="30px"></asp:TextBox>               
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Required"></asp:RequiredFieldValidator>                    
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        
                     </div>


                      <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="New password"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="288px" Height="30px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="New password required"></asp:RequiredFieldValidator>
                   
                      </div>


                        <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="288px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Confirm Password Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password should match"></asp:CompareValidator>
                                
                        </div>

                
                     <div class="form-group">
                          <asp:Label ID="Label7" runat="server"></asp:Label>
               
                     </div>


                        <div class="form-group">
                             
                    <asp:Button ID="Button1" CssClass="button" runat="server" OnClick="Button1_Click" Text="Change" />
                        </div>
                    
                
            </div>
            </div>

       
    </form>
</asp:Content>

