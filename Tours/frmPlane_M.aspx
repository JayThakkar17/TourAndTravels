<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmPlane_M.aspx.cs" Inherits="frmPlane_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Plane			
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
    <asp:Label ID="lblname" runat="server" Text="Enter Planename"></asp:Label></td>
<td>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Enter A Plane Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblbusinessseat" runat="server" Text="Enter Businessseats"></asp:Label></td>
<td>
    <asp:TextBox ID="txtbusineesseat" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbleconomyseat" runat="server" Text="Enter Economyseats"></asp:Label></td>
<td>
    <asp:TextBox ID="txteconomyseat" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle"  class="genric-btn primary"
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
                    onclick="btndelete_Click"  />
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
<div id="Export"  >&nbsp; <h4> <center>PLANE LIST</center></h4>
        <asp:GridView ID="grdplane_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
         <Columns>
                            <asp:TemplateField HeaderText="Plane Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Plane_Id') %>"
                                        CommandName="Plane_Id" CommandArgument='<%#Bind("Plane_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Plane_Name" HeaderText="Plane Name" />
                            <asp:BoundField DataField="Business_Seat" HeaderText="Business Seat" />
                            <asp:BoundField DataField="Economy_Seat" HeaderText="Economy Seat" />
                            
                        </Columns>

        </asp:GridView>
          <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>



    <asp:HiddenField ID="planeid" runat="server" />
    </div>
    </div>
</asp:Content>



