﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP8_Grupo_Nro_02.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 332px;
        }
        .auto-style9 {
            width: 286px;
        }
        .auto-style6 {
            height: 23px;
            width: 82px;
        }
        .auto-style4 {
            height: 23px;
            width: 199px;
        }
        .auto-style10 {
            height: 23px;
            width: 315px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style5 {
            width: 82px;
        }
        .auto-style8 {
            width: 199px;
        }
        .auto-style11 {
            width: 315px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Formularios/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Formularios/ListadoDeSucursales.aspx">Lista de Sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Formularios/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Size="24"><b>Grupo N2</b></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Size="14"><b>Agregar Sucursal</b></asp:Label>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Font-Size="13pt" Text="Nombre sucursal:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtNombreSucursal" runat="server" Width="282px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Debe Ingresar un Nombre de Sucursal" ForeColor="Red" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Font-Size="13pt" Text="Descripción:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="56px" Width="281px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Debe Ingresar una Descipcion de Sucursal" ForeColor="Red" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Font-Size="13pt" Text="Provincia:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Height="16px" Width="290px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="Rfv" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Debe Seleccionar  una Provincia" ForeColor="Red" InitialValue="0" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Font-Size="13pt" Text="Dirección:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDireccion" runat="server" Height="44px" Width="281px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe Ingresar una Direccion de Sucursal" ForeColor="Red" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style10">
                    <br />
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ValidationGroup="vg1" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblconfirmacion" runat="server" Text="La Sucursal fue agregada con exito" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg1" />
    </form>
</body>
</html>