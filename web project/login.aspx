<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default3" %>

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
     
            <div class="loginbox">
                    
                       <h2>Log In</h2>
                <br />
<br />

                     <div class="form-group">
                         <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
                         <asp:TextBox ID="TextBoxUser" runat="server" Width="288px" Height="30px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator>
                     </div>

                        <div class="form-group">
                     <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="288px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="PassWord is Required"></asp:RequiredFieldValidator>
                        </div>


                        <div class="form-group">
                                <asp:Button ID="Button2" CssClass="button" runat="server" OnClick="Button1_Click" Text="Submit" />
                        </div>

                
                     <div class="form-group">
                             <asp:Label ID="Label3" runat="server"></asp:Label>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PasswordRecovery.aspx"><h4>Forgot Password?</h4></asp:HyperLink>
                     </div>


                        <div class="form-group">
                             <asp:Label ID="Label7" runat="server" Text="Don't have an Account?"></asp:Label>
                            <br />

                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/signup.aspx"><h4>Click Here To Signup</h4></asp:HyperLink>
                        </div>
                    
                
            </div>
        </div>
   
</div>
</form>
</asp:Content>

