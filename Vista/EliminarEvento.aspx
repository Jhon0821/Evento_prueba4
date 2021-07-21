<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura_Evento.Master" AutoEventWireup="true" CodeBehind="EliminarEvento.aspx.cs" Inherits="Vista.EliminarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Eliminar Evento
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server">
         Seleccione el Evento Para Eliminar
        <asp:DropDownList ID="ddlevento" runat="server">
        </asp:DropDownList>
         <asp:Button ID="btnseleccionar" runat="server" Text="seleccionar" OnClick="eliminar_click" />
         <br />
         <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </asp:Panel>
  
</asp:Content>
