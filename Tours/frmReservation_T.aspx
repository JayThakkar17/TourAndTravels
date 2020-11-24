<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmReservation_T.aspx.cs" Inherits="frmReservation_T" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Reservation_T	
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
    <asp:Label ID="lblfirstname" runat="server" Text="Enter Firstname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtfirstname" ErrorMessage="Enter A First Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtfirstname" ErrorMessage="Enter A Valid Name" 
        ForeColor="Red" ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblmiddlename" runat="server" Text="Enter Middlename"></asp:Label></td>
<td>
   <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtmiddlename" ErrorMessage="Enter A Middle Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtmiddlename" ErrorMessage="Enter A Valid Middle Name" 
        ForeColor="Red" ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbllastname" runat="server" Text="Enter Lastname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtlastname" ErrorMessage="Enter A Last Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtlastname" ErrorMessage="Enter A Valid Last Name" 
        ForeColor="Red" ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblbirthdate" runat="server" Text="Enter Birthdate"></asp:Label></td>
<td>
    <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblaadharno" runat="server" Text="Enter Aadharno"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaadharno" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblgender" runat="server" Text="Enter Gender"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlmalefemale" runat="server">
    <asp:ListItem Text="MALE" Value=1></asp:ListItem>
    <asp:ListItem Text="FEMALE" Value=2></asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>
<tr>

<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancel" 
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
        ValidationGroup="a" /></td>
</tr>
<tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click"  />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click"  />
            </td></tr>
</table>
 </center>
        </div>
        <div class="col-lg-6 col-sm-6 col-6">
            <div id="Div3">
                &nbsp;
                <h4>
                    <center>
                    </center>
                </h4>
<div>
 <div id="Export">
        <div id="Div1">
            &nbsp;
            <h4>
                <center>
                    CUSTOMER RESERVATION LIST</center>
            </h4>
            <div id="Div2">
    <asp:GridView ID="grdreservation_t" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
         <Columns>
                            <asp:TemplateField HeaderText="Reservation Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Reservation_Id') %>"
                                        CommandName="Reservation_Id" CommandArgument='<%#Bind("Reservation_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" />
                            
                        </Columns>
    </asp:GridView>
</div>
<center>
                <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                    OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
            </center>
 <asp:HiddenField ID="reservationid" runat="server" />
 </div>
 </div>
</asp:Content>

