<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmCar_M.aspx.cs" Inherits="frmCar_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Car		
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
    <asp:Label ID="lbldetails" runat="server" Text="Choose Cardetails"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddldetails" runat="server">
    <asp:ListItem Text="Hatch-back" Value="Hatch-back"></asp:ListItem>
    <asp:ListItem Text="Saden" Value="Saden"></asp:ListItem>
    <asp:ListItem Text="SUV" Value="SUV"></asp:ListItem>
    <asp:ListItem Text="MUV" Value="MUV"></asp:ListItem>

    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblfueltype" runat="server" Text="Choose Fueltype"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlfueltype" runat="server">
     <asp:ListItem Text="Petrol" Value="Petrol"></asp:ListItem>
      <asp:ListItem Text="Deseal" Value="Deseal"></asp:ListItem>
       <asp:ListItem Text="Gas" Value="Gas"></asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblname" runat="server" Text="Enter Carname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Enter A Car Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Enter A Valid Carname" 
        ForeColor="Red" ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
   <td>
       <asp:Label ID="lblregistrationnumber" runat="server" Text="Enter Registrationnumber"></asp:Label></td>
   <td>
       <asp:TextBox ID="txtregistrationnumber" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle"  class="genric-btn primary"
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"  class="genric-btn primary" 
        onclick="btnsave_Click1" ValidationGroup="a" /></td>
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
<div id="Export"  >&nbsp; <h4> <center>CAR LIST</center></h4>
    
        <asp:GridView ID="grdcar_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width ="99%">
         <Columns>
                            <asp:TemplateField HeaderText="Car Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Car_Id') %>"
                                        CommandName="Car_Id" CommandArgument='<%#Bind("Car_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Car_Details" HeaderText="Car Details" />
                              <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel Type" />
                                <asp:BoundField DataField="Car_Name" HeaderText="Car Name" />
                                  <asp:BoundField DataField="Car_Registrationnumber" HeaderText="Car Registration Number" />
                                    
                        </Columns>

        </asp:GridView>
          </div>
            <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>

    
    <asp:HiddenField ID="carid" runat="server" />
    </div>
    </div>
</asp:Content>




    

