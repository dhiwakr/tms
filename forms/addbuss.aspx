<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/forms/Site1.Master" CodeBehind="addbuss.aspx.vb" Inherits="tms.addbuss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../java/myjava.js"></script>
       <link href="../style/master.css" rel="stylesheet" />
    <link href="../style/responsive.css" rel="stylesheet" />
    <style type="text/css">
      
    
   
   
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel1" runat="server" class="pannel1" >
        <div>
             <fieldset id="fieldset"   >
         <legend id="legend">add driver</legend>
             <table class="maintable" >
                        
                        <tr>
                            <td class="auto-style5"> Make</td>
                            <td  class="auto-style36">
                                <asp:TextBox ID="txtMake" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "  
                                    ForeColor="Gray" onblur="creatwatermark('Make',this)" onfocus="clearwatermark('Make',this)" Text="Make"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtMake" runat="server" ErrorMessage="missing field"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style37">
                              
                               
                              
                            </td>
                            <td class="auto-style32">Date Of Purchase</td>
                            <asp:ImageButton ID="ImageButton1" runat="server" classs="imagebutton1"   ImageUrl="~/pictures/cale.png" CausesValidation="False" ValidateRequestMode="Disabled" />
                            <td class="auto-style38">
                                
                                <asp:TextBox ID="txtDateOfPurchase" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                    ForeColor="Gray" onblur="creatwatermark('DateOfPurchase',this)" onfocus="clearwatermark('DateOfPurchase',this)" Text="DateOfPurchase"></asp:TextBox>
                           
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="missing field"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtDateOfPurchase"></asp:RequiredFieldValidator>
                                 </td>
                            <td class="auto-style38">
                                <asp:Calendar ID="Calendar1" runat="server" ></asp:Calendar>
                              <img id='output' src="../pictures/cale.png" style ="   width:100px;height:100px; border-radius:75px;"/>
   
    <asp:FileUpload ID="FileUpload1" runat="server" type='file' accept='image/*' onchange='openFile(event)'/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" ControlToValidate="FileUpload1" ErrorMessage="missing image"></asp:RequiredFieldValidator>
<script>
    var openFile = function (event) {
        var input = event.target;

        var reader = new FileReader();
        reader.onload = function () {
            var dataURL = reader.result;
            var output = document.getElementById('output');
            output.src = dataURL;
        };
        reader.readAsDataURL(input.files[0]);
    };
</script>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style4" >
                                Model</td>
                            <td align="left" class="auto-style11" >
                                <asp:TextBox ID="txtModel" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; " 
                                    ForeColor="Gray" onblur="creatwatermark('Model',this)" onfocus="clearwatermark('Model',this)" Text="Model"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtModel" ErrorMessage="missing"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style14">
                                <asp:Label ID="Label4" runat="server"  Text="Vehicle Registration"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                
                                <asp:TextBox ID="txtVehicleRegistration" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                   ForeColor="Gray" onblur="creatwatermark('VehicleRegistration',this)" onfocus="clearwatermark('VehicleRegistration',this)" Text="VehicleRegistration" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="missing field" ControlToValidate="txtVehicleRegistration" ForeColor="Red" ></asp:RequiredFieldValidator>
                                     </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5" >
                                Net Mass</td>
                            <td align="left" class="auto-style7">
                                <asp:TextBox ID="txtNetMass" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; " 
                                          ForeColor="Gray" onblur="creatwatermark('NetMass',this)" onfocus="clearwatermark('NetMass',this)" Text="NetMass"  ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="missing field" ControlToValidate="txtNetMass" ForeColor="Red" ></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style10">Chassis Number</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtChassisNumber" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                    ForeColor="Gray" onblur="creatwatermark('ChassisNumber',this)" onfocus="clearwatermark('ChassisNumber',this)" Text="ChassisNumber"  ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtChassisNumber" ForeColor="Red"  ErrorMessage="missing field"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style24" >
                                Color</td>
                            <td align="left" class="auto-style25" >
                                <asp:TextBox ID="txtColor" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; " 
                                    ForeColor="Gray" onblur="creatwatermark('Color',this)" onfocus="clearwatermark('Color',this)" Text="Color"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="red" ErrorMessage="missing field" ControlToValidate ="txtColor" ></asp:RequiredFieldValidator>
                               </td>
                            <td class="auto-style26"></td>
                            <td class="auto-style27">Engine Number</td>
                            <td class="auto-style28">
                                <asp:TextBox ID="txtEngineNumber" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                    ForeColor="Gray" onblur="creatwatermark('EngineNumber',this)" onfocus="clearwatermark('EngineNumber',this)" Text="EngineNumber"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txtEngineNumber" ForeColor="Red"  ID="RequiredFieldValidator8" runat="server" ErrorMessage="missing field"></asp:RequiredFieldValidator>
                                 </td>
                            <td class="auto-style28">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Fuel Type</td>
                                <td  class="auto-style7">
                                    <asp:TextBox ID="txtFuelType" runat="server" style=" Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                        ForeColor="Gray" onblur="creatwatermark('FuelType',this)" onfocus="clearwatermark('FuelType',this)" Text="FuelType" ></asp:TextBox>
                     
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtFuelType" ForeColor="Red" runat="server" ErrorMessage="missing field"></asp:RequiredFieldValidator>
                                               </td>
                                <td class="auto-style13"></td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; " ValidateRequestMode="Disabled">
                                        <asp:ListItem  Text="Select Type" Value="-1" ></asp:ListItem>
                                        <asp:ListItem Text="Goods" Value="Goods"></asp:ListItem>
                                        <asp:ListItem Text="Passenger" Value="Passanger"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td  class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style14"></td>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39"></td>
                                <td  class="auto-style40">
                                    </td>
                                <td class="auto-style41"></td>
                                <td class="auto-style42"></td>
                                <td class="auto-style43"></td>
                                <td class="auto-style43"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td align="left" class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style14"></td>
                                <td class="auto-style8">
                                    <asp:Button ID="btnsave" runat="server" Text="save" style="height: 26px" />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td align="left" class="auto-style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style11"><%--<asp:Button ID="btnAdd" runat="server" Height="26px" onclick="btnAdd_Click" 
                                    Text="Add" Width="81px" Font-Bold="True" BackColor="#CC0099" 
                                    ForeColor="White" />--%>&nbsp;&nbsp;&nbsp;&nbsp; <%-- <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="Clear" 
                                    ValidationGroup="g" Font-Bold="True" BackColor="#CC0099" ForeColor="White" 
                                    Height="26px" Width="75px" />--%></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000">error</asp:Label>
                                </td>
                            </tr>
                       
                        
                        
                        
                    </table>
                 <br/>
                 <br />
</fieldset>

             <fieldset id="OTHERDEATAILS"  >
         <legend>Other Details</legend>

                 <table class="secondtbl">
                     <tr>
                         <td class="auto-style23"></td>
                         <td class="auto-style20"></td>
                         <td class="auto-style21"></td>
                         <td class="auto-style22" rowspan="5">
                             <p class="MsoNormal">
                                 <b><span>Additional Information</span></b><asp:TextBox ID="txtadditional_info" runat="server" Height="119px" TextMode="MultiLine" Width="342px"></asp:TextBox>
                             </p>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4">Tyre Size</td>
                         <td class="auto-style17">
                             <asp:TextBox ID="txttiresize" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; " 
                                 onblur="creatwatermark('Tyre Size',this)" onfocus="clearwatermark('Tyre Size',this)" Text="Tyre Size"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="missing" ForeColor="red" ControlToValidate="txttiresize" ></asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style18">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">Warranty</td>
                         <td class="auto-style17">
                             <asp:TextBox ID="txtwarrranty" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                 onblur="creatwatermark('Warranty',this)" onfocus="clearwatermark('Warranty',this)" Text="Warranty"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="missing field" ForeColor="Red" ControlToValidate="txtwarrranty" ></asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style18">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">Fuel Consumption</td>
                         <td class="auto-style17">
                             <asp:TextBox ID="txtfuelconsumption" runat="server" style="Width:146px; height:31px; border-radius:5px 5px 5px 5px; box-shadow:none; "
                                 onblur="creatwatermark('Fuel Consumption',this)" onfocus="clearwatermark('Fuel Consumption',this)" Text="Fuel Consumption"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="missing field" ControlToValidate   ="txtfuelconsumption" ForeColor="Red" ></asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style18">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style17">&nbsp;</td>
                         <td class="auto-style18">&nbsp;</td>
                     </tr>
                 </table>

                 </fieldset>


        </div>
        

    </asp:Panel>
       
</asp:Content>
