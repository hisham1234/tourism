<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditHotels.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
           body {
  background: #ddd;
}


.account-sidebar {
background: #fff;
}


.account-usermenu ul li {
  border: 1px solid #f0f4f7;
}



.account-content {
  padding: 50px;
  background: #fff;
  min-height: 460px;
}
        .auto-style1 {
            width: 690px;
            height: 294px;
        }
        .auto-style2 {
            height: 31px;
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

             <div class="head center"><h2>Edit Hotels</h2></div>
    <br />
    
       <div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="account-sidebar">
				
				
				<div class="account-usermenu">
					<ul class="nav">
						<li class="active">
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EditTours.aspx"><h4>Add Tours</h4></asp:HyperLink>
							
						</li>

                        
						<li>
							<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Tours_package.aspx"><h4>Edit Tour Packages</h4></asp:HyperLink>
						</li>
                       
						<li>
							 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/EditHotels.aspx"><h4>Edit Hotels</h4></asp:HyperLink>
						</li>
						<li>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/View_Reservation.aspx"><h4>View Reservations</h4></asp:HyperLink>
							
						</li>

                        <li> <h4><asp:Label ID="Label2" runat="server" Text="Site Visits:"></asp:Label>
                            <asp:Label ID="Label3" runat="server"></asp:Label>

                            </h4>
&nbsp;
                            
                        </li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
            <div class="account-content">
			   <form id="form1" runat="server">
    <table class="auto-style1">
            <tr>
                <td class="auto-style14">hotehotel id</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Hotel Id required"></asp:RequiredFieldValidator>
                </td>
                <td rowspan="4">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [Hotels]"
                        DeleteCommand="delete from hotels where hotel_id=@hotel_id">
                        <DeleteParameters>
                            
                            <asp:Parameter Name="hotel_id" Type="String" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Hotel_Id" DataSourceID="SqlDataSource4" GridLines="Vertical" Height="188px" Width="234px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Hotel_Id" HeaderText="Hotel_Id" ReadOnly="True" SortExpression="Hotel_Id" />
                            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel_Name" SortExpression="Hotel_Name" />
                            <asp:BoundField DataField="Admin_Id" HeaderText="Admin_Id" SortExpression="Admin_Id" />
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" CausesValidation="false" Text="Delete" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">hotel name
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Hotel name required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" CssClass="button" runat="server" OnClick="Button3_Click" Text="Add" />
                    </td>
                <td class="auto-style2">
                    <asp:Button ID="Button4" CssClass="button" runat="server" OnClick="Button4_Click" Text="Refresh" />
                </td>
            </tr>
        </table>
        
    </form>
            </div>
		</div>
	</div>
</div>

    
        
</asp:Content>

