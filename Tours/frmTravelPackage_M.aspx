<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmTravelPackage_M.aspx.cs" Inherits="frmTravelPackage_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Travel Package			
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
    <asp:Label ID="lblpackageid" runat="server" Text="Enter Packageid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlpackageid" runat="server">
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblbusid" runat="server" Text="Enter Busid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlbusid" runat="server">
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbltrainid" runat="server" Text="Enter Trainid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddltrainid" runat="server">
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblplaneid" runat="server" Text="Enter Planeid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlplaneid" runat="server">
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcarid" runat="server" Text="Enter Carid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlcarid" runat="server">
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblrateperseat" runat="server" Text="Enter Rate per seat"></asp:Label></td>
<td>
    <asp:TextBox ID="txtrateperseat" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtrateperseat" ErrorMessage="Enter A RatePerSeat" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>

<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle"   class="genric-btn primary"
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"   
        class="genric-btn primary" onclick="btnsave_Click" ValidationGroup="a" /></td>
</tr>
<tr>
<td>
    <asp:Button ID="btnupdate" runat="server" Text="Update"  class="genric-btn primary"
        onclick="btnupdate_Click" /></td>
    <td><asp:Button ID="btndelete" runat="server" Text="Delete"  class="genric-btn primary"
            onclick="btndelete_Click" /></td>

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
    
<div>
<div id="Export"  >&nbsp; <h4> <center>TRAVEL PACKAGE LIST</center></h4>
<asp:GridView ID="grdtravelpackage_m" runat="server"  OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
 <Columns>
                            <asp:TemplateField HeaderText="Travel Package id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Tpid') %>"
                                        CommandName="Tpid" CommandArgument='<%#Bind("Tpid") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Package_Id" HeaderText="Package Id" />
                            <asp:BoundField DataField="Bus_Id" HeaderText="Bus Id" />
                            <asp:BoundField DataField="Train_Id" HeaderText="Train Id" />
                            <asp:BoundField DataField="Plane_Id" HeaderText="Plane Id" />
                            <asp:BoundField DataField="Car_Id" HeaderText="Car Id" />
                            <asp:BoundField DataField="RatePerSeat" HeaderText="Rate Per Seat" />
                            
                        </Columns>
    </asp:GridView>
      <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>


<asp:HiddenField ID="travelpackageid" runat="server" />
</div>
</div>
</asp:Content>

