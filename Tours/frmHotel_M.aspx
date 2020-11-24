<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmHotel_M.aspx.cs" Inherits="frmHotel_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay-bgbg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Hotel		
							</h1>	
							
						</div>	
					</div>
				</div>
			</section>
    <!-- End banner Area -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="row">
        <div class="col-lg-6 col-sm-6 col-6">
            <center>
<table width="100%">
<tr>
<td width="50%">
    <asp:Label ID="lblhotelname" runat="server" Text="Enter Hotelname"></asp:Label></td>
<td>
    <asp:TextBox ID="txthotelname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txthotelname" ErrorMessage="Enter A Hotel Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txthotelname" ErrorMessage="Enter A Valid Hotelname" 
        ForeColor="Red" ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblstar" runat="server" Text="Enter Star"></asp:Label></td>
<td>
    <asp:TextBox ID="txtstar" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lbladdressline1" runat="server" Text="Enter Addressline1"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline2" runat="server" Text="Enter Addressline2"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline3" runat="server" Text="Enter Addressline3"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcity" runat="server" Text="Enter City"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlcity" runat="server">
     
    </asp:DropDownList>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblpincode" runat="server" Text="Enter Pincode"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcontactno1" runat="server" Text="Enter Contactno1"></asp:Label></td>
<td>
    <asp:TextBox ID="txtcontactno1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtcontactno1" ErrorMessage="Enter A Valid ContactNo" 
        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtcontactno1" ErrorMessage="Enter A Valid ContactNo" 
        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcontactno2" runat="server" Text="Enter Contactno2"></asp:Label></td>
<td>
    <asp:TextBox ID="txtcontactno2" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtcontactno2" ErrorMessage="Enter A Valid Al. ContactNo." 
        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="txtcontactno2" ErrorMessage="Enter A Valid Contact" 
        ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblemail" runat="server" Text="Enter Email"></asp:Label></td>
<td>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
</tr>


<tr>

<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle"   class="genric-btn primary"
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"  class="genric-btn primary" 
        onclick="btnsave_Click" ValidationGroup="a" /></td>
</tr>
 <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update"  class="genric-btn primary"
                    onclick="btnupdate_Click"  />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete"  class="genric-btn primary"
                    onclick="btndelete_Click" />
            </td>
        </tr>
    </table>
    </center>
        </div>
        <div class="col-lg-6 col-sm-6 col-6">
            <div id="Div1">
                &nbsp;
                <h4>
                    <center>
                    </center>
                </h4>
    <div id="Export"  >&nbsp; <h4> <center>HOTEL LIST</center></h4>
        <asp:GridView ID="grdhotel_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
         <Columns>
                            <asp:TemplateField HeaderText="Hotel Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Hotel_Id') %>"
                                        CommandName="Hotel_Id" CommandArgument='<%#Bind("Hotel_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
                              <asp:BoundField DataField="Star" HeaderText="Star" />
                                <asp:BoundField DataField="Address_Line1" HeaderText="AddressLines 1" />
                                  <asp:BoundField DataField="Address_Line2" HeaderText="AddressLine 2" />
                                    <asp:BoundField DataField="Address_Line3" HeaderText="AddressLine 3" />
                                      <asp:BoundField DataField="City" HeaderText="City" />
                                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                                        <asp:BoundField DataField="ContactNumber1" HeaderText="Contact Number1 " />
                                        <asp:BoundField DataField="ContactNumber2" HeaderText="Contact Number2" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" />

                            
                        </Columns>

        </asp:GridView>
          </div>
            <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>

    
    <asp:HiddenField ID="hotelid" runat="server" />
    </div>
    </div>
</asp:Content>



