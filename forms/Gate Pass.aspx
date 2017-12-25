<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="Gate Pass.aspx.vb" Inherits="tms.Gate_Pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../java/myjava.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 294px;
        }
        .auto-style3 {
            width: 291px;
        }
        .auto-style4 {
            width: 290px;
        }
        .auto-style5 {
            width: 250px;
        }
        .auto-style6 {
            width: 247px;
        }
        .auto-style7 {
            width: 212px;
        }
        .auto-style10 {
            width: 137px;
        }
        .auto-style11 {
            width: 267px;
        }
        .auto-style12 {
            width: 144px;
        }
        .auto-style14 {
            width: 245px;
        }
        .auto-style15 {
            width: 244px;
        }
        .auto-style17 {
            width: 301px;
        }
        .auto-style19 {
            width: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Style="left: 596px; position: absolute; top: 40px"
        Width="897px" BackColor="GreenYellow" BorderColor="Yellow" BorderStyle="Double">
        <div>
            <fieldset id="fieldset">
                <legend>Employee Details</legend>





                
<table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Employee Code"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtEmpcode" Text="Employee code" ForeColor="Gray" 
                                onblur="creatwatermark('Employee code',this);" onfocus="clearwatermark('Employee code',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Image ID="imgDriver" runat="server" Height="81px" src="love" Style="z-index: 117; left: 755px; position: absolute; top: 23px"
                                Width="82px" />
                            <asp:Label ID="Label17" runat="server" Text="Surname"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSurname" Text="Surname" ForeColor="Gray" 
                                onblur="creatwatermark('Surname',this);" onfocus="clearwatermark('Surname',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtEmpName" Text="Name" ForeColor="Gray" 
                                onblur="creatwatermark('Name',this);" onfocus="clearwatermark('Name',this)"  runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdepartment" Text="Department" ForeColor="Gray" 
                                onblur="creatwatermark('Department',this);" onfocus="clearwatermark('Department',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>




            </fieldset>

             <fieldset id="Gate Pass">
                <legend>Employee Details</legend>


                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label14" runat="server" Text="Gate Pass"></asp:Label>
                         </td>
                         <td class="auto-style15">
                             <asp:TextBox ID="txtGatePass" Text="GatePass" ForeColor="Gray" 
                                onblur="creatwatermark('GatePass',this);" onfocus="clearwatermark('GatePass',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                         </td>
                         <td>&nbsp;</td>
                         <td class="auto-style10">
                             <asp:Label ID="Label20" runat="server" Text="Day out"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="txtDayOut" Text="DayOut" ForeColor="Gray" 
                                onblur="creatwatermark('DayOut',this);" onfocus="clearwatermark('DayOut',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pictures/cale.png" style="z-index: 1; left: 805px; top: 173px; position: absolute; height: 14px" />
                             <asp:Calendar ID="Calendar2" runat="server" style="height: 154px; width: 230px; z-index: 1; left: 610px; top: 197px; position: absolute"></asp:Calendar>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label4" runat="server" Text="Vehicle Registration"></asp:Label>
                         </td>
                         <td class="auto-style15">
                             <asp:TextBox ID="txtVehicleRegistration" Text="VehicleRegistration" ForeColor="Gray" 
                                onblur="creatwatermark('VehicleRegistration',this);" onfocus="clearwatermark('VehicleRegistration',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                         </td>
                         <td>&nbsp;</td>
                         <td class="auto-style10">
                             <asp:Label ID="Label21" runat="server" Text="Day in"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="txtDayIn" Text="DayIn" ForeColor="Gray" 
                                onblur="creatwatermark('DayIn',this);" onfocus="clearwatermark('DayIn',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pictures/cale.png" style="z-index: 1; left: 799px; top: 208px; position: absolute; height: 15px; width: 27px" />
                             <asp:Calendar ID="Calendar3" runat="server" style="z-index: 1; left: 610px; top: 231px; position: absolute; height: 154px; width: 230px"></asp:Calendar>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label9" runat="server" Text="Authorized By"></asp:Label>
                         </td>
                         <td class="auto-style15">
                             <asp:TextBox ID="txtAuthorisedBy" Text="AuthorisedBy" ForeColor="Gray" 
                                onblur="creatwatermark('AuthorisedBy',this);" onfocus="clearwatermark('AuthorisedBy',this)"  runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                         </td>
                         <td>&nbsp;</td>
                         <td class="auto-style10">&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>


                 </fieldset>
             <fieldset id="driver">
                <legend>DRIVER</legend>



                <table class="auto-style1">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label22" runat="server" Text="Driver Name"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtDriverName0" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ForeColor="Gray"
                                 onblur="creatwatermark('DriverName',this);" onfocus="clearwatermark('DriverName',this)" Text="DriverName"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label23" runat="server" Text="Driver Surname"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtDriverSurname0" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ForeColor="Gray" onblur="creatwatermark('DriverSurname',this);" onfocus="clearwatermark('DriverSurname',this)" Text="DriverSurname"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            &nbsp;</td>
                        <td class="auto-style14">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>



            </fieldset>
            <fieldset id="security">
                <legend>SECURITY</legend>



                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label3" runat="server" Text="Security Name"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtSecurityName" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" 
                                ForeColor="Gray" onblur="creatwatermark('SecurityName',this);" onfocus="clearwatermark('SecurityName',this)" Text="SecurityName"></asp:TextBox>
                        </td>
                        <td class="auto-style17">
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Vehicle Checked Out" GroupName="CheckedInOut" />
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="Vehicle Checked In" GroupName="CheckedInOut" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label5" runat="server" Text="Security Surname"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtSecuritySurname" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                 ForeColor="Gray" onblur="creatwatermark('SecuritySurname',this);" onfocus="clearwatermark('SecuritySurname',this)" Text="SecuritySurname"></asp:TextBox>
                        </td>
                        <td class="auto-style17">
                            <asp:ImageButton ID="ImageButton1" runat="server" style="z-index: 1; left: 611px; top: 483px; position: absolute; height: 15px; width: 27px; right: 259px;" ImageUrl="~/pictures/cale.png" />
                            <asp:TextBox ID="txtCheckedDate" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('CheckedDate',this);" onfocus="clearwatermark('CheckedDate',this)" Text="CheckedDate" ></asp:TextBox>
                            <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 417px; top: 510px; position: absolute; height: 154px; width: 230px"></asp:Calendar>
                        </td>
                        <td rowspan="3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            &nbsp;</td>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>



            </fieldset>

                </div>
                </asp:Panel>



</asp:Content>
