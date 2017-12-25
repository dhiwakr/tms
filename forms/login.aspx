<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="tms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="top_marquee">
                <marquee direction="left"><strong>
                    <img src="../pictures/lorry.jpg" />
                      <img src="../pictures/privates.jpg" />
                      <img src="../pictures/truck.jpg" />
                      <img src="../pictures/trucks.jpg" />
                 </strong></marquee>
                
            </div>
            <div class="container">

                <img src="../pictures/index.png" />


                <div class="form_input">
                    <asp:TextBox CssClass="user" runat="server" placeholder="enter username" ID="txtUseName"></asp:TextBox>
                </div>
                <div class="form_input">
                    <asp:TextBox CssClass="pass" runat="server" TextMode="password" placeholder="enter password" ID="txtPassword"></asp:TextBox>
                </div>
               
                <asp:Button CssClass="btn_login" ID="cmdOK" runat="server" Text="Logon" Enabled="true"></asp:Button>
                <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 574px; top: 741px; position: absolute; height: 39px" Text="logout" Width="106px" />
                <br />
                <a href="#">forget password</a>
              
                <a href="reg/registration.aspx" style="z-index: 1; left: 478px; top: 853px; position: absolute; width: 118px">Create Account</a>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 705px; top: 421px; position: absolute" Visible="False"></asp:Label>
            </div>


            <div class="right_marquee">
                <marquee direction="right"><strong> 
                     <img src="../pictures/private.jpg" />
                      <img src="../pictures/schoolbus.jpg" />
                      <img src="../pictures/school bus.jpg" />
                     
                                          </strong></marquee>

            </div>


        </div>
    </form>
</body>
</html>
