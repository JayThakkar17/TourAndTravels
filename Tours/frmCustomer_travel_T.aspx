<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmCustomer_travel_T.aspx.cs" Inherits="frmCustomer_travel_T" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Reservation		
							</h1>	
							
						</div>	
					</div>
				</div>
			</section>
    <!-- End banner Area -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="row">
        <div class="col-lg-6 col-sm-6 col-6">
            <center>
    <table width="100%">
        <tr>
            <td width="50%">
                <asp:Label ID="lblnoofseats" runat="server" Text="Enter No Of Seats"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnoofseats" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltraveldatetime" runat="server" Text="Enter Travel Date Time"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttraveldatetime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblfrom" runat="server" Text="Enter From"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfrom" ErrorMessage="Enter A From Place" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfrom" ErrorMessage="Enter A Valid Value" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblto" runat="server" Text="Enter To"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtto" ErrorMessage="Enter A To Place" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtto" ErrorMessage="Enter A Valid Value" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltpid" runat="server" Text="Enter Tpid"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddltpid" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
            </td>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="SAVE" OnClick="btnsave_Click" 
                    ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
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
    <div>
        <asp:GridView ID="grdcustomertravelt" runat="server" OnRowCommand="grd2_RowCommand"
            AutoGenerateColumns="false" Width="99%">
            <Columns>
                <asp:TemplateField HeaderText="Reservation Id">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Reservation_Id') %>"
                            CommandName="Reservation_Id" CommandArgument='<%#Bind("Reservation_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NumberOfSeats" HeaderText="Number Of Seats" />
                <asp:BoundField DataField="Travel_DateTime" HeaderText="Travel DateTime" />
                <asp:BoundField DataField="TourFrom" HeaderText="From" />
                <asp:BoundField DataField="TourTo" HeaderText="To" />
                <asp:BoundField DataField="Tpid" HeaderText="TravelPackage Name" />
            </Columns>
        </asp:GridView>
        <asp:HiddenField ID="customertraveltid" runat="server" />
        </div>
        </div>
    </div>
</asp:Content>
