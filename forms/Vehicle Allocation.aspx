<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="Vehicle Allocation.aspx.vb" Inherits="tms.Vehicle_Allocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../java/myjava.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 21px;
        }

        .auto-style3 {
            width: 118px;
        }

        .auto-style4 {
            height: 21px;
            width: 118px;
        }

        .auto-style5 {
            width: 229px;
        }

        .auto-style6 {
            height: 21px;
            width: 229px;
        }

        .auto-style8 {
            width: 238px;
        }

        .auto-style10 {
            width: 126px;
        }

        .auto-style11 {
            width: 106px;
        }

        .auto-style13 {
            width: 128px;
        }

        .auto-style14 {
            width: 242px;
        }
    </style>

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Panel ID="Panel1" runat="server" Style="left: 596px; position: absolute; top: 40px"
        Width="897px" BackColor="GreenYellow" BorderColor="Yellow" BorderStyle="Double">
        <div>
            <fieldset id="employee">
                <legend>Employee Details</legend>





                
<table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Employee Code"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtEmpcode" Text="Employee code" ForeColor="Gray" 
                                onblur="creatwatermark('Employee code',this)" onfocus="clearwatermark('Employee code',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Image ID="imgDriver" runat="server" Height="81px"  Style="z-index: 117; left: 755px; position: absolute; top: 23px"
                                Width="82px" />
                            <asp:Label ID="Label17" runat="server" Text="Surname"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSurname" Text="Surname" ForeColor="Gray" 
                                onblur="creatwatermark('Surname',this)" onfocus="clearwatermark('Surname',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtEmpName" Text="Name" ForeColor="Gray" 
                                onblur="creatwatermark('Name',this)" onfocus="clearwatermark('Name',this)"  runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdepartment" Text="Department" ForeColor="Gray" 
                                onblur="creatwatermark('Department',this)" onfocus="clearwatermark('Department',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
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







            <fieldset id="fieldset">
                <legend>Vehicle To Be Used</legend>


                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label22" runat="server" Text="Vehicle Type"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtVehicleType" Text="VehicleType" ForeColor="Gray" 
                                onblur="creatwatermark('VehicleType',this)" onfocus="clearwatermark('VehicleType',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Label ID="Label8" runat="server" Text="Surrender Date"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtReturnDate" Text="ReturnDate" ForeColor="Gray" 
                                onblur="creatwatermark('ReturnDate',this)" onfocus="clearwatermark('ReturnDate',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label4" runat="server" Text="Vehicle Registration"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtVehicleReg"  Text="VehicleReg" ForeColor="Gray" 
                                onblur="creatwatermark('VehicleReg',this)" onfocus="clearwatermark('VehicleReg',this)"  runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Label ID="Label9" runat="server" Text="Authorized By"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtAuthorisedBy" Text="AuthorisedBy" ForeColor="Gray" 
                                onblur="creatwatermark('AuthorisedBy',this)" onfocus="clearwatermark('AuthorisedBy',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label5" runat="server" Text="Make"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtMake" Text="Make" ForeColor="Gray" 
                                onblur="creatwatermark('Make',this)" onfocus="clearwatermark('Make',this)"  runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Label ID="Label11" runat="server" Text="Litres Of Fuel Issued"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtNumOfLitres" Text="NumOfLitres" ForeColor="Gray" 
                                onblur="creatwatermark('NumOfLitres',this)" onfocus="clearwatermark('NumOfLitres',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label6" runat="server" Text="Coupon Number"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtCouponNumber" Text="CouponNumber" ForeColor="Gray" 
                                onblur="creatwatermark('CouponNumber',this)" onfocus="clearwatermark('CouponNumber',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Label ID="Label13" runat="server" Text="Extra Litres Required"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtExtraLitres" Text="ExtraLitres" ForeColor="Gray" 
                                onblur="creatwatermark('ExtraLitres',this)" onfocus="clearwatermark('ExtraLitres',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label12" runat="server" Text="Extra Fuel Required"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:RadioButton ID="RadioButton1" Text="Yes" runat="server" GroupName="extrafuel" />
                            <asp:RadioButton ID="RadioButton2" Text="No" runat="server" GroupName="extrafuel"  />
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Label ID="Label14" runat="server" Text="Gate Pass"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtGatePass" Text="GatePass" ForeColor="Gray" 
                                onblur="creatwatermark('GatePass',this)" onfocus="clearwatermark('GatePass',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


            </fieldset>





            <fieldset id="driver">
                <legend>DRIVER</legend>



                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label18" runat="server" Text="Driver Name"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtDriverName"  Text="DriverName" ForeColor="Gray" 
                                onblur="creatwatermark('DriverName',this)" onfocus="clearwatermark('DriverName',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label19" runat="server" Text="Driver Surname"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtDriverSurname" Text="DriverSurname" ForeColor="Gray" 
                                onblur="creatwatermark('DriverSurname',this)" onfocus="clearwatermark('DriverSurname',this)" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style14">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>



            </fieldset>

            <asp:RadioButton ID="RadioButton3" Text="Allocate" runat="server" GroupName="approveordisapprove"/>
            <asp:RadioButton ID="RadioButton4" Text="Reject" runat="server" GroupName="approveordisapprove" />

            &nbsp;
            <asp:Label ID="Label21" runat="server" Text="Rejected"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtLicenceNo21" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>

        </div>
    </asp:Panel>
</asp:Content>
