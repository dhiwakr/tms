<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="Transport Request.aspx.vb" Inherits="tms.Transport_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 130px;
        }

        .auto-style3 {
            width: 265px;
        }

        .auto-style4 {
            width: 230px;
        }

        .auto-style5 {
            width: 111px;
        }
        .auto-style7 {
            width: 241px;
        }
        .auto-style8 {
            width: 149px;
        }
        .auto-style9 {
            width: 175px;
        }
        .auto-style10 {
            width: 149px;
            height: 37px;
        }
        .auto-style11 {
            width: 241px;
            height: 37px;
        }
        .auto-style12 {
            height: 37px;
        }
        .auto-style13 {
            width: 175px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Style="left: 596px; position: absolute; top: 40px"
        Width="897px" BackColor="GreenYellow" BorderColor="Yellow" BorderStyle="Double">
        <div>
            <fieldset id="fieldset">
                <legend>Employee Details</legend>






                <table class="auto-style1" id="emp_details" runat="server">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtEmpID" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style5">
                            Surname</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtsurname" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtEmpName" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtDepartment" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>






            </fieldset>



            <fieldset id="Request">
                <legend>Employee Details</legend>




                <table class="auto-style1" id="trans_request" runat="server">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label5" runat="server" Text="Request ID"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtRequestId" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style12"></td>
                        <td class="auto-style13">
                            <asp:Label ID="Label9" runat="server" Text="From"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtFromPlace" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pictures/cale.png" style="z-index: 1; left: 349px; top: 193px; position: absolute; height: 13px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="missing" ForeColor="Red"
                                ControlToValidate="txtFromPlace" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="check your information" ControlToValidate="txtFromPlace"
                                ValidationExpression="^[a-zA-Z0-9]+$" ForeColor="Red"  SetFocusOnError="true"></asp:RegularExpressionValidator>
                             </td>
                        <td class="auto-style12"></td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label8" runat="server" Text="From Date And Time"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Calendar ID="Calendar2" runat="server" style="z-index: 1; left: 155px; top: 216px; position: absolute; height: 154px; width: 230px"></asp:Calendar>
                            <asp:TextBox ID="txtFromDateAndTime" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Label ID="Label10" runat="server" Text="To"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtToPlace" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="missing" ForeColor="Red" Display="Dynamic"
                                 SetFocusOnError="true" ControlToValidate="txtToPlace"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label12" runat="server" Text="To Date And Time"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pictures/cale.png" style="z-index: 1; left: 349px; top: 228px; position: absolute; height: 12px" />
                            <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 155px; top: 253px; position: absolute; height: 154px; width: 230px"></asp:Calendar>
                            <asp:TextBox ID="txtToDate" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="missing" ControlToValidate="txtToDate" SetFocusOnError="true"
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="check age" ControlToValidate="txtToDate"
                       ForeColor="Red" Type="Date"></asp:RangeValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Label ID="Label11" runat="server" Text="Reason For Request"></asp:Label>
                        </td>
                        <td rowspan="6">
                            <asp:TextBox ID="txtReasonForRequest" runat="server" Style="border-radius: 5px 5px 5px 5px; box-shadow: none;" Height="95px" TextMode="MultiLine" Width="271px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="missing"
                                ControlToValidate="txtReasonForRequest"  SetFocusOnError="true" ForeColor="red" ></asp:RequiredFieldValidator>
                        
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label6" runat="server" Text="Vehicle Type"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="-1">select</asp:ListItem>
                                <asp:ListItem>passanger</asp:ListItem>
                                <asp:ListItem>goods</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style12"></td>
                        <td class="auto-style13"></td>
                        <td class="auto-style12"></td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label7" runat="server" Text="Number Of Passangers"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtNumberOfPassangers" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="missing" ControlToValidate="txtNumberOfPassangers"
                                Display="Dynamic" SetFocusOnError="true" BackColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only numeric allowed not more than 99." ForeColor="Red" ControlToValidate="txtNumberOfPassangers"
       ValidationExpression="^[0-9]{1,2}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Button ID="Button1" runat="server"  Text="Vehicle Request" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>




            </fieldset>
        </div>
          <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 0px; top: 465px; position: absolute" Text="Cancel Request" />
        <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 138px; top: 465px; position: absolute; right: 620px" Text="Update Request" />
          <br />
        <asp:Label ID="Label22" runat="server" Text="Label" Visible="False"></asp:Label>
      <br />
      <br />
    </asp:Panel>
    <br />
      <br />
      <br />


</asp:Content>
