<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmReservation_M.aspx.cs" Inherits="frmReservation_M" %>

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
        <div class="col-lg-12 col-sm-12 col-12 header-top-left">
            <div class="row">
                <div class="col-lg-4 col-sm-4 col-4 header-top-left">
                </div>
                <%  // if (Session["Type"].ToString() != "A")
         //                {
                %>
                <table>
                    <tr>
                        <td valign="top" width="50%">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Journey Starts From"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstartingdate"
                                            ErrorMessage="Enter A Starting Date" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Journey Ends @"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtendingdate"
                                            ErrorMessage="Enter A Ending Date" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblreservationdate" runat="server" Text="Enter Reservationdate"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtreservationdate" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblstartingdate" runat="server" Text="Enter Startingdate"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtstartingdate" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblendingdate" runat="server" Text="Enter Endingdate"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtendingdate" runat="server"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtstartingdate"
                                            ControlToValidate="txtendingdate" ErrorMessage="Enter A Valid Date" ForeColor="Red"
                                            Operator="GreaterThanEqual" ValidationGroup="a"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblcustomerid" runat="server" Text="YOUR  Customerid"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlcustomerid" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblnoofpersons" runat="server" Text="Enter No of persons"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtnoofpersons" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpackageid" runat="server" Text="Enter Packageid"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlpackageid" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpackageid_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbltpid" runat="server" Text="Package Amount"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblamt" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblstatus" runat="server" Text="Enter Status"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblamount" runat="server" Text="Your Amount"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblfinalamount" runat="server" Text="Enter Final Amount"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtfinalamount" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" class="genric-btn primary"
                                            OnClick="btncancel_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnpay" runat="server" Text="Calculate My Payment" class="genric-btn primary"
                                            OnClick="btnpay_Click" ValidationGroup="a" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Ur final amount : == >
                                    </td>
                                    <td>
                                        <asp:Label ID="lblpay" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpaymenttype" runat="server" Text="Enter Paymenttype"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlpaymenttype" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpaymenttype_SelectedIndexChanged">
                                            <asp:ListItem Text="CASH" Value="CASH"></asp:ListItem>
                                            <asp:ListItem Text="CHEQUE" Value="CHEQUE"></asp:ListItem>
                                            <asp:ListItem Text="CREDIT CARD" Value="CREDIT CARD"></asp:ListItem>
                                            <asp:ListItem Text="DEBIT CARD" Value="DEBIT CARD"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpaymentdate" runat="server" Text="Enter Paymentdate"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtpaymentdate" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblbankname" runat="server" Text="Enter Bankname"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblchequeno" runat="server" Text="Enter Cheque Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtchequeno" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblcardno" runat="server" Text="Enter Card Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcardno" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top" width="50%">
                            <table>
                                <tr id="tr1" runat="server">
                                    <td>
                                        TICKET # 1 : Enter first name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtf1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr2" runat="server">
                                    <td>
                                        Enter middle name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtm1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr3" runat="server">
                                    <td>
                                        Enter last name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtl1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr4" runat="server">
                                    <td>
                                        Enter bdate
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtb1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr5" runat="server">
                                    <td>
                                        Enter aadhar no
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txta1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr6" runat="server">
                                    <td>
                                        select gender
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drp1" runat="server">
                                            <asp:ListItem Text="select gender for 1st person" Value=""></asp:ListItem>
                                            <asp:ListItem Text="male" Value="male"></asp:ListItem>
                                            <asp:ListItem Text="female" Value="female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr id="tr7" runat="server">
                                    <td>
                                        TICKET # 2 : Enter first name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtf2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr8" runat="server">
                                    <td>
                                        Enter middle name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtm2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr9" runat="server">
                                    <td>
                                        Enter last name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtl2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr10" runat="server">
                                    <td>
                                        Enter bdate
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtb2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr11" runat="server">
                                    <td>
                                        Enter aadhar no
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txta2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="tr12" runat="server">
                                    <td>
                                        select gender
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drp2" runat="server">
                                            <asp:ListItem Text="select gender for 2nd person" Value=""></asp:ListItem>
                                            <asp:ListItem Text="male" Value="male"></asp:ListItem>
                                            <asp:ListItem Text="female" Value="female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                &nbsp;<asp:Button ID="btnconfirm" runat="server" Text="Confirm Booking" class="genric-btn primary"
                    OnClick="btnconfirm_Click" />&nbsp;
                <asp:Button ID="btnprn" runat="server" Text="Print Booking" class="genric-btn primary"
                    OnClick="btnprn_Click" />&nbsp;
                <%// }%>
            </div>
            <div class="col-lg-12 col-sm-12 col-12 header-top-left">
                <div class="row">
                    <div class="col-lg-4 col-sm-4 col-4 header-top-left">
                    </div>
                    <%
     //if (Session["Type"].ToString() == "A")
       //                  {
     
                    %>
                    <div style="width: 99%">
                        <div id="Div1">
                            &nbsp;
                            <h4>
                                <center>
                                    Customer RESERVATION LIST</center>
                            </h4>
                            <table>
                                <tr>
                                    <td>
                                        Enter From date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtfromdate" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        Enter To Date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txttodate" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                    <asp:Button ID="btnreport" runat="server" Text="Search" 
                                            class="genric-btn primary" onclick="btnreport_Click" /></td>
                                </tr>
                            </table>
                            <div id="Div2">
                                <asp:GridView ID="grdreservation_m" runat="server" Width="99%" AutoGenerateColumns="false"
                                    OnRowCommand="grd2_RowCommand">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Reservation Id">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Reservation_Id') %>"
                                                    CommandName="Reservation_Id" CommandArgument='<%#Bind("Reservation_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Reservation_date" HeaderText="Reservationdate" />
                                        <asp:BoundField DataField="Starting_date" HeaderText="Starting_date" />
                                        <asp:BoundField DataField="Ending_date" HeaderText="Ending date " />
                                        <asp:BoundField DataField="Customer_Id" HeaderText="Customer id" />
                                        <asp:BoundField DataField="NumberOfPerson" HeaderText="Number Of Person" />
                                        <asp:BoundField DataField="Package_Id" HeaderText="Package Id" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div id="Export" class="row">
                                <div class="col-lg-12 col-sm-12 col-12 header-top-left">
                                    <asp:Label ID="lblbill" runat="server"></asp:Label>
                                    <center>
                                        <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                            OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                                    </center>
                                </div>
                                <%//}%>
                                <asp:HiddenField ID="Reservationid" runat="server" />
                            </div>
                        </div>
                    </div>
</asp:Content>
