<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="AddEmployee.aspx.vb" Inherits="tms.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
        <script src="../java/myjava.js"></script>
       <link href="../style/master.css" rel="stylesheet" />

    <link href="../style/responsive.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 102%;
        }

        .auto-style5 {
            width: 372px;
        }

        .auto-style6 {
            width: 104px;
            text-align: left;
        }

        .auto-style7 {
            width: 104px;
        }

        .auto-style8 {
            width: 228px;
        }

        .auto-style10 {
            height: 44px;
        }

        .auto-style11 {
            width: 123px;
        }

        .auto-style13 {
            width: 43px;
            text-align: left;
        }

        .auto-style14 {
            width: 43px;
        }

        .auto-style15 {
            width: 58px;
        }

        .auto-style16 {
            width: 58px;
            text-align: left;
        }

        .auto-style17 {
            width: 43px;
            text-align: left;
            height: 44px;
        }
        .auto-style18 {
            width: 43px;
            text-align: left;
            height: 56px;
        }
        .auto-style19 {
            height: 56px;
        }
        .auto-style20 {
            width: 123px;
            height: 56px;
        }
        .auto-style21 {
            width: 58px;
            text-align: left;
            height: 56px;
        }
        .auto-style22 {
            width: 228px;
            height: 56px;
        }
        .auto-style44 {
            width: 186px;
        }
        .auto-style45 {
            width: 186px;
            height: 56px;
        }
        .auto-style46 {
            height: 44px;
            width: 186px;
            visibility: hidden;
        }
        .auto-style48 {
            width: 25px;
            height: 56px;
        }
        .auto-style49 {
            width: 25px;
        }
    .auto-style50 {
        height: 37px;
        width: 43px;
        visibility: hidden;
        text-align: left;
    }
    .auto-style51 {
        height: 37px;
    }
    .auto-style52 {
        width: 25px;
        height: 37px;
    }
    .auto-style53 {
        width: 58px;
        visibility: hidden;
        height: 37px;
    }
    .auto-style54 {
        width: 186px;
        height: 37px;
    }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" class="pannel1">
        <fieldset id="fieldset">
            <legend>add driver</legend>

            <table class="maintable" >
              
                <tr style="margin: 10px; padding: 20px;">
                    <td class="auto-style14">
                        <asp:Label ID="Label1" Text="DriverId" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtDriverID" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                            ForeColor="Gray" onblur="creatwatermark('EmployeeID',this)" onfocus="clearwatermark('EmployeeID',this)" Text="EmployeeID"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="missing field"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtDriverID" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 351px; top: 44px; position: absolute; width: 83px" Text="Eployee ID To Register"></asp:Label>
                        <asp:Button ID="Button2" runat="server" Text="Proceed" style="z-index: 1; left: 436px; top: 49px; position: absolute" />
                    </td>
                    <td class="auto-style49">
                        
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label16" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="Job Description"></asp:Label>
                    </td>
                    <td class="auto-style44">
                        <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" DataSourceID="SqlDataSource1" DataTextField="departmentname" DataValueField="departmentname" AutoPostBack="True">
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" SelectCommand="SELECT [departmentname] FROM [department_tbl]"></asp:SqlDataSource>
                    </td>
                
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Text="DriverName" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtDriverName" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                            ForeColor="Gray" onblur="creatwatermark('DriverName',this)" onfocus="clearwatermark('DriverName',this)" Text="DriverName"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="missing field" 
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtDriverName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                         </td>
                    <td class="auto-style49">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="Label13" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style44">

                        <asp:TextBox ID="txtPhoneNumber" runat="server" ForeColor="Gray" onblur="creatwatermark('PhoneNumber',this)" onfocus="clearwatermark('PhoneNumber',this)" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="PhoneNumber"></asp:TextBox>

                    </td>
              
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label8" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="DriverSurname"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtDriverSurname" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                            ForeColor="Gray" onblur="creatwatermark('DriverSurname',this);" onfocus="clearwatermark('DriverSurname',this)" Text="DriverSurname"></asp:TextBox>
                       
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="missing field"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtDriverSurname" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style48"></td>
                    <td class="auto-style21">
                        <asp:Label ID="Label14" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="EmailAddress"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtEmailAdd" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                            ForeColor="Gray" onblur="creatwatermark('EmailAdd',this);" onfocus="clearwatermark('EmailAdd',this)" Text="EmailAdd"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,6}$" 
                            ErrorMessage="check your email" ControlToValidate="txtEmailAdd" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </td>
                   
                </tr>

                <tr>
                    <td class="auto-style50">
                        <asp:Label ID="Label4" runat="server" Text="DOB" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"></asp:Label>
                    </td>
                    <td class="auto-style51">
                        <asp:TextBox ID="txtDOB" runat="server" ForeColor="Gray" onblur="creatwatermark('DOB',this);" onfocus="clearwatermark('DOB',this)" 
                            Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none; z-index: 1;
                 left: 98px; top: 168px; " value="DOB"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Style="z-index: 1; left: 297px; top: 173px; position: absolute; right: 581px; width: 19px;" ImageUrl="~/pictures/cale.png" />
                        <asp:Calendar ID="Calendar1" runat="server" Height="99px" Style="z-index: 1; left: 185px; top: 19px; position: absolute; height: 154px; width: 230px"></asp:Calendar>
                        
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="missing field"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtDOB"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="check age" ControlToValidate="txtDOB"
                          MaximumValue ="1997-01-01" MinimumValue="1970-01-01" ForeColor="Red" Type="Date"></asp:RangeValidator>
                         </td>
                    <td class="auto-style52"></td>
                       
                    <td class="auto-style53">
                        <asp:Label ID="Label15" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="PhysicalAddress"></asp:Label>
                    </td>
                    <td class="auto-style54">
                        <asp:TextBox ID="txtPhysicalAdd" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;"
                            ForeColor="Gray" onblur="creatwatermark('PhysicalAdd',this);" onfocus="clearwatermark('PhysicalAdd',this)" Text="PhysicalAdd"></asp:TextBox>
                    </td>
              
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                            <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style49">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label18" runat="server" Text="Title"></asp:Label>
                    </td>
                    <td class="auto-style44">
                        &nbsp;<asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="select" Text="Select">Select</asp:ListItem>
                                <asp:ListItem Text="Driver" Value="Secretary">Secretary</asp:ListItem>
                                <asp:ListItem Text="Driver" Value="Driver">Driver</asp:ListItem>
                                <asp:ListItem Text="Female" Value="Transport_Manager">Transport Manager</asp:ListItem>
                                    <asp:ListItem Text="Sercurity" Value="Sercurity" >Sercurity</asp:ListItem>
                                    <asp:ListItem Text="FuelAttended" Value="FuelAttended">FuelAttended</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style49"></td>
                    
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" Text="Button" Width="108px" />
                    </td>
                    <td class="auto-style46"></td>
                </tr>
              
            </table>
        </fieldset>


        <fieldset id="Driver">
            

            <div id="dvPassport" style="display: none">

            </div>

            <legend id="add_drive" runat="server">add driver</legend>
            <table id="driver_details" class="auto-style1" runat="server">
                <tr id="trusa">
                    <td class="auto-style6">
                        <asp:Label ID="Label17" runat="server" Text="Department"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;">
                            <asp:ListItem Value="ICT">ICT</asp:ListItem>
                            <asp:ListItem Value="ACCOUNTS">ACCOUNTS</asp:ListItem>
                            <asp:ListItem Value="INFORMATION">INFORMATION</asp:ListItem>
                            <asp:ListItem Value="THEOLOGY">THEOLOGY</asp:ListItem>
                            <asp:ListItem Value="AGRICULTURE">AGRICULTURE</asp:ListItem>
                            <asp:ListItem Value="FOODS SERVICES">FOODS SERVICES</asp:ListItem>
                            <asp:ListItem Value="STUDENT AFFAIRS">STUDENT AFFAIRS</asp:ListItem>
                            <asp:ListItem Value="HUMAN RESOURCES">HUMAN RESOURCES</asp:ListItem>
                            <asp:ListItem Value="ACCADEMIC AFFAIRS">ACCADEMIC AFFAIRS</asp:ListItem>
                            <asp:ListItem Value="DISTANCE EDUCATION">DISTANCE EDUCATION</asp:ListItem>
                            <asp:ListItem Value="SPORTS">SPORTS</asp:ListItem>
                            <asp:ListItem Value="SECURITY">SECURITY</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr id="trcanada">
                    <td class="auto-style7">
                        <asp:Label ID="Label10" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="LicenceNo"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLicenceNo" runat="server" ForeColor="Gray" onblur="creatwatermark('LicenceNo',this);" onfocus="clearwatermark('LicenceNo',this)" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="LicenceNo"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Issued Date</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtdateIssued" runat="server" ForeColor="Gray" onblur="creatwatermark('dateIssued',this);" onfocus="clearwatermark('dateIssued',this)" 
                            Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="dateIssued"></asp:TextBox>

                        <asp:ImageButton ID="ImageButton2" runat="server" Style="z-index: 1; left: 297px; top: 173px; position: absolute; height: 11px; right: 788px; width: 19px;" ImageUrl="~/pictures/cale.png" CausesValidation="False" ValidateRequestMode="Disabled" />
                        <asp:Calendar ID="Calendar2" runat="server" Height="99px" Style="z-index: 1; left: 185px; top: 198px; position: absolute; height: 154px; width: 230px" ValidateRequestMode="Disabled"></asp:Calendar>
                     
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="missing field"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtdateIssued"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator2" runat="server" Display="Dynamic" ErrorMessage="check age" ControlToValidate="txtdateIssued"
                          MaximumValue ="1997-01-01" MinimumValue="1970-01-01" ForeColor="Red" Type="Date"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label12" runat="server" Style="width: 146px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="Class"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtClass" runat="server" ForeColor="Gray" onblur="creatwatermark('Class',this);" onfocus="clearwatermark('Class',this)" Style="width: 200px; height: 31px; border-radius: 5px 5px 5px 5px; box-shadow: none;" Text="Class"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>

        </fieldset>


    </asp:Panel>



</asp:Content>
