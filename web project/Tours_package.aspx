<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tours_package.aspx.cs" Inherits="Default3" %>

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


                     <div class="head center"><h2>Edit Packages</h2></div>
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

                        <li> <h4><asp:Label ID="Label2" runat="server" Text="Site visits   :"></asp:Label>
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
                <td class="auto-style23">TourTour id</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Tour_Id" DataValueField="Tour_Id">
                    </asp:DropDownList>
                </td>
                <td rowspan="4">
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [Tours_Packages]"
                         DeleteCommand="delete  from tours_packages where tour_id=@tour_id and package_id=@package_id"
                            UpdateCommand ="update tours_packages set price=@price where tour_id=@tour_id and package_id=@package_id" >
                        
                        <UpdateParameters>
                            
                            <asp:Parameter Name="tour_id" Type="String" />
                            <asp:Parameter Name="package_id" Type="String" />
                            
                            <asp:Parameter Name="price" Type="String" />
                        </UpdateParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="tour_id" Type="String" />
                            <asp:Parameter Name="package_id" Type="String" />
                
                        </DeleteParameters>
                    
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Package_Id,Tour_Id" DataSourceID="SqlDataSource6" GridLines="None" Height="195px" Width="223px" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Tour_Id" HeaderText="Tour_Id" ReadOnly="True" SortExpression="Tour_Id" />
                            <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" ReadOnly="True" SortExpression="Package_Id" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" CausesValidation="false" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
                <td class="auto-style24">Packege id <td class="auto-style27">
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource7" DataTextField="Package_Id" DataValueField="Package_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT [Package_Id] FROM [Packages]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT [Tour_Id] FROM [Tours]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">price</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Price is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="Button5" runat="server"  CssClass="button" OnClick="Button5_Click" Text="Add" />
                    </td>
                <td class="auto-style26">
                    <asp:Button ID="Button6" runat="server"  CssClass="button" OnClick="Button6_Click" Text="refresh" />
                </td>
            </tr>
        </table>

        </form>

            </div>
		</div>
	</div>
</div>

    
        
</asp:Content>

