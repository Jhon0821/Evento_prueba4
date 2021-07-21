<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura_Evento.Master" AutoEventWireup="true" CodeBehind="EditarEvento.aspx.cs" Inherits="Vista.EditarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Actualizar Evento
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
         Seleccione el Evento Para Actualizar
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
         <asp:Button ID="btnseleccionar" runat="server" Text="seleccionar" OnClick="seleccionar_click" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbidevento" runat="server" Text="Id evento"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtidevento" runat="server" ReadOnly="true" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="lbnombre" runat="server" Text="Nombre Evento"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtnombreeve" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="lbcorreo" runat="server" Text="Email"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
           

             <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbdireccion" runat="server" Text="Direccion"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbtelefono" runat="server" Text="Telefono"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbfecha" runat="server" Text="Fecha Evento"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtfecha" runat="server" TextMode="DateTime"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbcantidad" runat="server" Text="Personas"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>



            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btn_Actualizar" />
                  
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell >
                    <asp:Label ID="lbmensaje" runat="server"></asp:Label>
                  
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="lbactualizar" runat="server" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>
