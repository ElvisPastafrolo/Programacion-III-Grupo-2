﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_Programacion3_Grupo2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style12 {
            width: 218px;
        }
        .auto-style14 {
            width: 216px;
        }
        .auto-style15 {
            width: 218px;
            height: 23px;
        }
        .auto-style16 {
            width: 216px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            width: 218px;
            height: 56px;
        }
        .auto-style19 {
            width: 216px;
            height: 56px;
        }
        .auto-style20 {
            height: 56px;
        }
        .auto-style21 {
            width: 218px;
            height: 25px;
        }
        .auto-style22 {
            width: 216px;
            height: 25px;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style24 {
            width: 218px;
            height: 26px;
        }
        .auto-style25 {
            width: 216px;
            height: 26px;
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style27 {
            width: 218px;
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14" style="font-weight: bold">Localidades</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Nombre de la Localidad:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="Txtboxlocalidad" runat="server" Width="205px" ValidationGroup="Grupo1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="Rfvlocalidad" runat="server" ControlToValidate="Txtboxlocalidad" ErrorMessage="Debe ingresar una localidad" ForeColor="Red" InitialValue=" " ValidationGroup="ValidationGroup1">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:CustomValidator ID="CvLocalidad" runat="server" ErrorMessage="Localidad ya existente" ForeColor="Red" OnServerValidate="CvLocalidad_ServerValidate" ValidationGroup="ValidationGroup1">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnGuardarLoc" runat="server" Text="Guardar Localidad" Width="216px" OnClick="btnGuardarLoc_Click" ValidationGroup="ValidationGroup1" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Usuarios<br />
            </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style12">Nombre usuario:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="TextBox1" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Contraseña:</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtbContra" runat="server" ValidationGroup="Grupo2" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;
            </td>
            <td class="auto-style17">
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtbContra" ErrorMessage="*" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Repetir contraseña:</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtbRepeContra" runat="server" ValidationGroup="Grupo2" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtbRepeContra" ErrorMessage="*" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="CVContrasenia" runat="server" ControlToCompare="txtbContra" ControlToValidate="txtbRepeContra" ForeColor="Red">Contraseña diferente</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Correo electrónico:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">CP:</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Localidades:</td>
            <td class="auto-style26">
                <asp:DropDownList ID="ddlLocality" runat="server" AutoPostBack="True" Height="16px" Width="126px" ValidationGroup="Grupo2">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RfvLocalidades" runat="server" ControlToValidate="ddlLocality" ErrorMessage="*" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>

     <td class="auto-style27">
         <br />
             </td>
     <td class="auto-style128">
         <br />
         <asp:Button ID="Btnguardarusuario" runat="server" Height="20px" Text="Guardar Usuario" Width="126px" ValidationGroup="Grupo2" />
     </td>
     <td>&nbsp;</td>
 </tr>
    </table>
        <br />
        <br />
        <asp:Button ID="Btninicio" runat="server" Text="Ir a inicio.aspx" ValidationGroup="Grupo3" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Errores:" ValidationGroup="ValidationGroup1" />
    </form>
    </body>
</html>