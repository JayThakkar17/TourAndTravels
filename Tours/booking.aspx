<%@ Page Title="" Language="C#" MasterPageFile="~/TravelsMasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table>
<tr>
<td>
    <asp:Label ID="lblfirstname" runat="server" Text="Enter Firstname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
    
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblmiddlename" runat="server" Text="Enter Middlename"></asp:Label></td>
<td>
    <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
   
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbllastname" runat="server" Text="Enter Lastname"></asp:Label></td>
<td>
    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
   
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lbladdressline" runat="server" Text="Enter Addressline1"></asp:Label></td>
<td>
    <asp:TextBox ID="txtaddressline" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblheight" runat="server" Text="Enter Height"></asp:Label></td>
<td>
    <asp:TextBox ID="txtheight" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblweight" runat="server" Text="Enter Weight"></asp:Label></td>
<td>
    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblcity" runat="server" Text="Enter City"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlcity" runat="server">
    
    </asp:DropDownList>
    </td>
    </tr>
    <tr>

    <td>
    <asp:Label ID="lblstate" runat="server" Text="Enter State"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlstste" runat="server">
    
    </asp:DropDownList>
    </td>



</tr>
<tr>
<td>
    <asp:Label ID="lblpincode" runat="server" Text="Enter Pincode"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcontactno" runat="server" Text="Enter Contactno"></asp:Label></td>
<td>
    <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
   
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblalcontactno" runat="server" Text="Enter altrernative Contactno"></asp:Label></td>
<td>
    <asp:TextBox ID="txtalcontactno" runat="server"></asp:TextBox>
   
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
    <asp:Label ID="lblbloodgrp" runat="server" Text="Enter BloodGroup"></asp:Label></td>
<td>
    <asp:TextBox ID="txtbloodgrp" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="lblroottype" runat="server" Text="Enter RootType"></asp:Label></td>
<td>
<asp:DropDownList ID="ddlroottype" runat="server">
    </asp:DropDownList></td>
   
</tr>

<tr>
<td>
    <asp:Label ID="lblnoofpeople" runat="server" Text="Enter No of People"></asp:Label></td>
<td>
    <asp:TextBox ID="txtnoofpeople" runat="server" ></asp:TextBox>
  
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="lblpaymenttype" runat="server" Text="Enter PaymentType"></asp:Label></td>
<td>
    <asp:DropDownList ID="ddlpaymenttype" runat="server">
    </asp:DropDownList></td>
</tr>


<tr>
<td>
    <asp:Label ID="lblamount" runat="server" Text="Enter Amount"></asp:Label></td>
<td>
    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
    </td>
</tr>


<tr>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancle" class="genric-btn primary"
        /></td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save"  class="genric-btn primary" 
        onclick="btnsave_Click" /></td>
</tr>
<tr>
<td>
     <asp:Button ID="btnupdate" runat="server" Text="Update"  class="genric-btn primary"
          /></td>
    <td><asp:Button ID="btndelete" runat="server" Text="Delete"  class="genric-btn primary"
             /></td>
        </tr>


</table>
</asp:Content>

