<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmState_M.aspx.cs" Inherits="frmState_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								State			
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
                <asp:Label ID="lblname" runat="server" Text="Enter state name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter A Valid State Name " 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter A Valid Value" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click"
                    class="genric-btn primary"  />
            </td>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" 
                    class="genric-btn primary" ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click"
                    class="genric-btn primary" />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click"
                    class="genric-btn primary" />
            </td>
        </tr>
    </table>
    </center>
    </div>
    <div class="col-lg-6 col-sm-6 col-6">
    
    <div id="Export">
        &nbsp;
        <h4>
            <center>
                </center>
        </h4>
    <div id="Div1"  >&nbsp; <h4> <center>STATE LIST</center></h4>
        <asp:GridView ID="grdstate_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
            <Columns>
                <asp:TemplateField HeaderText="State Id">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('State_Id') %>"
                            CommandName="State_Id" CommandArgument='<%#Bind("State_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="State_Name" HeaderText="State_Name" />
            </Columns>
        </asp:GridView>
    </div>
    <center>
        <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
            OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
    </center>
    <asp:HiddenField ID="Stateid" runat="server" />
    </div>
    </div> 
</asp:Content>
