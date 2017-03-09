<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    body {
        background-image: url("images/bac.jpg");
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
   
   

    <form id="form1" runat="server">
     <div class="head center">
    <div class="box">
       
          
                    
                       <h2>Sign Up</h2>
        <br />
                    <asp:Label ID="Label6" runat="server"></asp:Label>
<br />

                 <div class="form-group">
                           <asp:Label ID="Label2" runat="server" CssClass="list" Text="Name"></asp:Label>
                           <asp:TextBox ID="TextBox1" runat="server" CssClass="list" Width="288px" Height="30px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>



                 <div class="form-group">
                           <asp:Label ID="Label3" runat="server" CssClass="list" Text="E-mail"></asp:Label>
                           <asp:TextBox ID="TextBox2" runat="server" CssClass="list" Width="288px" Height="30px"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid E - Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox2" ErrorMessage="E -mail is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>



                 <div class="form-group">
                      <asp:Label ID="Label" runat="server" CssClass="list" Text="Address"></asp:Label>
                      <asp:TextBox ID="TextBox3" runat="server" CssClass="list" Width="288px" Height="30px" TextMode="MultiLine"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox3" ErrorMessage="Address is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>

                
                  <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="list" Text="Age"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="list"  Width="288px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Age" MaximumValue="100" MinimumValue="18" Type="Integer" ForeColor="#CC0000"></asp:RangeValidator>
                 </div>


                 <div class="form-group">
                     <asp:Label ID="Label4" runat="server" CssClass="list" Text="Username"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="list" Width="288px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox5" ErrorMessage="username required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label10" runat="server" ForeColor="#CC0000"></asp:Label>
                 </div>


                 <div class="form-group">
                     <asp:Label ID="Labelp" runat="server" CssClass="list" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="list" Width="288px" Height="30px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>

                   <div class="form-group">
                       <asp:Label ID="Label5" runat="server" CssClass="list" Text="Confirm Password"></asp:Label>
                       <asp:TextBox ID="TextBox7" runat="server" CssClass="list" Width="288px" Height="30px" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox7" ErrorMessage="confirm password required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="PassWord should match" ForeColor="#CC0000"></asp:CompareValidator>
                    <asp:Label ID="Label11" runat="server" ForeColor="#CC0000"></asp:Label>
                   </div>

                <div class="form-group">
                     <asp:Button ID="Button2"  CssClass="button" runat="server" OnClick="Button1_Click" Text="SignUp" />
                 </div>
                    
                    
                
           
        </div>
    

</div>
</form>   
 
</asp:Content>

