<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmfeedback.aspx.cs" Inherits="frmfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Feedback
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
     <td Width="50%"> Ur Email Id :</td>
     <td> <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
     </tr>
<tr>
<td>
    <asp:Label ID="lblfeedbackdescription" runat="server" Text="Enter Feedbackdescription"></asp:Label></td>
<td>
    <asp:TextBox ID="txtfeedbackdescription" runat="server" TextMode="MultiLine" Rows=3 Columns=50></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtfeedbackdescription" 
        ErrorMessage="Enter A Feedback Description" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td>
    <asp:Label ID="lbldate" runat="server" Text="Enter Date"></asp:Label></td>
<td>
    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle" class="genric-btn primary"  
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"  class="genric-btn primary" 
        onclick="btnsave_Click" ValidationGroup="a" /></td>
</tr>
 <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update"  class="genric-btn primary" 
                    onclick="btnupdate_Click"   />
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

<div>
    
    <asp:GridView ID="grdfeedback" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" width="99%">
         <Columns>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('email') %>"
                                        CommandName="email" CommandArgument='<%#Bind("email") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Feedback_description" HeaderText="Feedback Description" />
                              <asp:BoundField DataField="Date" HeaderText="Feedback Date" />
                                
                        </Columns>

        </asp:GridView>
    </div>
    <asp:HiddenField ID="feedbackid" runat="server" />
    </div>
    </div>
</asp:Content>






