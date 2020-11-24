<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Login	
							</h1>	
							
						</div>	
					</div>
				</div>
			</section>
    <!-- End banner Area -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="row">
			  			<div class="col-lg-4 col-sm-4 col-4"></div>
			  	<div class="col-lg-4 col-sm-4 col-4">
<table>
<tr>
<td>
    <asp:Label ID="lblemail" runat="server" Text="Enter Email"></asp:Label></td>
<td>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Enter A Email Address" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>


<tr>
<td>
    <asp:Label ID="lblpassword" runat="server" Text="Enter Password"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtpassword" ErrorMessage="Enter A Password...." 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>


<tr>

<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle" 
       class="genric-btn primary" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Submit" onclick="btnsave_Click" 
        class="genric-btn primary" ValidationGroup="a" /></td>
</tr>
 <tr>
            <td>
                <asp:Button ID="btnforgetpassword" runat="server" Text="Forget Password" 
                    onclick="btnforgetpassword_Click" class="genric-btn primary"  />
            </td>
            
        
            <td>
                <asp:Button ID="btnchangepassword" runat="server" Text="Sign IN" 
                    onclick="btnchangepassword_Click" class="genric-btn primary"    />
            </td>
            
        </tr>
</table>
</div>
<div class="col-lg-4 col-sm-4 col-4"></div>
</div>
    <asp:HiddenField ID="loginid" runat="server" 
        onvaluechanged="loginid_ValueChanged" />
</asp:Content>




