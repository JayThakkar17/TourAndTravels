<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="frmTrain_M.aspx.cs" Inherits="frmTrain_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Train		
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
    <asp:Label ID="lbltype" runat="server" Text="Enter Traintype"></asp:Label></td>
<td>
    <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txttype" ErrorMessage="Enter A Train Type" ForeColor="Red" 
        ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbltraintime" runat="server" Text="Enter Train Time"></asp:Label></td>
<td>
    <asp:TextBox ID="txttraintime" runat="server"></asp:TextBox>
   </td>
    </tr>
<tr>
<td>
    <asp:Label ID="lbltrainno" runat="server" Text="Enter Train no"></asp:Label></td>
<td>
    <asp:TextBox ID="txttrainno" runat="server"></asp:TextBox></td>
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
                    onclick="btnupdate_Click"  />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete"  class="genric-btn primary"
                    onclick="btndelete_Click" />
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
<div id="Export"  >&nbsp; <h4> <center>TRAIN LIST</center></h4>
    <asp:GridView ID="grdtrain_m" runat="server"  OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
    <Columns>
                            <asp:TemplateField HeaderText="Train Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Train_Id') %>"
                                        CommandName="Train_Id" CommandArgument='<%#Bind("Train_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Train_Type" HeaderText="Train Type" />
                             <asp:BoundField DataField="Train_Time" HeaderText="Train Time" />
                              <asp:BoundField DataField="Train_No" HeaderText="Train No" />
                            
                        </Columns>

    </asp:GridView>
      <center>
                            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
                        </center>



    <asp:HiddenField ID="trainid" runat="server" />
    </div>
    </div>
    
</asp:Content>

