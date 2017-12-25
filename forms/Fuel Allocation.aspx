<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="Fuel Allocation.aspx.vb" Inherits="tms.Fuel_Allocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../java/myjava.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 155px;
        }

        .MsoNormal {
            width: 154px;
        }
        .auto-style4 {
            width: 146px;
        }
        .auto-style6 {
            width: 249px;
        }
        .auto-style7 {
            width: 134px;
        }
        .auto-style11 {
            width: 239px;
        }
        .auto-style12 {
            width: 100px;
        }
        .auto-style13 {
            width: 163px;
        }
        .auto-style14 {
            width: 63px;
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
                        <td class="auto-style12">
                            <asp:Label ID="Label18" runat="server" Text="Employee Code"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtEmpcode" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ForeColor="Gray" onblur="creatwatermark('Employee code',this);" onfocus="clearwatermark('Employee code',this)" Text="Employee code"></asp:TextBox>
                        </td>
                        <td class="auto-style14">

                            <asp:Label ID="Label19" runat="server" Text="Surname"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSurname" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                 ForeColor="Gray" onblur="creatwatermark('Surname',this);" onfocus="clearwatermark('Surname',this)" Text="Surname"></asp:TextBox>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/pictures/index.png" style="z-index: 1; left: 786px; top: 1px; position: absolute" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label20" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtEmpName" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ForeColor="Gray" onblur="creatwatermark('Name',this);" onfocus="clearwatermark('Name',this)" Text="Name"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:Label ID="Label21" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdepartment" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ForeColor="Gray" onblur="creatwatermark('Department',this);" onfocus="clearwatermark('Department',this)" Text="Department"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style14"></td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>





            </fieldset>

            <fieldset id="fuelAllocation"  >
         <legend>
            Allocation Details
                </legend>


                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">Fuel Attendant</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtFuelAttendant" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('FuelAttendant',this);" onfocus="clearwatermark('FuelAttendant',this)" Text="FuelAttendant"></asp:TextBox>
                        </td>
                        <td class="auto-style7"><span>Authorised By </span></td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtAuthorisedBy" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('AuthorisedBy',this);" onfocus="clearwatermark('AuthorisedBy',this)" Text="AuthorisedBy" ></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span>Reason</span></td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtReason" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('Reason',this);" onfocus="clearwatermark('Reason',this)" Text="Reason"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text="Quantity (litres)"></asp:Label></td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtQuantity" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('Quantity',this);" onfocus="clearwatermark('Quantity',this)" Text="Quantity"></asp:TextBox>
                        </td>
                        <td rowspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span>Fuel Type</span></td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text="Coupon Number"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtCouponNumber" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                                ForeColor="Gray" onblur="creatwatermark('CouponNumber',this);" onfocus="clearwatermark('CouponNumber',this)" Text="CouponNumber"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">
                            <asp:Label ID="Label22" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span><p></p>
                            </span></td>
                        <td class="auto-style6">
                            <asp:Button ID="Button1" runat="server" Text="Allocate" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span><p></p>
                            </span></td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


                </fieldset>
        </div>
    </asp:Panel>

</asp:Content>
