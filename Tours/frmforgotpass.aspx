<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmforgotpass.aspx.cs" Inherits="frmforgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Forgot Password	
							</h1>	
							
						</div>	
					</div>
				</div>
			</section>
    <!-- End banner Area -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <div class="row">
        <div class="col-lg-6 col-sm-6 col-6">
            <center>

        <table width="100%">
            <tr>
                <td width="50%">Email Address</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter A Email Address" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    onclick="btncancel_Click" class="genric-btn primary radius"/>
            </td>
            <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submits" OnClick="btnSubmit_Click" 
                    class="genric-btn primary radius" ValidationGroup="a"/>
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
    </div>
    </div>

</asp:Content>

