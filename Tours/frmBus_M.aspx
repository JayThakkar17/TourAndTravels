<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmBus_M.aspx.cs" Inherits="frmBus_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Bus		
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
                            <asp:Label ID="lblbusdetails" runat="server" Text="Enter Busdetails"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbusdetails" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a Bus Details"
                                ForeColor="Red" ControlToValidate="txtbusdetails" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbusdetails"
                                ErrorMessage="Enter A Valid Value" ForeColor="Red" ValidationExpression="[a-zA-Z]+"
                                ValidationGroup="a"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblfueltype" runat="server" Text="Choose Fueltype"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlfueltype" runat="server">
                                <asp:ListItem Text="Petrol" Value="Petrol"></asp:ListItem>
                                <asp:ListItem Text="Diesel" Value="Diesel"></asp:ListItem>
                                <asp:ListItem Text="CNG" Value="CNG"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblbusname" runat="server" Text="Enter Busname"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbusname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter A Valid Busname"
                                ForeColor="Red" ControlToValidate="txtbusname" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtbusname"
                                ErrorMessage="Enter A Valid Value" ForeColor="Red" ValidationExpression="[a-zA-Z]+"
                                ValidationGroup="a"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblregistrationnumber" runat="server" Text="Enter Registrationnumber"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtregistationnumber" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtregistationnumber"
                                ErrorMessage="Enter A Valid RegNumber" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtregistationnumber"
                                ErrorMessage="Enter A Valid RegNumber" ForeColor="Red" ValidationExpression="[a-zA-Z]+"
                                ValidationGroup="a"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblseatsappear" runat="server" Text="Enter Seatsappear"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtseatsappear" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btncancel" runat="server" Text="Cancle" class="genric-btn primary"
                                OnClick="btncancel_Click1" />
                        </td>
                        <td>
                            <asp:Button ID="btnsave" runat="server" Text="Save" class="genric-btn primary" OnClick="btnsave_Click"
                                ValidationGroup="a" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnupdate" runat="server" Text="Update" class="genric-btn primary"
                                OnClick="btnupdate_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btndelete" runat="server" Text="Delete" class="genric-btn primary"
                                OnClick="btndelete_Click" />
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
                <div id="Export">
                    &nbsp;
                    <h4>
                        <center>
                            BUS LIST</center>
                    </h4>
                    <asp:GridView ID="grdbus_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false"
                        Width="99%">
                        <Columns>
                            <asp:TemplateField HeaderText="Bus Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Bus_Id') %>"
                                        CommandName="Bus_Id" CommandArgument='<%#Bind("Bus_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Bus_Details" HeaderText="Bus_Details" />
                            <asp:BoundField DataField="fuel_Type" HeaderText="Fuel Type" />
                            <asp:BoundField DataField="Bus_Name" HeaderText="Bus Name" />
                            <asp:BoundField DataField="Registration_No" HeaderText="Registration Number" />
                            <asp:BoundField DataField="Seats_Appears" HeaderText="Seats Appears" />
                        </Columns>
                    </asp:GridView>
                </div>
                <center>
                    <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                        OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                </center>
                <asp:HiddenField ID="busid" runat="server" />
            </div>
            </div> 
</asp:Content>
