<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmCity_M.aspx.cs" Inherits="frmCity_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								City				
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
                        <div class="contact-details">
                            <h5>
                                Enter Cityname</h5>
                            <p>
                                &nbsp;</p>
                        </div>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtname" runat="server" class="common-input mb-20 form-control"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="Enter A Valid City" 
                            ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="Enter A  Valid City" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]+" ValidationGroup="a"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="contact-details">
                            <h5>
                                Choose Statename</h5>
                        </div>
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="ddlstatename" runat="server" class="common-input mb-20 form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" class="genric-btn primary"
                            OnClick="btncancel_Click" />
                        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" 
                            class="genric-btn primary" ValidationGroup="a" />
                        <asp:Button ID="btnupdate" runat="server" Text="Update" class="genric-btn primary"
                            OnClick="btnupdate_Click" /></td>
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
        </div>
        
            <div id="Export"  >&nbsp; <h4> <center>CITY LIST</center></h4>
                <asp:GridView ID="grdcity_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" CssClass="cat-list"
                    Width="98%"  HeaderStyle-Font-Bold="true">
                    <Columns>
                        <asp:TemplateField HeaderText="City Id">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('[City Id]') %>"
                                    CommandName="City_Id" CommandArgument='<%#Bind("[City Id]") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="City Name" HeaderText="City Name" />
                        <asp:BoundField DataField="State Name" HeaderText="State Id" />
                    </Columns>
                </asp:GridView>
            

            </div>
            <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>
            <asp:HiddenField ID="cityid" runat="server" />
        </div>
    </div>
</asp:Content>
