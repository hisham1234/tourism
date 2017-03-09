<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Reservation.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 302px;
        }
        .auto-style2 {
            width: 144px;
        }
        .auto-style3 {
            width: 144px;
            height: 61px;
        }
        .auto-style4 {
            height: 61px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: center;
        }

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

 
               <div class="head center"> <h2>Reservations List</h2></div>
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

                        <li><h4> <asp:Label ID="Label2" runat="server" Text="Site visits   :"></asp:Label>
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
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [view_reservation]"
                        UpdateCommand="update view_reservation set status=@status where reservation_id=@reservation_id" >
                       <UpdateParameters>

                           
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="reservation_id" Type="String" />
                       </UpdateParameters>
                
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2" rowspan="2" class="auto-style6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataSourceID="SqlDataSource1" Height="183px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="533px" DataKeyNames="reservation_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="reservation_id" HeaderText="reservation_id" SortExpression="reservation_id" ReadOnly="True" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Tour_Id" HeaderText="Tour_Id" SortExpression="Tour_Id" />
                            <asp:BoundField DataField="No_of_People" HeaderText="No_of_People" SortExpression="No_of_People" />
                            <asp:BoundField DataField="No_of_rooms_Needed" HeaderText="No_of_rooms_Needed" SortExpression="No_of_rooms_Needed" />
                            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
            </div>
		</div>
	</div>
</div>


   
</asp:Content>

