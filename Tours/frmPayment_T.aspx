<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmPayment_T.aspx.cs" Inherits="frmPayment_T" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Payment		
							</h1>	
							
						</div>	
					</div>
				</div>
			</section>
    <!-- End banner Area -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td>
    <asp:Label ID="lblpaymenttype" runat="server" Text="Enter Paymenttype"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlpaymenttype" runat="server">
    <asp:ListItem Text="CASH" Value=1></asp:ListItem>
    <asp:ListItem Text="CHEQUE" Value=2></asp:ListItem>
    <asp:ListItem Text="CREDIT CARD" Value=3></asp:ListItem>
    <asp:ListItem Text="DEBIT CARD" Value=4></asp:ListItem>

    </asp:DropDownList>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblpaymentdate" runat="server" Text="Enter Paymentdate"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpaymentdate" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblbankname" runat="server" Text="Enter Bankname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox></td>
</tr>


<tr>

<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle" 
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" /></td>
</tr>
  <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" />
            </td>
        </tr>
</table>
 <div>
  <div id="Export">
        <div id="Div1">
            &nbsp;
            <h4>
                <center>
                     PAYMENT LIST</center>
            </h4>
            <div id="Div2">
        <asp:GridView ID="grdpayment_t" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false">
         <Columns>
                            <asp:TemplateField HeaderText="Reservation Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Reservation_Id') %>"
                                        CommandName="Reservation_Id" CommandArgument='<%#Bind("Reservation_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Payment_Type" HeaderText="Payment Type" />
                            <asp:BoundField DataField="Payment_Date" HeaderText="Payment Date" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                            <asp:BoundField DataField="BankName" HeaderText="Bank Name" />
                            
                        </Columns>

        </asp:GridView>
    </div>
    <center>
            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
        </center>
        </div>
    <asp:HiddenField ID="paymentid" runat="server" />
</asp:Content>



