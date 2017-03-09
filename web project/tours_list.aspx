<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tours_list.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   

        body {
    background: #ddd;
    font-family: Tahoma;
    font-size:16px;
   }
     
 .auto-style1{
             margin: 0 auto;
             margin-left:auto;
             margin-right:auto;
              background:transparent;
           background:rgba(255,255,255,0.70);
        }
      
      

        .style {
	display:inline-block;
	vertical-align:top;
	background:#fff;
	border:#ddd solid 1px;
	width:270px;
	padding:9px 9px 2px;
	margin:22px 50px 70px 15px;
	text-align:center;	
}

     

        .style .dest {
	background:#2d2e2e;
	color:#fff;
	font-size:24px;
	line-height:32px;
	font-weight:600;
	text-transform:uppercase;
	margin:-10px -10px 0;
	padding:10px 10px 0;
}

    .style .pricelist {
  	color:#fff;
	background:#0066CC;
	height:60px;	 
}

    
.list
{
    margin:0;
	padding:9px 0 12px;
    display: block;
    font-size:20px;
 }


.container{
width:70%;
margin-right:auto;
margin-left:auto;
clear:both;

}

.container img{
max-width:100%;
max-height:100%;
margin-right:auto;
margin-left:auto;

}

.page_section{
clear:both;
}

.pricing_block {
	text-align:center;
	padding:53px 0 69px;
	margin-bottom:30px;
}
.pricing_block .head_section {
	padding-bottom:55px;
}



        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

    <form id="form1" runat="server">

<div class="container">

            	<div class="pricing_block ">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                         <header class="head_section ">
                       <legend><h1>International Tours</h1></legend> 
             
                        
                    </header>

                  
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td rowspan="8">
               
                <div class="auto-style15">
                <asp:DataList ID="DataList1" runat="server" BorderColor="White" DataKeyField="Tour_Id" DataSourceID="SqlDataSource1" RepeatColumns="3" CssClass="auto-style4" Height="16px" RepeatDirection="Horizontal" Width="561px" OnItemCommand="DataList1_ItemCommand"  SelectedIndex="0">
                   
                    
                     <ItemTemplate>
                        <div class="style">
                            

                        <div class="dest">
                        <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
                        </div>

                         <div class="pricelist">
                        <asp:Label ID="Label2" runat="server" CssClass="list" Text='<%# Eval("price") %>' />
                         </div>

                     
                        <asp:Label ID="Tour_IdLabel" runat="server" CssClass="list" Text='<%# Eval("Tour_Id") %>' />
                       
                        
                        <asp:Label ID="tour_typeLabel" runat="server" CssClass="list"  Text='<%# Eval("tour_type") %>' />
                        
                        
                        <asp:Label ID="Hotel_NameLabel" runat="server" CssClass="list"  Text='<%# Eval("Hotel_Name") %>' />
                       
                        
                        <asp:Label ID="DaysLabel" runat="server" CssClass="list"  Text='<%# Eval("Days") %>' />
                       
                        
                        <asp:Label ID="TypeLabel" runat="server" CssClass="list"  Text='<%# Eval("Type") %>' />
                        
                       
                        <asp:Button ID="ReserveBtn" runat="server" CssClass="button" CommandName="select" Text="Reserve Now"  />
                       
                        
                        </div>
                    </ItemTemplate>
                </asp:DataList>
              </div>

               
               <br />
                <br />
                <br />
                

                  <header class="head_section">
                       <legend><h1>Local Tours</h1></legend> 
                  </header>

                <asp:DataList ID="DataList2" runat="server" BorderColor="White" DataKeyField="Tour_Id" OnItemCommand="DataList2_ItemCommand" DataSourceID="SqlDataSource2" Height="444px" RepeatColumns="3" RepeatDirection="Horizontal" Width="561px"  CssClass="auto-style14">
                   
                    
                     <ItemTemplate>

                        <div class="style">
                         

                        <div class="dest">
                        
                        <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
                        </div>

                            
                         <div class="pricelist">

                              <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                             </div>

                        <asp:Label ID="Tour_IdLabel" runat="server" CssClass="list" Text='<%# Eval("Tour_Id") %>' />

                        <asp:Label ID="tour_typeLabel" runat="server" CssClass="list" Text='<%# Eval("tour_type") %>' />
                        
                        <asp:Label ID="Hotel_NameLabel" runat="server" CssClass="list" Text='<%# Eval("Hotel_Name") %>' />
                        
                        <asp:Label ID="DaysLabel" runat="server" CssClass="list" Text='<%# Eval("Days") %>' />
                        
                        <asp:Label ID="TypeLabel" runat="server" CssClass="list" Text='<%# Eval("Type") %>' />
                        
                        <asp:Button ID="Button4" runat="server" CssClass="button"   Text="ReserveNow" />
<br /></div>
                    </ItemTemplate>
                </asp:DataList>
                
                


      
    
        <tr>
          
            <td class="auto-style13">
                &nbsp;</td>
        </tr>
     
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [tourist_view] WHERE ([tour_type] = @tour_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="local" Name="tour_type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelsConnectionString %>" SelectCommand="SELECT * FROM [tourist_view] WHERE ([tour_type] = @tour_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="international" Name="tour_type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

  </div>
    </div>
        
</form>
</asp:Content>

