<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmCustomer_M.aspx.cs" Inherits="frmCustomer_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Customer			
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
    <asp:Label ID="lblfirstname" runat="server" Text="Enter Firstname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtfirstname" ErrorMessage="Enter a First Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblmiddlename" runat="server" Text="Enter Middlename"></asp:Label></td>
<td>
    <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtmiddlename" ErrorMessage="Enter a Middle Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbllastname" runat="server" Text="Enter Lastname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtlastname" ErrorMessage="Enter a Last Name" 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline1" runat="server" Text="Enter Addressline1"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline2" runat="server" Text="Enter Addressline2"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline3" runat="server" Text="Enter Addressline3"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcity" runat="server" Text="Choose City"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlcity" runat="server">
    
    </asp:DropDownList>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblpincode" runat="server" Text="Enter Pincode"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtpincode" ErrorMessage="Enter A Valid Pincode" 
        ForeColor="Red" ValidationExpression="\d{6}" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcontactno1" runat="server" Text="Enter Contactno1"></asp:Label></td>
<td>
    <asp:TextBox ID="txtcontactno1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtcontactno1" ErrorMessage="Enter A Valid Number" 
        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcontactno2" runat="server" Text="Enter Contactno2"></asp:Label></td>
<td>
    <asp:TextBox ID="txtcontactno2" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtcontactno2" ErrorMessage="Enter a valid Number" 
        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblemail" runat="server" Text="Enter Email"></asp:Label></td>
<td>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblbirthdate" runat="server" Text="Enter Birthdate"></asp:Label></td>
<td>
    <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>
</tr>
<tr>
<td>
    <asp:Label ID="lblgender" runat="server" Text="Select Gender"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlgender" runat="server">
    <asp:ListItem Text ="Male" Value = 0></asp:ListItem>
    <asp:ListItem Text ="Female" Value = 1></asp:ListItem>
    </asp:DropDownList>
    </td>
    </tr>

    

    
<tr>
<td>
    <asp:Label ID="lblaadharno" runat="server" Text="Enter Aadharno"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaadharno" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblpassword" runat="server" Text="Enter Password"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtpassword" ErrorMessage="Enter A Password...." 
        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td>
    <asp:Label ID="lblconfirmpassword" runat="server" Text="Enter confirmpassword"></asp:Label></td>
<td>
    <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" 
        ErrorMessage="Password Not Match" ForeColor="Red" ValidationGroup="a"></asp:CompareValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblquestionid" runat="server" Text="Enter Questionid"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlquestionid" runat="server">
    </asp:DropDownList></td>
</tr>


<tr>
<td>
    <asp:Label ID="lblsecurityanswer" runat="server" Text="Enter Securityanswer"></asp:Label></td>
<td>
    <asp:TextBox ID="txtsecurityanswer" runat="server"></asp:TextBox>
    </td>
</tr>


<tr>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle"  class="genric-btn primary"
        onclick="btncancel_Click" /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"  class="genric-btn primary" 
        onclick="btnsave_Click" ValidationGroup="a" /></td>
</tr>
<tr>
<td>
     <asp:Button ID="btnupdate" runat="server" Text="Update"  class="genric-btn primary"
         onclick="btnupdate_Click"  /></td>
    <td><asp:Button ID="btndelete" runat="server" Text="Delete"  class="genric-btn primary"
            onclick="btndelete_Click" /></td>
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
<div id="Export"  >&nbsp; <h4> <center>CUSTOMER LIST</center></h4>
    <asp:GridView ID="grdcustomer_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
     <Columns>
                            <asp:TemplateField HeaderText="Customer_Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Customer_Id') %>"
                                        CommandName="Customer_Id" CommandArgument='<%#Bind("Customer_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="First_Name" HeaderText="First Name" />
                            <asp:BoundField DataField="Middle_Name" HeaderText="Middle Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" />
                            <asp:BoundField DataField="Address_Line1" HeaderText="AddressLine 1" />
                            <asp:BoundField DataField="Address_Line2" HeaderText="AddressLine 2" />
                            <asp:BoundField DataField="Address_Line3" HeaderText="AddressLine 3" />
                            <asp:BoundField DataField="City" HeaderText="City" />
                            <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                            <asp:BoundField DataField="Contact_No1" HeaderText="ContactNo 1" />
                            <asp:BoundField DataField="Contact_No2" HeaderText="ContactNo 2" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="Aadhar_No" HeaderText="Aadhar No" />
                            <asp:BoundField DataField="Password" HeaderText="Password" />
                            <asp:BoundField DataField="Confirm_Password" HeaderText="Confirm Password" />
                            <asp:BoundField DataField="Questionid" HeaderText="Question Id" />
                            <asp:BoundField DataField="Securityanswer" HeaderText="Security Answer" />
                            
                        </Columns>
    </asp:GridView>
      </div>
            <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>
                        </div>
                        </div>



<asp:HiddenField ID="customerid" runat="server" />
</asp:Content>

