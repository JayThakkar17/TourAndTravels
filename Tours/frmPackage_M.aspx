<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmPackage_M.aspx.cs" Inherits="frmPackage_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- start banner Area -->
    <section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Package			
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
                <asp:Label ID="lblpackagename" runat="server" Text="Enter Packagename"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpackagename" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpackagename" ErrorMessage="Enter A Package Name" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblprice" runat="server" Text="Enter Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblnoofdays" runat="server" Text="Enter No of days"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnoofdays" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcityid" runat="server" Text="Enter Cityid"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcityid" runat="server">
                </asp:DropDownList>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpackagetype" runat="server" Text="Enter Packagetype"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpackagetype" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpackagetype" ErrorMessage="Enter A Package Type" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltravelmode" runat="server" Text="Enter Travelmode"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddltravelmode" runat="server">
                    <asp:ListItem Text="Bus" Value="Bus"></asp:ListItem>
                    <asp:ListItem Text="Train" Value="Train"></asp:ListItem>
                    <asp:ListItem Text="Plane" Value="Plane"></asp:ListItem>
                    <asp:ListItem Text="Car" Value="Car"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblhotelid" runat="server" Text="Enter Hotelid"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlhotelid" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancle" CssClass="genric-btn primary"
                    OnClick="btncancel_Click" />
            </td>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="genric-btn primary"
                    OnClick="btnsave_Click" ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="genric-btn primary"
                    OnClick="btnupdate_Click" />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="genric-btn primary"
                    OnClick="btndelete_Click" />
            </td>
        </tr>
    </table>
    </center>
        </div>
        <div class="col-lg-6 col-sm-6 col-6">
            <div id="Div2">
                &nbsp;
                <h4>
                    <center>
                    </center>
                </h4>
    <div id="Export">
        &nbsp;
        <h4>
            <center>
                </center>
        </h4>
        <div id="Div1"  >&nbsp; <h4> <center>PACKAGE LIST</center></h4>
        <asp:GridView ID="grdpackage_m" runat="server" OnRowCommand="grd2_RowCommand" AutoGenerateColumns="false" Width="99%">
            <Columns>
                <asp:TemplateField HeaderText="Package Id">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue" Text="<%#Bind('Package_Id') %>"
                            CommandName="Package_Id" CommandArgument='<%#Bind("Package_Id") %>'><i class="fa fa-2x fa-file"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Package_Name" HeaderText="Package Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="No_Of_Days" HeaderText="No Of Days" />
                <asp:BoundField DataField="City_Id" HeaderText="City Id" />
                <asp:BoundField DataField="Type" HeaderText="Type" />
                <asp:BoundField DataField="Travel_Mode" HeaderText="Travel Mode" />
                <asp:BoundField DataField="Hotel_id" HeaderText="Hotel Id" />
            </Columns>
        </asp:GridView>
        <center>
            <asp:LinkButton ID="LinkButton2" TabIndex="6" CssClass="btn btn-success" runat="server"
                OnClientClick="Print('Export')('export','export')"><i class="glyphicon glyphicon-print">
                        </i> Print  /  Export to PDF</asp:LinkButton>
        </center>
        </div>
        <asp:HiddenField ID="packageid" runat="server" />
        </div>
        </div>
</asp:Content>
