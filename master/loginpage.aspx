<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title>Login Page</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="login page/css/style.css" />
    <link rel="stylesheet" type="text/css" href="login page/css/fontawesome-all.css" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet" />
    <script type="text/javascript" src="login page/js/jquery1_12_1.js"></script>
    <script type="text/javascript" src="login page/js/jquery-3_3_1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#signup_btn").click(function () {
                $("#inner_box").animate({ left: "28%" }, 400);
                $("#inner_box").animate({ left: "30%" }, 500);
                $("#login_information").css("visibility", "hidden");
                $("#login_information").animate({ left: "25%" }, 500);

                $("#signup_information").animate({ left: "28%" }, 500);
                $("#signup_information").animate({ left: "30%" }, 500);
                $("#signup_information").css("visibility", "visible");
            })
            $("#login_btn").click(function () {
                $("#inner_box").animate({ left: "72%" }, 400);
                $("#inner_box").animate({ left: "70%" }, 500);

                $("#signup_information").css("visibility", "hidden");
                $("#signup_information").animate({ left: "75%" }, 500);

                $("#login_information").animate({ left: "72%" }, 500);
                $("#login_information").animate({ left: "70%" }, 500);
                $("#login_information").css("visibility", "visible");
            })
        });
        /*box-shadow: 2px 2px 2px 0px rgba(0, 0, 0, .2) inset,-2px -2px 2px 0px rgba(0, 0, 0, .2) inset;*/
        9
    </script>
</head>

<body class="login_body">

    <section id="login_page_section">
        <form runat="server">
            <div id="main_box">
                <div id="inner_box"></div>

                <div id="login_information" runat="server">
                    <center>
                    <div class="logo">
                    <a href="temp1.aspx">
                        <img src="assets/images/VisaCafe_Logo.png" alt="Global Opportunities Logo" width="190" height="130" /></a>
                </div>
                        </center> 
                    <h2>Login</h2>
                    <div class="email">
                        <%--input type="email" placeholder="Email" />--%>
                        <asp:TextBox ID="txtemail" placeholder="Email" runat="server"></asp:TextBox>
                    </div>

                    <div class="password">

                        <%--<input type="password" placeholder="Password" />--%>
                        <asp:TextBox ID="txtpassword" textmode="Password" placeholder="password" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </div>
                    
                    <%--<div class="submit">
            <input type="Submit" value="Submit"/>
			</div>--%>
                </div>
<%----Signup---------------------------------------------------------------------------%>
                <div id="signup_information" runat="server">
                  
                    <h2>Register</h2>
                    <div class="name" runat="server">


                        <asp:TextBox ID="txtfname" placeholder="First Name(SurName)" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="First Name"/>--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtmname" placeholder="Middle Name(YourName)" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Middle Name"/>--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtlname" placeholder="Last Name(FatherName)" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Last Name" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtaddone" placeholder="Address Line One" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Address Line One" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtaddtwo" placeholder="Address Line Two" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Address Line Two" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtaddthree" placeholder="Address Line Three" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Address Line Three" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtphoneone" placeholder="Mobile One" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Mobile One" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtphonetwo" placeholder="Mobile Two" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Mobile Two" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtstate" placeholder="State" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Address Line Three" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtcid" placeholder="City Id" runat="server"></asp:TextBox>
                        <%--				<input type="text" placeholder="City Id" />--%>
                    </div>
                    <div class="name" runat="server">
                        <asp:TextBox ID="txtpin" placeholder="Pincode" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Pincode" />--%>
                    </div>
                    <div class="email" runat="server">
                        <asp:TextBox ID="txtremail" placeholder="Email" runat="server"></asp:TextBox>
                        <%--<input type="email" placeholder="Email" />--%>
                    </div>
                     
                    <div class="password" runat="server">
                        <asp:TextBox ID="txtrpassword" TextMode="Password"  placeholder="Password" runat="server"></asp:TextBox>
                        <%--<input type="password" placeholder="Password" />--%>
                    </div>
                    <div class="password" runat="server">
                        <asp:TextBox ID="txtcpassword" Textmode="Password"  placeholder="Confirm Password" runat="server"></asp:TextBox>
                        <%--<input type="password" placeholder="Confirm Password" />--%>
                        
                   </div>
                         <%--<div class="Type" runat="server">
                        <asp:DropDownList ID="drpType" runat="server" OnClick="btnsubmit_Click" placeholder="Confirm Password">
                    <asp:ListItem>A-Admin</asp:ListItem>
                   
                    <asp:ListItem>C-Consultant</asp:ListItem>
                            <asp:ListItem>F-Faculty</asp:ListItem>
                             <asp:ListItem>U-User</asp:ListItem>
                        </asp:DropDownList>
               
                    </div>
                    <div class="Visa Cafe Name" runat="server">
                         <asp:DropDownList ID="drpVisa" runat="server"  placeholder="Visa Cafe Name"></asp:DropDownList>
                        
                        
                        
                    </div>--%>

                    <div class="submit" runat="server">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                        <%--<asp:Button ID="btnsubmit" runat="server" Text="Submit" />--%>
                    </div>
               

                </div>
     <%---------------------end signup------------------------------------%>
                <div class="login_msg">Have an account?</div>
                <div class="signup_msg">Don't Have an account?</div>

                <input type="button" id="login_btn" value="Login" />
                <input type="button" id="signup_btn" value="Register" />
            </div>
        </form>
    </section>

</body>
</html>
