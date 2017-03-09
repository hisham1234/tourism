<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditTours.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            height: 78px;
            width: 526px;
        }
        .auto-style3 {
            width: 177px;
        }
        .auto-style4 {
            height: 21px;
            width: 704px;
        }
        .auto-style6 {
            width: 192px;
        }
        .auto-style7 {
            width: 704px;
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
        .auto-style8 {
            border-radius: 5px;
            font-size: 22px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: Tahoma;
            margin-left: 0;
        }
        .auto-style9 {
            width: 169px;
        }
        .auto-style10 {
            width: 36px;
        }
        .auto-style11 {
            border-radius: 5px;
            font-size: 22px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: Tahoma;
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


               <div class="head center"> <h2>Add Tours</h2></div>
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

                            <h4>
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
    <table class="auto-style2">
            <tr>
                <td class="auto-style2">tour id</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="TextBox1" ErrorMessage="Tour id required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10" rowspan="6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style9" DataKeyNames="Tour_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="169px" Width="218px" style="margin-left: 76px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Tour_Id" HeaderText="Tour_Id" ReadOnly="True" SortExpression="Tour_Id" />
                            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:BoundField DataField="Admin_Id" HeaderText="Admin_Id" SortExpression="Admin_Id" />
                            <asp:BoundField DataField="Hotel_Id" HeaderText="Hotel_Id" SortExpression="Hotel_Id" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" CausesValidation="false" ShowHeader="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [Tours]" OnSelecting="SqlDataSource2_Selecting"
                         UpdateCommand="update tours set hotel_id=@hotel_id where tour_id=@tour_id "
                        >
                         <UpdateParameters>
                <asp:Parameter Name="destination" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="hotel_id" Type="String" />
                <asp:Parameter Name="tour_id" Type="String" />
                      </UpdateParameters>
       
                       
                    </asp:SqlDataSource>
            
       
                    <br />
            
       
                </td>
            </tr>
            <tr>
                <td class="auto-style3">destination</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Destination Required" EnableClientScript="false"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">type</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="131px">
                        <asp:ListItem>international</asp:ListItem>
                        <asp:ListItem>local</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">hotel id</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Hotel_Id" DataValueField="Hotel_Id" Width="123px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT [Hotel_Id], [Hotel_Name] FROM [Hotels]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server"  CssClass="auto-style8" Text="Add" OnClick="Button1_Click" Height="41px" Width="103px" />
                    </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server"  CssClass="auto-style11" Text="Refresh" OnClick="Button2_Click" Height="40px" Width="103px" />
                </td>
            </tr>
        </table>
    
    </form>
            </div>
		</div>
	</div>
</div>


    
    
</asp:Content>

