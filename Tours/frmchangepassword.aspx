<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmchangepassword.aspx.cs" Inherits="frmchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">	
                
					<div class="row d-flex align-items-center  justify-content-center">
                    
						<div class="about-content col-lg-12">
							<h1 class="text-white">
                            Change Password
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
    <asp:Label ID="lbloldpassword" runat="server" Text="Enter Old Password"></asp:Label></td>
<td>
    <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblnewpassword" runat="server" Text="Enter New Password"></asp:Label></td>
<td>
    <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtnewpassword" ErrorMessage="Enter A Password...." 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>


<tr>
<td>
    <asp:Label ID="lblconfirmpassword" runat="server" Text="Enter Confirm password"></asp:Label></td>
<td>
    <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtconfirmpassword" ControlToValidate="txtnewpassword" 
        ErrorMessage="Password not match" ForeColor="Red" ValidationGroup="a"></asp:CompareValidator>
    </td>
</tr>


<tr>
 
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click1" ValidationGroup="a"  class="genric-btn primary"  />
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

</asp:Content>

